<%@page import="java.sql.*"%>
<%@page import="database.DBConnection"%>

<html>

<head>

<style>

body{
font-family:Arial;
text-align:center;
}

table{

margin:auto;
border-collapse:collapse;

}

td,th{

padding:12px;
border:1px solid black;

}

button{

background:#0066ff;
color:white;
padding:10px 25px;
border:none;
border-radius:5px;

}

</style>

</head>


<body>


<h2>Mark Attendance</h2>


<form action="attendance" method="post">


<table>


<tr>

<th>ID</th>
<th>Name</th>
<th>Status</th>

</tr>


<%

Connection con=DBConnection.getConnection();

Statement st=con.createStatement();

ResultSet rs=
st.executeQuery("select * from student");


while(rs.next())
{

%>


<tr>

<td>

<%=rs.getInt("id")%>

</td>


<td>

<%=rs.getString("name")%>

</td>


<td>


<input type="radio"
name="status<%=rs.getInt("id")%>"
value="Present">

Present


<input type="radio"
name="status<%=rs.getInt("id")%>"
value="Absent">

Absent


<input type="hidden"
name="student"
value="<%=rs.getInt("id")%>">


</td>


</tr>


<%

}

%>


</table>


<br>


<button>
Submit Attendance
</button>


</form>


</body>

</html>