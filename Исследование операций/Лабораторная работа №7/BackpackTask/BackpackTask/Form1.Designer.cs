﻿namespace BackpackTask
{
    partial class Form1
    {
        /// <summary>
        /// Требуется переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Обязательный метод для поддержки конструктора - не изменяйте
        /// содержимое данного метода при помощи редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.solveButton = new System.Windows.Forms.Button();
            this.weightTextBox = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.itemsListView = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.ShowConditionsButton = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // solveButton
            // 
            this.solveButton.Location = new System.Drawing.Point(205, 199);
            this.solveButton.Name = "solveButton";
            this.solveButton.Size = new System.Drawing.Size(173, 38);
            this.solveButton.TabIndex = 0;
            this.solveButton.Text = "Решение";
            this.solveButton.UseVisualStyleBackColor = true;
            this.solveButton.Click += new System.EventHandler(this.solveButton_Click);
            // 
            // weightTextBox
            // 
            this.weightTextBox.Location = new System.Drawing.Point(275, 8);
            this.weightTextBox.Name = "weightTextBox";
            this.weightTextBox.Size = new System.Drawing.Size(68, 28);
            this.weightTextBox.TabIndex = 1;
            this.weightTextBox.Text = "10";
            this.weightTextBox.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(7, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(265, 24);
            this.label1.TabIndex = 2;
            this.label1.Text = "Максимальный вес рюкзака:";
            // 
            // itemsListView
            // 
            this.itemsListView.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3});
            this.itemsListView.Font = new System.Drawing.Font("Times New Roman", 10.2F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.itemsListView.HideSelection = false;
            this.itemsListView.Location = new System.Drawing.Point(1, 40);
            this.itemsListView.Name = "itemsListView";
            this.itemsListView.Size = new System.Drawing.Size(390, 158);
            this.itemsListView.TabIndex = 3;
            this.itemsListView.UseCompatibleStateImageBehavior = false;
            this.itemsListView.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Название";
            this.columnHeader1.Width = 198;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Вес";
            this.columnHeader2.Width = 91;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Стоимость";
            this.columnHeader3.Width = 97;
            // 
            // ShowConditionsButton
            // 
            this.ShowConditionsButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F);
            this.ShowConditionsButton.Location = new System.Drawing.Point(10, 205);
            this.ShowConditionsButton.Name = "ShowConditionsButton";
            this.ShowConditionsButton.Size = new System.Drawing.Size(185, 25);
            this.ShowConditionsButton.TabIndex = 4;
            this.ShowConditionsButton.Text = "Исходные данные";
            this.ShowConditionsButton.UseVisualStyleBackColor = true;
            this.ShowConditionsButton.Click += new System.EventHandler(this.ShowConditionsButton_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 22F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(414, 253);
            this.Controls.Add(this.ShowConditionsButton);
            this.Controls.Add(this.itemsListView);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.weightTextBox);
            this.Controls.Add(this.solveButton);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Form1";
            this.Text = "Рюкзак";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button solveButton;
        private System.Windows.Forms.TextBox weightTextBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListView itemsListView;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.Button ShowConditionsButton;
    }
}

