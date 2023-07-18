package com.example.baekgu_project.commons;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;

public class Commons
{
    @Autowired
    public Statement getStatement()
    {
        String url = "jdbc:mysql://192.168.0.40:3306/db_cars";
        String user = "yojulab";
        String password = "!yojulab*";

        Statement statement = null;
        try
        {
            Connection connection = DriverManager.getConnection(url, user, password);
            statement = connection.createStatement();
        }

        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return statement;
    }

    @Autowired
    public String getGeneratorID()
    {
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyyhh:mm:ss");
        String strDate = formatter.format(date);
        return strDate;
    }

    @Autowired
    public String generateUUID()
    {

        return UUID.randomUUID().toString();
    }
}