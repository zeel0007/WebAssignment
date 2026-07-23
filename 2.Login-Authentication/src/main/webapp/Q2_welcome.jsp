<%
String user=(String)session.getAttribute("user");

if(user==null)
{
    response.sendRedirect("Q2_login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Welcome</title>

<style>

body{
    font-family:Arial;
    background:#eef2f7;
}

.container{
    width:450px;
    margin:80px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    text-align:center;
    box-shadow:0px 0px 10px gray;
}

a{
    text-decoration:none;
    color:white;
    background:red;
    padding:10px 20px;
    border-radius:5px;
}

</style>

</head>

<body>

<div class="container">

<h2>Welcome, <%= user %></h2>

<p>Login Successful!</p>

<br>

<a href="Q2_logout.jsp">Logout</a>

</div>

</body>
</html>