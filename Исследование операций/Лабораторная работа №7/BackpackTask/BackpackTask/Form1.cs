﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BackpackTask
{
    public partial class Form1 : Form
    {
        private List<Item> items;

        public Form1()
        {
            InitializeComponent();

            AddItems();
            ShowItems(items);
        }

        private void AddItems()
        {
            items = new List<Item>();

            items.Add(new Item("Нож", 1, 2));
            items.Add(new Item("Скотч", 2, 5));
            items.Add(new Item("Мыло", 3, 7));
            items.Add(new Item("Верёвка", 4, 9));
         //   items.Add(new Item("Вода", 1, 500));
        }

        private void ShowItems(List<Item> _items)
        {
            itemsListView.Items.Clear();

            foreach (Item i in _items)
            {
                itemsListView.Items.Add(new ListViewItem(new string[] { i.name, i.weigth.ToString(), 
                    i.price.ToString() }));
            }
        }

        //показать исходные данные
        private void ShowConditionsButton_Click(object sender, EventArgs e)
        {
            ShowItems(items);
        }

        //решить задачу
        private void solveButton_Click(object sender, EventArgs e)
        {
            Backpack bp = new Backpack(Convert.ToDouble(weightTextBox.Text));

            bp.MakeAllSets(items);

            List<Item> solve = bp.GetBestSet();

            if(solve == null)
            {
                MessageBox.Show("Нет решения!");
            }
            else
            {
                itemsListView.Items.Clear();

                ShowItems(solve);

              //  MessageBox.Show("Решение приведено в таблице");
            }
        }
    }
}