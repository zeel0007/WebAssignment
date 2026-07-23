<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q1 - Student Registration Form</title>

<style>

body{
    font-family: Arial, sans-serif;
    background:#f2f2f2;
}

.container{
    width:500px;
    margin:40px auto;
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h2{
    text-align:center;
    color:#003366;
}

table{
    width:100%;
}

td{
    padding:10px;
}

input,select{
    width:100%;
    padding:8px;
}

.btn{
    width:100%;
    padding:10px;
    background:#007BFF;
    color:white;
    border:none;
    border-radius:5px;
    font-size:16px;
    cursor:pointer;
}

.btn:hover{
    background:#0056b3;
}

</style>

</head>

<body>

<div class="container">

<h2>Student Registration Form</h2>

<form action="Q1_register.jsp" method="post">

<table>

<tr>
<td>Student Name</td>
<td><input type="text" name="name" required></td>
</tr>

<tr>
<td>Roll Number</td>
<td><input type="text" name="roll" required></td>
</tr>

<tr>
<td>Email</td>
<td><input type="email" name="email" required></td>
</tr>

<tr>
<td>Course</td>
<td>
<select name="course">
<option>MCA</option>
<option>MBA</option>
<option>BCA</option>
<option>BBA</option>
</select>
</td>
</tr>

<tr>
<td>Gender</td>
<td>
<input type="radio" name="gender" value="Male"> Male
<input type="radio" name="gender" value="Female"> Female
</td>
</tr>

<tr>
<td>City</td>
<td><input type="text" name="city"></td>
</tr>

<tr>
<td colspan="2">
<input type="submit" value="Register" class="btn">
</td>
</tr>

</table>

</form>

</div>

</body>
</html>