namespace lab1
{
    partial class mainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.tableLayoutPanel2 = new System.Windows.Forms.TableLayoutPanel();
            this.gridSupport = new System.Windows.Forms.DataGridView();
            this.gridFinal = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tableLayoutPanel3 = new System.Windows.Forms.TableLayoutPanel();
            this.tableLayoutPanel4 = new System.Windows.Forms.TableLayoutPanel();
            this.btnSolve = new System.Windows.Forms.Button();
            this.lblOptimum = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.gridB = new System.Windows.Forms.DataGridView();
            this.MatrB = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.gridC = new System.Windows.Forms.DataGridView();
            this.gridA = new System.Windows.Forms.DataGridView();
            this.MatrA = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.nudA = new System.Windows.Forms.NumericUpDown();
            this.nudB = new System.Windows.Forms.NumericUpDown();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage2.SuspendLayout();
            this.tableLayoutPanel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridSupport)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridFinal)).BeginInit();
            this.tableLayoutPanel3.SuspendLayout();
            this.tableLayoutPanel4.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridB)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridC)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridA)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudA)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudB)).BeginInit();
            this.tabControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // tabPage2
            // 
            this.tabPage2.BackColor = System.Drawing.SystemColors.Window;
            this.tabPage2.Controls.Add(this.tableLayoutPanel2);
            this.tabPage2.Location = new System.Drawing.Point(4, 25);
            this.tabPage2.Margin = new System.Windows.Forms.Padding(4);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(4);
            this.tabPage2.Size = new System.Drawing.Size(1083, 485);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Решение";
            // 
            // tableLayoutPanel2
            // 
            this.tableLayoutPanel2.ColumnCount = 2;
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel2.Controls.Add(this.gridSupport, 0, 1);
            this.tableLayoutPanel2.Controls.Add(this.gridFinal, 1, 1);
            this.tableLayoutPanel2.Controls.Add(this.label1, 0, 0);
            this.tableLayoutPanel2.Controls.Add(this.label2, 1, 0);
            this.tableLayoutPanel2.Controls.Add(this.tableLayoutPanel3, 0, 2);
            this.tableLayoutPanel2.Controls.Add(this.lblOptimum, 0, 3);
            this.tableLayoutPanel2.Controls.Add(this.button1, 1, 2);
            this.tableLayoutPanel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel2.Location = new System.Drawing.Point(4, 4);
            this.tableLayoutPanel2.Margin = new System.Windows.Forms.Padding(4);
            this.tableLayoutPanel2.Name = "tableLayoutPanel2";
            this.tableLayoutPanel2.RowCount = 4;
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 39F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 73.33334F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 26.66667F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel2.Size = new System.Drawing.Size(1075, 477);
            this.tableLayoutPanel2.TabIndex = 1;
            // 
            // gridSupport
            // 
            this.gridSupport.AllowUserToAddRows = false;
            this.gridSupport.AllowUserToDeleteRows = false;
            this.gridSupport.AllowUserToResizeColumns = false;
            this.gridSupport.AllowUserToResizeRows = false;
            this.gridSupport.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;
            this.gridSupport.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Courier New", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.Format = "N2";
            dataGridViewCellStyle1.NullValue = "null";
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridSupport.DefaultCellStyle = dataGridViewCellStyle1;
            this.gridSupport.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridSupport.Location = new System.Drawing.Point(4, 43);
            this.gridSupport.Margin = new System.Windows.Forms.Padding(4);
            this.gridSupport.MultiSelect = false;
            this.gridSupport.Name = "gridSupport";
            this.gridSupport.ReadOnly = true;
            this.gridSupport.RowHeadersWidth = 50;
            this.gridSupport.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.gridSupport.Size = new System.Drawing.Size(529, 298);
            this.gridSupport.TabIndex = 1;
            // 
            // gridFinal
            // 
            this.gridFinal.AllowUserToAddRows = false;
            this.gridFinal.AllowUserToDeleteRows = false;
            this.gridFinal.AllowUserToResizeColumns = false;
            this.gridFinal.AllowUserToResizeRows = false;
            this.gridFinal.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;
            this.gridFinal.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.Format = "N2";
            dataGridViewCellStyle2.NullValue = "null";
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridFinal.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridFinal.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridFinal.Location = new System.Drawing.Point(541, 43);
            this.gridFinal.Margin = new System.Windows.Forms.Padding(4);
            this.gridFinal.MultiSelect = false;
            this.gridFinal.Name = "gridFinal";
            this.gridFinal.ReadOnly = true;
            this.gridFinal.RowHeadersWidth = 50;
            this.gridFinal.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.gridFinal.Size = new System.Drawing.Size(530, 298);
            this.gridFinal.TabIndex = 2;
            this.gridFinal.Visible = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.label1.Location = new System.Drawing.Point(4, 0);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(529, 39);
            this.label1.TabIndex = 3;
            this.label1.Text = "Опорный план";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.label2.Location = new System.Drawing.Point(541, 0);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(530, 39);
            this.label2.TabIndex = 4;
            this.label2.Text = "Оптимальное решение";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.label2.Visible = false;
            // 
            // tableLayoutPanel3
            // 
            this.tableLayoutPanel3.ColumnCount = 1;
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel3.Controls.Add(this.tableLayoutPanel4, 0, 0);
            this.tableLayoutPanel3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel3.Location = new System.Drawing.Point(4, 349);
            this.tableLayoutPanel3.Margin = new System.Windows.Forms.Padding(4);
            this.tableLayoutPanel3.Name = "tableLayoutPanel3";
            this.tableLayoutPanel3.RowCount = 1;
            this.tableLayoutPanel3.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel3.Size = new System.Drawing.Size(529, 103);
            this.tableLayoutPanel3.TabIndex = 6;
            // 
            // tableLayoutPanel4
            // 
            this.tableLayoutPanel4.ColumnCount = 1;
            this.tableLayoutPanel4.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel4.Controls.Add(this.btnSolve, 0, 0);
            this.tableLayoutPanel4.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel4.Location = new System.Drawing.Point(4, 4);
            this.tableLayoutPanel4.Margin = new System.Windows.Forms.Padding(4);
            this.tableLayoutPanel4.Name = "tableLayoutPanel4";
            this.tableLayoutPanel4.RowCount = 3;
            this.tableLayoutPanel4.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.tableLayoutPanel4.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.tableLayoutPanel4.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.tableLayoutPanel4.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.tableLayoutPanel4.Size = new System.Drawing.Size(521, 95);
            this.tableLayoutPanel4.TabIndex = 0;
            // 
            // btnSolve
            // 
            this.btnSolve.Location = new System.Drawing.Point(4, 4);
            this.btnSolve.Margin = new System.Windows.Forms.Padding(4);
            this.btnSolve.Name = "btnSolve";
            this.btnSolve.Size = new System.Drawing.Size(100, 8);
            this.btnSolve.TabIndex = 3;
            this.btnSolve.Text = "Решение";
            this.btnSolve.UseVisualStyleBackColor = true;
            this.btnSolve.Click += new System.EventHandler(this.btnSolve_Click);
            // 
            // lblOptimum
            // 
            this.lblOptimum.AutoSize = true;
            this.lblOptimum.Location = new System.Drawing.Point(4, 456);
            this.lblOptimum.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblOptimum.Name = "lblOptimum";
            this.lblOptimum.Size = new System.Drawing.Size(0, 17);
            this.lblOptimum.TabIndex = 5;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(541, 349);
            this.button1.Margin = new System.Windows.Forms.Padding(4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(100, 30);
            this.button1.TabIndex = 7;
            this.button1.Text = "Решение";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // tabPage1
            // 
            this.tabPage1.BackColor = System.Drawing.SystemColors.Window;
            this.tabPage1.Controls.Add(this.tableLayoutPanel1);
            this.tabPage1.Location = new System.Drawing.Point(4, 25);
            this.tabPage1.Margin = new System.Windows.Forms.Padding(4);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(4);
            this.tabPage1.Size = new System.Drawing.Size(1083, 485);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Условия задачи";
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 3;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 183F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 208F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel1.Controls.Add(this.gridB, 1, 2);
            this.tableLayoutPanel1.Controls.Add(this.gridC, 2, 2);
            this.tableLayoutPanel1.Controls.Add(this.gridA, 0, 2);
            this.tableLayoutPanel1.Controls.Add(this.label4, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.label5, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.label6, 2, 1);
            this.tableLayoutPanel1.Controls.Add(this.nudA, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.nudB, 1, 1);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(4, 4);
            this.tableLayoutPanel1.Margin = new System.Windows.Forms.Padding(4);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 3;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 39F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 39F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 25F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(1075, 477);
            this.tableLayoutPanel1.TabIndex = 3;
            // 
            // gridB
            // 
            this.gridB.AllowUserToAddRows = false;
            this.gridB.AllowUserToDeleteRows = false;
            this.gridB.AllowUserToResizeColumns = false;
            this.gridB.AllowUserToResizeRows = false;
            this.gridB.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.gridB.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.gridB.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;
            this.gridB.ColumnHeadersHeight = 29;
            this.gridB.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MatrB});
            this.gridB.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridB.Location = new System.Drawing.Point(187, 82);
            this.gridB.Margin = new System.Windows.Forms.Padding(4);
            this.gridB.Name = "gridB";
            this.gridB.RowHeadersWidth = 51;
            this.gridB.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.gridB.Size = new System.Drawing.Size(200, 391);
            this.gridB.TabIndex = 16;
            // 
            // MatrB
            // 
            this.MatrB.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Courier New", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle3.Format = "N0";
            dataGridViewCellStyle3.NullValue = "0";
            this.MatrB.DefaultCellStyle = dataGridViewCellStyle3;
            this.MatrB.HeaderText = "Потребители";
            this.MatrB.MinimumWidth = 6;
            this.MatrB.Name = "MatrB";
            this.MatrB.Width = 125;
            // 
            // gridC
            // 
            this.gridC.AllowUserToAddRows = false;
            this.gridC.AllowUserToDeleteRows = false;
            this.gridC.AllowUserToResizeColumns = false;
            this.gridC.AllowUserToResizeRows = false;
            this.gridC.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.gridC.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.gridC.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;
            this.gridC.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.gridC.ColumnHeadersHeight = 29;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle4.Format = "N2";
            dataGridViewCellStyle4.NullValue = "null";
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridC.DefaultCellStyle = dataGridViewCellStyle4;
            this.gridC.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridC.Location = new System.Drawing.Point(395, 82);
            this.gridC.Margin = new System.Windows.Forms.Padding(4);
            this.gridC.Name = "gridC";
            this.gridC.RowHeadersWidth = 50;
            this.gridC.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Courier New", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle5.Format = "N2";
            dataGridViewCellStyle5.NullValue = "null";
            this.gridC.RowsDefaultCellStyle = dataGridViewCellStyle5;
            this.gridC.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.gridC.Size = new System.Drawing.Size(676, 391);
            this.gridC.TabIndex = 14;
            // 
            // gridA
            // 
            this.gridA.AllowUserToAddRows = false;
            this.gridA.AllowUserToDeleteRows = false;
            this.gridA.AllowUserToResizeColumns = false;
            this.gridA.AllowUserToResizeRows = false;
            this.gridA.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.gridA.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.gridA.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;
            this.gridA.ColumnHeadersHeight = 29;
            this.gridA.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MatrA});
            this.gridA.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridA.Location = new System.Drawing.Point(4, 82);
            this.gridA.Margin = new System.Windows.Forms.Padding(4);
            this.gridA.MultiSelect = false;
            this.gridA.Name = "gridA";
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle7.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle7.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle7.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle7.NullValue = null;
            dataGridViewCellStyle7.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle7.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle7.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridA.RowHeadersDefaultCellStyle = dataGridViewCellStyle7;
            this.gridA.RowHeadersWidth = 51;
            this.gridA.RowTemplate.DefaultCellStyle.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.gridA.RowTemplate.DefaultCellStyle.Font = new System.Drawing.Font("Courier New", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.gridA.RowTemplate.DefaultCellStyle.Format = "N2";
            this.gridA.RowTemplate.DefaultCellStyle.NullValue = "0";
            this.gridA.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.gridA.Size = new System.Drawing.Size(175, 391);
            this.gridA.TabIndex = 4;
            this.gridA.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridA_CellContentClick);
            // 
            // MatrA
            // 
            this.MatrA.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Courier New", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle6.Format = "N0";
            dataGridViewCellStyle6.NullValue = "0";
            this.MatrA.DefaultCellStyle = dataGridViewCellStyle6;
            this.MatrA.FillWeight = 50F;
            this.MatrA.HeaderText = "Поставщики";
            this.MatrA.MinimumWidth = 6;
            this.MatrA.Name = "MatrA";
            this.MatrA.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.MatrA.Width = 95;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Dock = System.Windows.Forms.DockStyle.Fill;
            this.label4.Location = new System.Drawing.Point(4, 0);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(175, 39);
            this.label4.TabIndex = 8;
            this.label4.Text = "Количество поставщиков";
            this.label4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Dock = System.Windows.Forms.DockStyle.Fill;
            this.label5.Location = new System.Drawing.Point(187, 0);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(200, 39);
            this.label5.TabIndex = 9;
            this.label5.Text = "Количество потребителей";
            this.label5.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.label5.Click += new System.EventHandler(this.label5_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Dock = System.Windows.Forms.DockStyle.Fill;
            this.label6.Location = new System.Drawing.Point(395, 39);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(676, 39);
            this.label6.TabIndex = 10;
            this.label6.Text = "Стоимость перевозки";
            this.label6.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.label6.Click += new System.EventHandler(this.label6_Click);
            // 
            // nudA
            // 
            this.nudA.Location = new System.Drawing.Point(4, 43);
            this.nudA.Margin = new System.Windows.Forms.Padding(4);
            this.nudA.Name = "nudA";
            this.nudA.Size = new System.Drawing.Size(149, 22);
            this.nudA.TabIndex = 12;
            this.nudA.ValueChanged += new System.EventHandler(this.nudA_ValueChanged);
            // 
            // nudB
            // 
            this.nudB.Location = new System.Drawing.Point(187, 43);
            this.nudB.Margin = new System.Windows.Forms.Padding(4);
            this.nudB.Name = "nudB";
            this.nudB.Size = new System.Drawing.Size(160, 22);
            this.nudB.TabIndex = 13;
            this.nudB.ValueChanged += new System.EventHandler(this.nudB_ValueChanged);
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Margin = new System.Windows.Forms.Padding(4);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1091, 514);
            this.tabControl1.TabIndex = 1;
            // 
            // mainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(1091, 514);
            this.Controls.Add(this.tabControl1);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.Name = "mainForm";
            this.Text = "Транспортная задача";
            this.tabPage2.ResumeLayout(false);
            this.tableLayoutPanel2.ResumeLayout(false);
            this.tableLayoutPanel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridSupport)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridFinal)).EndInit();
            this.tableLayoutPanel3.ResumeLayout(false);
            this.tableLayoutPanel4.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridB)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridC)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridA)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudA)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudB)).EndInit();
            this.tabControl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel2;
        private System.Windows.Forms.DataGridView gridSupport;
        private System.Windows.Forms.DataGridView gridFinal;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblOptimum;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.DataGridView gridA;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridView gridB;
        private System.Windows.Forms.DataGridView gridC;
        private System.Windows.Forms.NumericUpDown nudA;
        private System.Windows.Forms.NumericUpDown nudB;
        private System.Windows.Forms.DataGridViewTextBoxColumn MatrB;
        private System.Windows.Forms.DataGridViewTextBoxColumn MatrA;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel3;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel4;
        private System.Windows.Forms.Button btnSolve;
        private System.Windows.Forms.Button button1;
    }
}

