using CLIPSNET;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using Microsoft.Speech.Recognition;
using Microsoft.Speech.Synthesis;
using System.Threading.Tasks;
using System.Media;

namespace ClipsFormsExample
{
    public partial class ClipsFormsExample : Form
    {
        private CLIPSNET.Environment clips = new CLIPSNET.Environment();
        private List<string> loadedFilePaths = new List<string>();
        private Dictionary<string, double> ingredientCFValues = new Dictionary<string, double>();
        private bool isEditing = false;
        private CultureInfo invariantCulture = CultureInfo.InvariantCulture;
        private CultureInfo uiCulture = CultureInfo.CurrentUICulture;
        private bool isWaitingForResponse = false;
        private bool isVoiceEnabled = false;
        private Microsoft.Speech.Recognition.SpeechRecognitionEngine recog;
        private Microsoft.Speech.Synthesis.SpeechSynthesizer synth;
        private string[] basicCommands = { "открыть", "дальше", "рестарт" };

        public ClipsFormsExample()
        {
            InitializeComponent();
            SetupListViews();
            InitRecognition();
            InitSynthesis();
        }

        private void InitSynthesis()
        {
            synth = new SpeechSynthesizer();
            synth.SetOutputToDefaultAudioDevice();
        }

        private void NewRecognPhrases(List<string> phrases = null)
        {
            Choices choices = new Choices();
            choices.Add(basicCommands);

            if (phrases != null && phrases.Count > 0)
            {
                choices.Add(phrases.ToArray());
            }
            else
            {
                var ingredients = listView1.Items.Cast<ListViewItem>().Select(i => i.Text).ToArray();
                if (ingredients.Length > 0) choices.Add(ingredients);
            }

            GrammarBuilder gb = new GrammarBuilder { Culture = new CultureInfo("ru-RU") };
            gb.Append(choices);
            recog.UnloadAllGrammars();
            recog.LoadGrammar(new Grammar(gb));
        }

        private void InitRecognition()
        {
            recog = new Microsoft.Speech.Recognition.SpeechRecognitionEngine(new CultureInfo("ru-RU"));
            NewRecognPhrases();
            recog.SetInputToDefaultAudioDevice();
            recog.SpeechRecognized += (s, e) => {
                if (!isVoiceEnabled) return;
                string command = e.Result.Text.ToLower();
                if (command == "открыть")
                {
                    openFile_Click(this, EventArgs.Empty);
                    return;
                }
                if (command == "дальше")
                {
                    nextBtn_Click(this, EventArgs.Empty);
                    return;
                }
                if (command == "рестарт")
                {
                    resetBtn_Click(this, EventArgs.Empty);
                    return;
                }

                if (isWaitingForResponse)
                {
                    clips.AssertString($"(answer \"{command}\")");
                    isWaitingForResponse = false;
                    NewRecognPhrases(new List<string>());
                    ExecuteEngineLoop();
                    return;
                }

                foreach (ListViewItem item in listView1.Items)
                {
                    if (item.Text.Equals(command, StringComparison.OrdinalIgnoreCase))
                    {
                        item.Checked = !item.Checked;
                        break;
                    }
                }
            };
        }

        private void SetupListViews()
        {
            listView1.Columns.Clear();
            listView1.CheckBoxes = true;
            listView1.Columns.Add("Ингредиент / Блюдо", 120);
            listView1.Columns.Add("Уверенность (CF)", 120);
          
            listView2.Columns.Clear();
            listView2.Columns.Add("Блюдо / Продукт", 120);
            listView2.Columns.Add("Уверенность (CF)", 110);
        }

        private void openFile_Click(object sender, EventArgs e)
        {
            clipsOpenFileDialog.Multiselect = true;
            if (clipsOpenFileDialog.ShowDialog() == DialogResult.OK)
            {
                loadedFilePaths.Clear();
                loadedFilePaths.AddRange(clipsOpenFileDialog.FileNames);
                codeBox.Clear();
                StringBuilder combinedContent = new StringBuilder();
                foreach (string filePath in loadedFilePaths)
                {
                    string content = File.ReadAllText(filePath, Encoding.UTF8);
                    combinedContent.AppendLine($";; --- ФАЙЛ: {Path.GetFileName(filePath)} ---");
                    combinedContent.AppendLine(content);
                    combinedContent.AppendLine();
                }
                codeBox.Text = combinedContent.ToString();
                clips.Clear();
                var sorted = loadedFilePaths.OrderBy(p => !p.EndsWith("basic.clp", StringComparison.OrdinalIgnoreCase)).ToList();
                foreach (string filePath in sorted)
                {
                    clips.Load(filePath);
                }
                clips.Reset();
                LoadIngredientsFromClips();
                outputBox.Text = $"Загружено файлов: {loadedFilePaths.Count}.\r\n" +
                                 $"Текст выведен в codeBox, ингредиенты считаны из памяти CLIPS.\r\n";
            }
        }

