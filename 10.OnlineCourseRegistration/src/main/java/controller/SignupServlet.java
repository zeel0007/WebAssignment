package controller;


import java.io.IOException;
import java.sql.*;

import database.DBConnection;

import jakarta.servlet.http.*;



public class SignupServlet extends HttpServlet{


protected void doPost(HttpServletRequest req,
HttpServletResponse res)
throws IOException{


String username=
req.getParameter("username");


String password=
req.getParameter("password");



try{


Connection con=
DBConnection.getConnection();



PreparedStatement ps=
con.prepareStatement(

"insert into student(username,password) values(?,?)"

);



ps.setString(1,username);

ps.setString(2,password);



ps.executeUpdate();



res.sendRedirect("index.jsp");


}


catch(Exception e){

e.printStackTrace();

}



}


}