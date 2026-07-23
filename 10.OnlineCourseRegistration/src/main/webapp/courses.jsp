<%@page import="java.sql.*"%>
<%@page import="database.DBConnection"%>


<html>

<body align="center">


<h2>
Available Courses
</h2>


<table border="1" align="center" cellpadding="10">


<tr>

<th>ID</th>

<th>Course</th>

<th>Duration</th>

<th>Action</th>


</tr>



<%


Connection con=
DBConnection.getConnection();



Statement st=
con.createStatement();



ResultSet rs=
st.executeQuery(
"select * from course"
);



while(rs.next())

{


%>


<tr>


<td>
<%=rs.getInt("id")%>
</td>


<td>
<%=rs.getString("course_name")%>
</td>


<td>
<%=rs.getString("duration")%>
</td>


<td>


<form action="registerCourse" method="post">


<input type="hidden"
name="course_id"
value="<%=rs.getInt("id")%>">


<button>

Register

</button>


</form>


</td>



</tr>


<%

}

%>


</table>


</body>


</html>