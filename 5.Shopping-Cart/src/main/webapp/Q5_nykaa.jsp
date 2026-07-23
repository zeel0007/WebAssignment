<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nykaa Shopping Cart</title>

<style>

body{
    font-family:Arial;
    background:#ffeef5;
}

.container{
    width:550px;
    margin:40px auto;
    background:white;
    padding:25px;
    border-radius:12px;
    box-shadow:0px 0px 12px gray;
}

h1{
    color:#e91e63;
    text-align:center;
}

table{
    width:100%;
}

td{
    padding:10px;
}

select{
    width:100%;
    padding:10px;
}

button{
    width:100%;
    padding:12px;
    background:#e91e63;
    color:white;
    border:none;
    font-size:16px;
    border-radius:5px;
    cursor:pointer;
}

button:hover{
    background:#c2185b;
}

</style>

</head>

<body>

<div class="container">

<h1>Nykaa Beauty Store</h1>

<form action="Q5_cart.jsp" method="post">

<table>

<tr>

<td>Select Product</td>

<td>

<select name="product">

<option>Lakme Foundation</option>
<option>Maybelline Lipstick</option>
<option>Nykaa Kajal</option>
<option>Mamaearth Face Wash</option>
<option>Minimalist Sunscreen</option>
<option>Lotus Moisturizer</option>
<option>Plum Body Lotion</option>
<option>Sugar Mascara</option>

</select>

</td>

</tr>

<tr>

<td colspan="2">

<button>Add To Cart</button>

</td>

</tr>

</table>

</form>

</div>

</body>
</html>