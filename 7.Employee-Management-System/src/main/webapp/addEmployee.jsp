<html>

<head>
<title>Add Employee</title>
</head>

<body align="center">

<h2>Add Employee</h2>

<form action="EmployeeServlet" method="post">

<input type="hidden" name="action" value="insert">

<table>

<tr>
<td>Name</td>
<td><input type="text" name="name"></td>
</tr>

<tr>
<td>Department</td>
<td><input type="text" name="department"></td>
</tr>

<tr>
<td>Salary</td>
<td><input type="text" name="salary"></td>
</tr>

<tr>
<td>Email</td>
<td><input type="email" name="email"></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="Save"></td>
</tr>

</table>

</form>

<br>

<a href="index.jsp">Home</a>

</body>

</html>