        private void LoadIngredientsFromClips()
        {
            listView1.Items.Clear();
            listView2.Items.Clear();
            ingredientCFValues.Clear();
            List<string> voiceNames = new List<string>();

            MultifieldValue facts = (MultifieldValue)clips.Eval("(find-all-facts ((?f ingredient)) TRUE)");
            for (int i = 0; i < facts.Count; i++)
            {
                FactAddressValue feat = (FactAddressValue)facts[i];
                string name = DecodeClipsString(feat.GetSlotValue("name").ToString().Trim('"'));
                if (!ingredientCFValues.ContainsKey(name))
                {
                    ingredientCFValues[name] = 1.0;
                    var lvi = new ListViewItem(name);
                    lvi.SubItems.Add("");
                    listView1.Items.Add(lvi);
                    voiceNames.Add(name);
                }
            }
            NewRecognPhrases(voiceNames);
        }

        private void nextBtn_Click(object sender, EventArgs e)
        {
            clips.Clear();
            var sorted = loadedFilePaths.OrderBy(p => !p.EndsWith("basic.clp", StringComparison.OrdinalIgnoreCase)).ToList();
            foreach (string filePath in sorted) clips.Load(filePath);
            clips.Reset();
            foreach (ListViewItem item in listView1.Items)
                if (item.Checked)
                {
                    double val = ingredientCFValues.ContainsKey(item.Text) ? ingredientCFValues[item.Text] : 1.0;
                    clips.AssertString($"(input-question (name \"{item.Text}\") (certainty {ToClipsNumberString(val)}))");
                }
            ExecuteEngineLoop();
        }

        private void ExecuteEngineLoop()
        {
            clips.Run();
            var matches = (MultifieldValue)clips.Eval("(find-all-facts ((?f ioproxy)) TRUE)");

            if (matches.Count > 0)
            {
                FactAddressValue proxy = (FactAddressValue)matches[0];
                string mode = proxy.GetSlotValue("mode").ToString();

                if (mode == "1")
                {
                    MultifieldValue msgValues = (MultifieldValue)proxy.GetSlotValue("messages");
                    string message = "Вопрос не задан";
                    if (msgValues.Count > 0)
                    {
                        message = DecodeClipsString(msgValues[0].ToString().Trim('"'));
                    }

                    MultifieldValue ansValues = (MultifieldValue)proxy.GetSlotValue("answers");
                    List<string> phrases = new List<string>();

                    for (int i = 0; i < ansValues.Count; i++)
                    {
                        string option = DecodeClipsString(ansValues[i].ToString().Trim('"')).ToLower();
                        phrases.Add(option);
                    }

                    if (isVoiceEnabled)
                    {
                        outputBox.AppendText("СИСТЕМА (Голос): " + message + "\r\n");
                        synth.SpeakAsync(message);
                        isWaitingForResponse = true;
                        NewRecognPhrases(phrases);

                    }
                    else
                    {
                        outputBox.AppendText("СИСТЕМА: " + message + "\r\n");
                        ShowResponseButtons(message, phrases);
                    }
                }
                else
                {
                    ShowProxyLogs();
                }
            }
        }

        private void ShowResponseButtons(string question, List<string> options)
        {
            var dialog = new Form {Width = 350, Height = 150, StartPosition = FormStartPosition.CenterParent };
            var panel = new FlowLayoutPanel { Dock = DockStyle.Fill };
            dialog.Controls.Add(panel);
            dialog.Controls.Add(new Label { Text = question, Dock = DockStyle.Top});

            foreach (var opt in options)
            {
                var btn = new Button { Text = opt };
                btn.Click += (s, e) => {
                    clips.AssertString($"(answer \"{opt}\")");
                    dialog.Close();
                    clips.Run();
                    ExecuteEngineLoop();
                };
                panel.Controls.Add(btn);
            }
            dialog.ShowDialog();
        }

