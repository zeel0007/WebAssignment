<%@page import="model.Employee"%>

<%

Employee e=(Employee)request.getAttribute("emp");

%>

<html>

<body align="center">

<h2>Edit Employee</h2>

<form action="EmployeeServlet" method="post">

<input type="hidden" name="action" value="update">

<input type="hidden" name="id" value="<%=e.getId()%>">

<table>

<tr>

<td>Name</td>

<td>

<input type="text" name="name" value="<%=e.getName()%>">

</td>

</tr>

<tr>

<td>Department</td>

<td>

<input type="text" name="department" value="<%=e.getDepartment()%>">

</td>

</tr>

<tr>

<td>Salary</td>

<td>

<input type="text" name="salary" value="<%=e.getSalary()%>">

</td>

</tr>

<tr>

<td>Email</td>

<td>

<input type="email" name="email" value="<%=e.getEmail()%>">

</td>

</tr>

<tr>

<td></td>

<td>

<input type="submit" value="Update">

</td>

</tr>

</table>

</form>

</body>

</html>