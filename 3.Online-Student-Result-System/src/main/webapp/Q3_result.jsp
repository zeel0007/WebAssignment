<%
String name = request.getParameter("name");
String roll = request.getParameter("roll");

int javaMarks = Integer.parseInt(request.getParameter("java"));
int pythonMarks = Integer.parseInt(request.getParameter("python"));
int dbmsMarks = Integer.parseInt(request.getParameter("dbms"));

int total = javaMarks + pythonMarks + dbmsMarks;
double percentage = total / 3.0;

String grade;

if(percentage >= 90)
{
    grade = "A+";
}
else if(percentage >= 80)
{
    grade = "A";
}
else if(percentage >= 70)
{
    grade = "B";
}
else if(percentage >= 60)
{
    grade = "C";
}
else if(percentage >= 40)
{
    grade = "D";
}
else
{
    grade = "Fail";
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Student Result</title>

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
    background:#007BFF;
    color:white;
}

a{
    text-decoration:none;
}

</style>

</head>

<body>

<div class="container">

<h2>Student Result</h2>

<table>

<tr>
<th>Field</th>
<th>Details</th>
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
<td>Java</td>
<td><%= javaMarks %></td>
</tr>

<tr>
<td>Python</td>
<td><%= pythonMarks %></td>
</tr>

<tr>
<td>DBMS</td>
<td><%= dbmsMarks %></td>
</tr>

<tr>
<td>Total</td>
<td><%= total %> / 300</td>
</tr>

<tr>
<td>Percentage</td>
<td><%= String.format("%.2f", percentage) %>%</td>
</tr>

<tr>
<td>Grade</td>
<td><b><%= grade %></b></td>
</tr>

</table>

<br>

<center>
<a href="Q3_resultForm.jsp">&#8592; Calculate Another Result</a>
</center>

</div>

</body>
</html>