<%@page import="java.sql.*"%>
<%@page import="database.DBConnection"%>


<html>

<body align="center">


<h2>Student List</h2>


<table border="1" align="center" cellpadding="10">


<tr>

<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Course</th>

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

<td><%=rs.getInt("id")%></td>

<td><%=rs.getString("name")%></td>

<td><%=rs.getString("email")%></td>

<td><%=rs.getString("course")%></td>


</tr>


<%

}

%>


</table>


</body>

</html>