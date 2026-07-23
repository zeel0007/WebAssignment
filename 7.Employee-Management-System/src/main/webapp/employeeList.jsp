<%@page import="java.util.*"%>
<%@page import="model.Employee"%>

<html>

<head>
<title>Employee List</title>
</head>

<body align="center">

<h2>Employee List</h2>

<table border="1" cellpadding="10">

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Department</th>
    <th>Salary</th>
    <th>Email</th>
    <th>Edit</th>
    <th>Delete</th>
</tr>

<%
List<Employee> list = (List<Employee>) request.getAttribute("list");

if(list != null)
{
    for(Employee e : list)
    {
%>

<tr>

<td><%=e.getId()%></td>
<td><%=e.getName()%></td>
<td><%=e.getDepartment()%></td>
<td><%=e.getSalary()%></td>
<td><%=e.getEmail()%></td>

<td>
<a href="EmployeeServlet?action=edit&id=<%=e.getId()%>">
Edit
</a>
</td>

<td>
<a href="EmployeeServlet?action=delete&id=<%=e.getId()%>">
Delete
</a>
</td>

</tr>

<%
    }
}
%>

</table>

<br>

<a href="addEmployee.jsp">Add Employee</a>

<br><br>

<a href="index.jsp">Home</a>

</body>

</html>