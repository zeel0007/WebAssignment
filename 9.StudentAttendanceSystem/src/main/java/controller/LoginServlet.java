package controller;


import java.io.*;
import java.sql.*;
import database.DBConnection;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet {


protected void doPost(HttpServletRequest request,
HttpServletResponse response)
throws IOException{


String user=request.getParameter("username");
String pass=request.getParameter("password");


try{


Connection con=DBConnection.getConnection();


PreparedStatement ps=
con.prepareStatement(
"select * from admin where username=? and password=?");


ps.setString(1,user);
ps.setString(2,pass);


ResultSet rs=ps.executeQuery();


if(rs.next())
{

HttpSession session=request.getSession();

session.setAttribute("admin",user);


response.sendRedirect("dashboard.jsp");

}

else
{

response.sendRedirect("index.jsp");

}


}

catch(Exception e)
{
e.printStackTrace();
}


}

}