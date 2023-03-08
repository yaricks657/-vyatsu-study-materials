package com.ben;

import Helpers.DBHelper;

import javax.swing.*;
import java.util.*;
import java.awt.*;
import java.awt.event.*;

import static Helpers.DBHelper.*;


public class Interface extends JFrame {

    ActionListener actionListener = new TestActionListener();
    public static JButton button1 = new JButton("Add");
    public static JTextField text1 = new JTextField("");
    public static JTextField text2 = new JTextField("");
    public static JTextField text3 = new JTextField("");
    public static JButton button2 = new JButton("Change");
    public static JButton button3 = new JButton("Delete");
    public static JTextField text4 = new JTextField("");
    public  static JTextField text5 = new JTextField("");
    public static JTextField text6 = new JTextField("");
    public  static JTextField text7 = new JTextField("");
    public static JTextField delete_text = new JTextField("");



    /**
     * Constructor for main window
     */
    public Interface() {
        super("Database on Java");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(900, 650);
        setLocationRelativeTo(null);
        JTable table1 = new JTable(array, columnsHeader);

        Box contents = new Box(BoxLayout.Y_AXIS);
        contents.add(new JScrollPane(table1));
        setContentPane(contents);

        JPanel panel = new JPanel();
        panel.setLayout(null);

        button1.setBounds(5, 5, 85, 30);
        button1.addActionListener(actionListener);
        panel.add(button1);
        JLabel label1 = new JLabel("Player's name: ");
        label1.setBounds(100, 5, 85, 30);

        text1.setBounds(200, 5, 85, 30);
        panel.add(label1);
        panel.add(text1);
        JLabel label2 = new JLabel("Player's surname: ");
        label2.setBounds(300, 5, 110, 30);

        text2.setBounds(425, 5, 85, 30);
        panel.add(label2);
        panel.add(text2);
        JLabel label3 = new JLabel("Player's age: ");
        label3.setBounds(525, 5, 85, 30);

        text3.setBounds(625, 5, 85, 30);
        panel.add(label3);
        panel.add(text3);

        button2.setBounds(5, 45, 85, 30);
        button2.addActionListener(actionListener);
        panel.add(button2);
        JLabel label4 = new JLabel("Player's name: ");
        label4.setBounds(100, 45, 85, 30);
        text4.setBounds(200, 45, 85, 30);
        panel.add(label4);
        panel.add(text4);
        JLabel label5 = new JLabel("Player's surname: ");
        label5.setBounds(300, 45, 110, 30);
        text5.setBounds(425, 45, 85, 30);
        panel.add(label5);
        panel.add(text5);
        JLabel label6 = new JLabel("Player's age: ");
        label6.setBounds(525, 45, 85, 30);
        text6.setBounds(625, 45, 85, 30);
        panel.add(label6);
        panel.add(text6);
        JLabel label7 = new JLabel("Player's id: ");
        label7.setBounds(725, 45, 85, 30);
        text7.setBounds(825, 45, 45, 30);
        panel.add(label7);
        panel.add(text7);


        getContentPane().add(panel);



    }

    public class TestActionListener implements ActionListener {
        public void actionPerformed(ActionEvent e) {
            if (e.getSource() == button1){
                new DBHelper().simpleInsert(text1.getText(),Interface.text2.getText(),Integer.valueOf(Interface.text3.getText()));
                new DBHelper().simpleSelect();
            }
            if (e.getSource() == button2){
                new DBHelper().simpleUpdate(text4.getText(),Interface.text5.getText(),Integer.valueOf(Interface.text6.getText()),Integer.valueOf(Interface.text7.getText()));
                new DBHelper().simpleSelect();
            }
        }
    }
}
