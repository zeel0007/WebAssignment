<%@page import="java.sql.*"%>
<%@page import="database.DBConnection"%>


<html>

<head>

<style>


table{

margin:auto;
border-collapse:collapse;

}


td,th{

padding:12px;
border:1px solid black;

}


</style>


</head>


<body align="center">


<h2>
Attendance Report
</h2>


<table>


<tr>

<th>
Student Name
</th>

<th>
Date
</th>

<th>
Status
</th>


</tr>



<%

Connection con=
DBConnection.getConnection();



String query=

"select student.name,attendance.date,attendance.status "
+
"from student inner join attendance "
+
"on student.id=attendance.student_id";



Statement st=
con.createStatement();


ResultSet rs=
st.executeQuery(query);



while(rs.next())
{


%>



<tr>


<td>

<%=rs.getString("name")%>

</td>


<td>

<%=rs.getDate("date")%>

</td>


<td>

<%=rs.getString("status")%>

</td>


</tr>



<%

}

%>


</table>


</body>

</html>