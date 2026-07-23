package controller;


import java.io.*;
import java.sql.*;
import database.DBConnection;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class AddStudentServlet extends HttpServlet{


protected void doPost(HttpServletRequest req,
HttpServletResponse res)
throws IOException{


String name=req.getParameter("name");
String email=req.getParameter("email");
String course=req.getParameter("course");


try{


Connection con=
DBConnection.getConnection();


PreparedStatement ps=
con.prepareStatement(
"insert into student(name,email,course) values(?,?,?)");


ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,course);


ps.executeUpdate();


res.sendRedirect("students.jsp");


}

catch(Exception e)
{
e.printStackTrace();
}


}


}