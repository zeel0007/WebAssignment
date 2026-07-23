<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q3 - Student Result System</title>

<style>

body{
    font-family:Arial;
    background:#f2f2f2;
}

.container{
    width:500px;
    margin:40px auto;
    background:white;
    padding:25px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h2{
    text-align:center;
    color:#003366;
}

table{
    width:100%;
}

td{
    padding:10px;
}

input{
    width:100%;
    padding:8px;
}

button{
    width:100%;
    padding:10px;
    background:#007BFF;
    color:white;
    border:none;
    cursor:pointer;
    font-size:16px;
}

button:hover{
    background:#0056b3;
}

</style>

</head>

<body>

<div class="container">

<h2>Online Student Result System</h2>

<form action="Q3_result.jsp" method="post">

<table>

<tr>
<td>Student Name</td>
<td><input type="text" name="name" required></td>
</tr>

<tr>
<td>Roll Number</td>
<td><input type="text" name="roll" required></td>
</tr>

<tr>
<td>Java Marks</td>
<td><input type="number" name="java" min="0" max="100" required></td>
</tr>

<tr>
<td>Python Marks</td>
<td><input type="number" name="python" min="0" max="100" required></td>
</tr>

<tr>
<td>Database Marks</td>
<td><input type="number" name="dbms" min="0" max="100" required></td>
</tr>

<tr>
<td colspan="2">
<button type="submit">Calculate Result</button>
</td>
</tr>

</table>

</form>

</div>

</body>
</html>