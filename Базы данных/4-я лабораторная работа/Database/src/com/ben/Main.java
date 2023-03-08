package com.ben;

import Helpers.DBHelper;

public class Main {

    public static void main(String[] args) {
        DBHelper db = new DBHelper();
        db.simpleSelect();
        Interface app = new Interface();
        app.setVisible(true);
        db.closeConnection();
    }
}

