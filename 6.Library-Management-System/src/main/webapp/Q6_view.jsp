<%@page import="database.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View Books</title>

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
    width:85%;
    margin:40px auto;
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

table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#4e73df;
    color:white;
    padding:12px;
}

td{
    padding:12px;
    text-align:center;
    border-bottom:1px solid #ddd;
}

tr:nth-child(even){
    background:#f8f9fa;
}

tr:hover{
    background:#eef5ff;
}

.edit{
    background:#ffc107;
    color:black;
    padding:6px 12px;
    text-decoration:none;
    border-radius:5px;
    font-weight:bold;
}

.edit:hover{
    background:#e0a800;
}

.delete{
    background:#dc3545;
    color:white;
    padding:6px 12px;
    text-decoration:none;
    border-radius:5px;
    font-weight:bold;
}

.delete:hover{
    background:#c82333;
}

.btn{
    display:inline-block;
    margin-top:25px;
    background:#28a745;
    color:white;
    padding:12px 20px;
    text-decoration:none;
    border-radius:8px;
    font-size:16px;
}

.btn:hover{
    background:#218838;
}

.home{
    display:inline-block;
    margin-top:25px;
    margin-left:15px;
    background:#4e73df;
    color:white;
    padding:12px 20px;
    text-decoration:none;
    border-radius:8px;
    font-size:16px;
}

.home:hover{
    background:#224abe;
}

</style>

</head>

<body>

<div class="container">

<h2>📚 Library Book List</h2>

<table>

<tr>

<th>ID</th>

<th>Book Title</th>

<th>Author</th>

<th>Edit</th>

<th>Delete</th>

</tr>

<%

Connection con=DBConnection.getConnection();

Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select * from books");

while(rs.next())
{

%>

<tr>

<td><%=rs.getInt(1)%></td>

<td><%=rs.getString(2)%></td>

<td><%=rs.getString(3)%></td>

<td>

<a class="edit"
href="Q6_edit.jsp?id=<%=rs.getInt(1)%>">
✏ Edit
</a>

</td>

<td>

<a class="delete"
href="Q6_delete.jsp?id=<%=rs.getInt(1)%>"
onclick="return confirm('Are you sure you want to delete this book?');">
🗑 Delete
</a>

</td>

</tr>

<%

}

%>

</table>

<center>

<a href="Q6_add.jsp" class="btn">
➕ Add New Book
</a>

<a href="Q6_index.jsp" class="home">
🏠 Home
</a>

</center>

</div>

</body>

</html>