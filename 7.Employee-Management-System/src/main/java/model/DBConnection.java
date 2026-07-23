package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static Connection con;

    public static Connection getConnection() {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/employee_db1",
                    "root",
                    "#shreya_5504#");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

}