<%

if(session.getAttribute("admin")==null)
{
response.sendRedirect("index.jsp");
}

%>


<html>

<head>

<style>

a{

display:inline-block;
background:#0066ff;
color:white;
padding:15px;
margin:10px;
text-decoration:none;
border-radius:5px;

}


</style>

</head>


<body align="center">


<h1>
Welcome Admin
</h1>



<a href="addStudent.jsp">
Add Student
</a>


<a href="students.jsp">
View Students
</a>


<a href="attendance.jsp">
Mark Attendance
</a>


<a href="report.jsp">
Attendance Report
</a>


<a href="logout">
Logout
</a>



</body>

</html>