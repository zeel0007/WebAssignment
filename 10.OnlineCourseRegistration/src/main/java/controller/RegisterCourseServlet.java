package controller;


import java.io.*;
import java.sql.*;

import database.DBConnection;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class RegisterCourseServlet extends HttpServlet{


protected void doPost(HttpServletRequest req,
HttpServletResponse res)
throws IOException{


HttpSession session=req.getSession();


int student_id=
(Integer)session.getAttribute("id");



int course_id=
Integer.parseInt(
req.getParameter("course_id")
);



try{


Connection con=
DBConnection.getConnection();



PreparedStatement ps=
con.prepareStatement(

"insert into registration(student_id,course_id) values(?,?)"

);



ps.setInt(1,student_id);

ps.setInt(2,course_id);



ps.executeUpdate();



res.sendRedirect("myCourses.jsp");


}


catch(Exception e){

e.printStackTrace();

}


}


}