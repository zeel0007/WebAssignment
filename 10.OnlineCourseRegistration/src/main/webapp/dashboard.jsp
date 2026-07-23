<%


if(session.getAttribute("id")==null)

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

Welcome 
<%=session.getAttribute("username")%>

</h1>



<a href="courses.jsp">

Available Courses

</a>



<a href="myCourses.jsp">

My Courses

</a>



<a href="logout">

Logout

</a>



</body>


</html>