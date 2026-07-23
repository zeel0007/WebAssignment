<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q4 - Employee Salary Calculator</title>

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
    background:#28a745;
    color:white;
    border:none;
    font-size:16px;
    cursor:pointer;
}

button:hover{
    background:#218838;
}

</style>

</head>

<body>

<div class="container">

<h2>Employee Salary Calculator</h2>

<form action="Q4_salary.jsp" method="post">

<table>

<tr>
<td>Employee Name</td>
<td><input type="text" name="name" required></td>
</tr>

<tr>
<td>Employee ID</td>
<td><input type="text" name="id" required></td>
</tr>

<tr>
<td>Basic Salary</td>
<td><input type="number" name="basic" required></td>
</tr>

<tr>
<td colspan="2">
<button type="submit">Calculate Salary</button>
</td>
</tr>

</table>

</form>

</div>

</body>
</html>