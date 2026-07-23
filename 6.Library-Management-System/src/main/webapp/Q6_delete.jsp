<%@page import="database.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String id = request.getParameter("id");

if(id != null)
{
    Connection con = DBConnection.getConnection();

    PreparedStatement ps = con.prepareStatement(
    "DELETE FROM books WHERE id=?");

    ps.setInt(1, Integer.parseInt(id));

    ps.executeUpdate();

    response.sendRedirect("Q6_view.jsp");
}
%>