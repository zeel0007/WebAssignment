<%@page import="java.sql.*"%>
<%@page import="database.DBConnection"%>

<%

try{

String name=request.getParameter("name");
String email=request.getParameter("email");
String rating=request.getParameter("rating");
String comments=request.getParameter("comments");

Connection con=DBConnection.getConnection();

PreparedStatement ps=con.prepareStatement(
"insert into feedback(name,email,rating,comments) values(?,?,?,?)");

ps.setString(1,name);
ps.setString(2,email);
ps.setInt(3,Integer.parseInt(rating));
ps.setString(4,comments);

int i=ps.executeUpdate();

if(i>0){

response.sendRedirect("success.jsp");

}
else{

out.println("Feedback Not Submitted");

}

}
catch(Exception e){

out.println(e);

}

%>