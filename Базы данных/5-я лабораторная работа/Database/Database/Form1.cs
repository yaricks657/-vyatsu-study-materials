using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;



namespace Database
{


    public partial class Form1 : Form
    {

        int counter=4;

        string[,] players = new string[8, 4]{
                {"1", "Frank", "Vogel", "3"},
                { "2","Greg","Popovich","32"},
                { "3","Doc","Rivers","15"},
                { "4","Shon","Pen","1001"},
                { "","","",""},
                { "","","",""},
                { "","","",""},
                { "","","",""},
            };

        public Form1()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            dataGridView1.Rows.Add();
            dataGridView1.Rows.Add();
            dataGridView1.Rows.Add();
            dataGridView1.Rows.Add();
            for (int i = 0; i < 4; i++)
            {
                for(int j = 0; j < 4; j++)
                {
                    dataGridView1.Rows[i].Cells[j].Value = players[i, j];
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            counter++;
            dataGridView1.Rows.Add(counter, textBox1.Text, textBox2.Text, textBox3.Text);
            
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            dataGridView1[1, int.Parse(textBox7.Text)+1].Value = textBox6.Text;
            dataGridView1[ 2, int.Parse(textBox7.Text)+1].Value = textBox5.Text;
            dataGridView1[ 3, int.Parse(textBox7.Text)+1].Value = textBox4.Text;
        }

        private void button3_Click(object sender, EventArgs e)
        {
           // int ind = dataGridView1.SelectedCells[0].RowIndex;
            dataGridView1.Rows.RemoveAt(int.Parse(textBox9.Text)-1);
        }
    }
}
