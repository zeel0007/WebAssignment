<%@page import="database.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

Connection con = DBConnection.getConnection();

String id = request.getParameter("id");

if(request.getParameter("title") != null)
{

PreparedStatement ps = con.prepareStatement(
"update books set title=?,author=? where id=?");

ps.setString(1,request.getParameter("title"));
ps.setString(2,request.getParameter("author"));
ps.setInt(3,Integer.parseInt(id));

ps.executeUpdate();

response.sendRedirect("Q6_view.jsp");

}

PreparedStatement ps = con.prepareStatement(
"select * from books where id=?");

ps.setInt(1,Integer.parseInt(id));

ResultSet rs = ps.executeQuery();

rs.next();

%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Edit Book</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    background:linear-gradient(135deg,#4e73df,#36b9cc);
}

.container{
    width:450px;
    margin:60px auto;
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0px 8px 20px rgba(0,0,0,0.3);
}

h2{
    text-align:center;
    color:#2c3e50;
    margin-bottom:25px;
}

label{
    display:block;
    margin-top:15px;
    margin-bottom:8px;
    font-weight:bold;
    color:#444;
}

input{
    width:100%;
    padding:12px;
    border:1px solid #ccc;
    border-radius:8px;
    font-size:15px;
}

input:focus{
    outline:none;
    border-color:#4e73df;
}

button{
    width:100%;
    padding:12px;
    margin-top:25px;
    background:#ff9800;
    color:white;
    border:none;
    border-radius:8px;
    font-size:17px;
    cursor:pointer;
}

button:hover{
    background:#e68900;
}

.back{
    display:block;
    text-align:center;
    margin-top:18px;
    text-decoration:none;
    color:#4e73df;
    font-weight:bold;
}

.back:hover{
    text-decoration:underline;
}

</style>

</head>

<body>

<div class="container">

<h2>✏ Edit Book</h2>

<form method="post">

<label>Book Title</label>

<input
type="text"
name="title"
value="<%=rs.getString(2)%>"
required>

<label>Author Name</label>

<input
type="text"
name="author"
value="<%=rs.getString(3)%>"
required>

<button type="submit">
✅ Update Book
</button>

</form>

<a href="Q6_view.jsp" class="back">
⬅ Back to Book List
</a>

</div>

</body>

</html>