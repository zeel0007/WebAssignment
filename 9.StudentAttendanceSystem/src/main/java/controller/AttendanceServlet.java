package controller;


import java.io.*;
import java.sql.*;
import java.util.*;

import database.DBConnection;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class AttendanceServlet extends HttpServlet{


protected void doPost(HttpServletRequest req,
HttpServletResponse res)
throws IOException{


try{


Connection con=
DBConnection.getConnection();


String[] students=
req.getParameterValues("student");



for(String id:students)
{


String status=
req.getParameter("status"+id);



PreparedStatement ps=
con.prepareStatement(
"insert into attendance(student_id,date,status) values(?,?,?)");



ps.setInt(1,Integer.parseInt(id));


ps.setDate(2,
new java.sql.Date(System.currentTimeMillis()));


ps.setString(3,status);


ps.executeUpdate();


}



res.sendRedirect("report.jsp");



}

catch(Exception e)
{

e.printStackTrace();

}


}


}