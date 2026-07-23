package controller;


import java.io.*;
import java.sql.*;

import database.DBConnection;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet{


protected void doPost(HttpServletRequest req,
HttpServletResponse res)
throws IOException{


String username=req.getParameter("username");

String password=req.getParameter("password");



try{


Connection con=
DBConnection.getConnection();



PreparedStatement ps=
con.prepareStatement(

"select * from student where username=? and password=?"

);



ps.setString(1,username);

ps.setString(2,password);



ResultSet rs=
ps.executeQuery();



if(rs.next()){
	
	System.out.println("Login Successful");


HttpSession session=
req.getSession();


session.setAttribute("id",
rs.getInt("id"));


session.setAttribute("username",
username);



res.sendRedirect("dashboard.jsp");


}

else{


res.sendRedirect("index.jsp");


}


}


catch(Exception e){

e.printStackTrace();

}


}


}