        private void ShowProxyLogs()
        {
            outputBox.Clear();
            outputBox.AppendText("=== ОТЧЕТ СИСТЕМЫ ===\r\n\r\n");
            var matches = (MultifieldValue)clips.Eval("(find-all-facts ((?f ioproxy)) TRUE)");
            if (matches.Count == 0) return;

            FactAddressValue proxy = (FactAddressValue)matches[0];
            MultifieldValue msgs = (MultifieldValue)proxy["messages"];
            List<string> allMessages = new List<string>();

            for (int i = 0; i < msgs.Count; i++)
            {
                allMessages.Add(DecodeClipsString(msgs[i].ToString().Trim('"')));
            }

            var processLogs = allMessages.Where(m => m.Contains("ПРОЦЕСС") || m.Contains("ДЕЙСТВИЕ")).ToList();
            var finalResults = allMessages.Where(m => m.StartsWith("ИТОГО")).ToList();
            foreach (var log in processLogs) outputBox.AppendText(log + "\r\n");
            foreach (var log in finalResults) outputBox.AppendText("\r\n>>> " + log + "\r\n");
            UpdateResultsTable(finalResults);
        }

        private void UpdateResultsTable(List<string> finalLogs)
        {
            listView2.Items.Clear();
            foreach (string msgText in finalLogs)
            {
                var match = Regex.Match(msgText, @"ИТОГО:\s*(.+)\s*\(CF=(.+)\)");
                if (match.Success)
                {
                    string name = match.Groups[1].Value.Trim();
                    double.TryParse(match.Groups[2].Value.Replace(',', '.'), NumberStyles.Any, CultureInfo.InvariantCulture, out double cf);
                    ListViewItem item = new ListViewItem(name);
                    item.SubItems.Add(cf.ToString("F2", uiCulture));
                    if (cf >= 0.8) item.BackColor = Color.LightGreen;
                    else if (cf >= 0.5) item.BackColor = Color.LightYellow;
                    else if (cf < 0.2) item.ForeColor = Color.Gray;
                    listView2.Items.Add(item);
                }
            }
        }

        private void listView1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            var hit = listView1.HitTest(e.Location);
            if (hit.Item == null || !hit.Item.Checked || hit.SubItem != hit.Item.SubItems[1] || isEditing) return;

            isEditing = true;
            var tb = new TextBox { Bounds = hit.SubItem.Bounds, Text = hit.SubItem.Text, BorderStyle = BorderStyle.FixedSingle };

            void CloseEditor() { listView1.Controls.Remove(tb); tb.Dispose(); isEditing = false; }

            tb.KeyDown += (s, args) => {
                if (args.KeyCode == Keys.Enter)
                {
                    double val = ParseNumberString(tb.Text);
                    ingredientCFValues[hit.Item.Text] = val;
                    hit.SubItem.Text = ToDisplayNumberString(val);
                    CloseEditor();
                }
                else if (args.KeyCode == Keys.Escape) CloseEditor();
            };

            tb.LostFocus += (s, args) => CloseEditor();
            listView1.Controls.Add(tb);
            tb.Focus();
        }

        private void resetBtn_Click(object sender, EventArgs e)
        {
            foreach (ListViewItem item in listView1.Items) { item.Checked = false; item.SubItems[1].Text = ""; ingredientCFValues[item.Text] = 1.0; }
            listView2.Items.Clear(); outputBox.Clear();
        }

        private void btnVoice_Click(object sender, EventArgs e)
        {
            isVoiceEnabled = !isVoiceEnabled;
            btnVoice.BackColor = isVoiceEnabled ? Color.LightGreen : SystemColors.Control;
            if (isVoiceEnabled) recog.RecognizeAsync(RecognizeMode.Multiple);
            else recog.RecognizeAsyncStop();
        }

        private string DecodeClipsString(string t) { return Encoding.UTF8.GetString(Encoding.Default.GetBytes(t));  }
        private string ToClipsNumberString(double v) => v.ToString("F6", invariantCulture);
        private string ToDisplayNumberString(double v) => v.ToString("F2", uiCulture);
        private double ParseNumberString(string t) { t = t.Trim().Replace(',', '.'); return double.TryParse(t, NumberStyles.Any, invariantCulture, out double r) ? Math.Max(-1, Math.Min(1, r)) : 1.0; }
    }
}