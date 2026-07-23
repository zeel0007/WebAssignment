<%
String name = request.getParameter("name");
String roll = request.getParameter("roll");
String email = request.getParameter("email");
String course = request.getParameter("course");
String gender = request.getParameter("gender");
String city = request.getParameter("city");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Registration Details</title>

<style>

body{
    font-family:Arial;
    background:#eef2f7;
}

.container{
    width:500px;
    margin:40px auto;
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h2{
    text-align:center;
    color:green;
}

table{
    width:100%;
    border-collapse:collapse;
}

th,td{
    border:1px solid #ccc;
    padding:10px;
}

th{
    background:#007BFF;
    color:white;
}

</style>

</head>

<body>

<div class="container">

<h2>Student Registration Successful</h2>

<table>

<tr>
<th>Field</th>
<th>Value</th>
</tr>

<tr>
<td>Name</td>
<td><%= name %></td>
</tr>

<tr>
<td>Roll Number</td>
<td><%= roll %></td>
</tr>

<tr>
<td>Email</td>
<td><%= email %></td>
</tr>

<tr>
<td>Course</td>
<td><%= course %></td>
</tr>

<tr>
<td>Gender</td>
<td><%= gender %></td>
</tr>

<tr>
<td>City</td>
<td><%= city %></td>
</tr>

</table>

<br>

<center>
<a href="Q1_index.jsp">← Register Another Student</a>
</center>

</div>

</body>
</html>