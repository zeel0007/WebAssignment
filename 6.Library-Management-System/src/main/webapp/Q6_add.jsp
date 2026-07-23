<%@page import="database.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String title=request.getParameter("title");
String author=request.getParameter("author");

if(title!=null)
{
    Connection con=DBConnection.getConnection();

    PreparedStatement ps=con.prepareStatement(
    "insert into books(title,author) values(?,?)");

    ps.setString(1,title);
    ps.setString(2,author);

    ps.executeUpdate();

    response.sendRedirect("Q6_view.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Add Book</title>

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
    background:#28a745;
    color:white;
    border:none;
    border-radius:8px;
    font-size:17px;
    cursor:pointer;
}

button:hover{
    background:#218838;
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

<h2>➕ Add New Book</h2>

<form method="post">

<label>Book Title</label>

<input type="text" name="title" placeholder="Enter Book Title" required>

<label>Author Name</label>

<input type="text" name="author" placeholder="Enter Author Name" required>

<button type="submit">💾 Save Book</button>

</form>

<a href="Q6_index.jsp" class="back">🏠 Back to Home</a>

</div>

</body>
</html>