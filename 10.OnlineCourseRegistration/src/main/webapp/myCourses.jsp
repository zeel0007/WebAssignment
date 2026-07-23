<%@page import="java.sql.*"%>
<%@page import="database.DBConnection"%>



<html>


<body align="center">


<h2>

My Registered Courses

</h2>


<table border="1" align="center" cellpadding="10">


<tr>

<th>Course</th>

<th>Duration</th>

</tr>


<%


int id=
(Integer)session.getAttribute("id");


Connection con=
DBConnection.getConnection();



PreparedStatement ps=
con.prepareStatement(

"select course.course_name,course.duration "
+
"from course inner join registration "
+
"on course.id=registration.course_id "
+
"where registration.student_id=?"

);



ps.setInt(1,id);



ResultSet rs=
ps.executeQuery();



while(rs.next())

{


%>


<tr>

<td>

<%=rs.getString("course_name")%>

</td>


<td>

<%=rs.getString("duration")%>

</td>


</tr>


<%

}

%>



</table>


</body>

</html>