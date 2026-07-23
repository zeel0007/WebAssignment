<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
String id = request.getParameter("id");

double basic = Double.parseDouble(request.getParameter("basic"));

double hra = basic * 0.20;
double da = basic * 0.10;
double grossSalary = basic + hra + da;

String grade;

if(grossSalary >= 50000)
{
    grade = "A";
}
else if(grossSalary >= 30000)
{
    grade = "B";
}
else
{
    grade = "C";
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Salary Details</title>

<style>

body{
    font-family:Arial;
    background:#eef2f7;
}

.container{
    width:600px;
    margin:40px auto;
    background:white;
    padding:25px;
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
    text-align:center;
}

th{
    background:#28a745;
    color:white;
}

a{
    text-decoration:none;
}

</style>

</head>

<body>

<div class="container">

<h2>Employee Salary Details</h2>

<table>

<tr>
<th>Field</th>
<th>Details</th>
</tr>

<tr>
<td>Employee Name</td>
<td><%= name %></td>
</tr>

<tr>
<td>Employee ID</td>
<td><%= id %></td>
</tr>

<tr>
<td>Basic Salary</td>
<td>₹ <%= String.format("%.2f", basic) %></td>
</tr>

<tr>
<td>HRA (20%)</td>
<td>₹ <%= String.format("%.2f", hra) %></td>
</tr>

<tr>
<td>DA (10%)</td>
<td>₹ <%= String.format("%.2f", da) %></td>
</tr>

<tr>
<td>Gross Salary</td>
<td><b>₹ <%= String.format("%.2f", grossSalary) %></b></td>
</tr>

<tr>
<td>Salary Grade</td>
<td><b><%= grade %></b></td>
</tr>

</table>

<br>

<center>
<a href="Q4_salaryForm.jsp">&larr; Calculate Another Salary</a>
</center>

</div>

</body>
</html>