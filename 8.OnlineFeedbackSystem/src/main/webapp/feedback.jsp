<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>

<head>

<title>Online Feedback Management System</title>

<style>

body{

font-family:Arial;
text-align:center;
margin-top:40px;

}

input,textarea{

width:250px;
padding:8px;

}

.star{

font-size:35px;
cursor:pointer;
color:gray;

}

</style>

<script>

function setRating(value){

document.getElementById("rating").value=value;

var stars=document.getElementsByClassName("star");

for(var i=0;i<stars.length;i++){

stars[i].style.color="gray";

}

for(var i=0;i<value;i++){

stars[i].style.color="gold";

}

}

function validate(){

var name=document.f.name.value;
var email=document.f.email.value;
var rating=document.getElementById("rating").value;
var comments=document.f.comments.value;

if(name==""){

alert("Enter Name");
return false;

}

if(email==""){

alert("Enter Email");
return false;

}

var emailPattern=/^[^ ]+@[^ ]+\.[a-z]{2,3}$/;

if(!email.match(emailPattern)){

alert("Invalid Email");
return false;

}

if(rating==""){

alert("Please Select Rating");
return false;

}

if(comments==""){

alert("Enter Comments");
return false;

}

return true;

}

</script>

</head>

<body>

<h2>Online Feedback Management System</h2>

<form name="f"
action="saveFeedback.jsp"
method="post"
onsubmit="return validate()">

Name

<br><br>

<input type="text" name="name">

<br><br>

Email

<br><br>

<input type="text" name="email">

<br><br>

Rating

<br><br>

<span class="star" onclick="setRating(1)">★</span>
<span class="star" onclick="setRating(2)">★</span>
<span class="star" onclick="setRating(3)">★</span>
<span class="star" onclick="setRating(4)">★</span>
<span class="star" onclick="setRating(5)">★</span>

<input type="hidden" id="rating" name="rating">

<br><br>

Comments

<br><br>

<textarea rows="5" name="comments"></textarea>

<br><br>

<input type="submit" value="Submit Feedback">

</form>

</body>

</html>