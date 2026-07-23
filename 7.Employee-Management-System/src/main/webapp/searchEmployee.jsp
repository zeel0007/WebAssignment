<%@ page import="model.Employee" %>

<%
Employee e = (Employee)request.getAttribute("emp");
%>

<html>

<head>
<title>Search Employee</title>
</head>

<body align="center">

<h2>Search Employee</h2>

<form action="EmployeeServlet" method="get">

<input type="hidden" name="action" value="search">

<table>

<tr>
<td>Employee ID</td>
<td><input type="text" name="id" required></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="Search"></td>
</tr>

</table>

</form>

<br><br>

<%
if(e != null && e.getId() != 0)
{
%>

<table border="1" cellpadding="10">

<tr>
<th>ID</th>
<th>Name</th>
<th>Department</th>
<th>Salary</th>
<th>Email</th>
</tr>

<tr>

<td><%=e.getId()%></td>
<td><%=e.getName()%></td>
<td><%=e.getDepartment()%></td>
<td><%=e.getSalary()%></td>
<td><%=e.getEmail()%></td>

</tr>

</table>

<%
}
else if(request.getParameter("id") != null)
{
%>

<h3>Employee Not Found!</h3>

<%
}
%>

<br><br>

<a href="index.jsp">Home</a>

</body>

</html>