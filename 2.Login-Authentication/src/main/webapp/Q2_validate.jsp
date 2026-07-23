<%
String username=request.getParameter("username");
String password=request.getParameter("password");

if(username.equals("admin") && password.equals("1234"))
{
    session.setAttribute("user",username);

    response.sendRedirect("Q2_welcome.jsp");
}
else
{
%>

<!DOCTYPE html>
<html>
<head>
<title>Login Failed</title>
</head>

<body style="font-family:Arial;background:#f2f2f2;">

<center>

<h2 style="color:red;">Invalid Username or Password</h2>

<a href="Q2_login.jsp">Try Again</a>

</center>

</body>
</html>

<%
}
%>