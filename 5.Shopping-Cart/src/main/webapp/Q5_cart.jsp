<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>

<%
ArrayList<String> cart=(ArrayList<String>)session.getAttribute("cart");

if(cart==null)
{
    cart=new ArrayList<String>();
}

String product=request.getParameter("product");

if(product!=null)
{
    cart.add(product);
}

session.setAttribute("cart",cart);
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Nykaa Cart</title>

<style>

body{
    font-family:Arial;
    background:#fff5f8;
}

.container{
    width:650px;
    margin:40px auto;
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h2{
    text-align:center;
    color:#e91e63;
}

table{
    width:100%;
    border-collapse:collapse;
}

th,td{
    border:1px solid #ddd;
    padding:10px;
    text-align:center;
}

th{
    background:#e91e63;
    color:white;
}

a{
    text-decoration:none;
}

.btn{
    background:#e91e63;
    color:white;
    padding:8px 15px;
    border-radius:5px;
}

</style>

</head>

<body>

<div class="container">

<h2>My Shopping Cart</h2>

<table>

<tr>

<th>Product</th>

<th>Action</th>

</tr>

<%

for(String item:cart)
{

%>

<tr>

<td><%= item %></td>

<td>

<a href="Q5_remove.jsp?product=<%= item %>">

Remove

</a>

</td>

</tr>

<%

}

%>

</table>

<br>

<center>

<a href="Q5_nykaa.jsp" class="btn">

Continue Shopping

</a>

</center>

</div>

</body>

</html>