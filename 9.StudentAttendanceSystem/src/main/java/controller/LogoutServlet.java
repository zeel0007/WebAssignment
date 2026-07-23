package controller;


import java.io.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class LogoutServlet extends HttpServlet{


protected void doGet(HttpServletRequest req,
HttpServletResponse res)
throws IOException{


HttpSession session=req.getSession();

session.invalidate();


res.sendRedirect("index.jsp");


}

}