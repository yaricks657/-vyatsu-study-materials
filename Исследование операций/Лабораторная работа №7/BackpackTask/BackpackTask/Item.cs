﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackpackTask
{
    class Item
    {
        public string name { get; set; }

        public double weigth { get; set; }

        public double price { get; set; }

        public Item(string _name, double _weigth, double _price)
        {
            name = _name;
            weigth = _weigth;
            price = _price;
        }

    }
}