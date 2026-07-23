<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library Management System</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    background:linear-gradient(135deg,#4e73df,#36b9cc);
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.container{
    width:450px;
    background:white;
    padding:35px;
    border-radius:15px;
    text-align:center;
    box-shadow:0px 8px 20px rgba(0,0,0,0.3);
}

h1{
    color:#2c3e50;
    margin-bottom:10px;
}

p{
    color:#666;
    margin-bottom:30px;
}

.btn{
    display:block;
    width:100%;
    padding:14px;
    margin:15px 0;
    background:#4e73df;
    color:white;
    text-decoration:none;
    border-radius:8px;
    font-size:18px;
    transition:0.3s;
}

.btn:hover{
    background:#224abe;
    transform:scale(1.03);
}

.footer{
    margin-top:20px;
    color:#888;
    font-size:14px;
}

</style>

</head>

<body>

<div class="container">

<h1>📚 Library Management System</h1>

<p>CRUD Operations using JSP, JDBC & MySQL</p>

<a href="Q6_add.jsp" class="btn">
➕ Add New Book
</a>

<a href="Q6_view.jsp" class="btn">
📖 View Books
</a>

<div class="footer">
MIT-WPU MCA Practical
</div>

</div>

</body>
</html>