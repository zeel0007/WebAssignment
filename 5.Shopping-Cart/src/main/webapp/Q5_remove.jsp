<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>

<%

ArrayList<String> cart=(ArrayList<String>)session.getAttribute("cart");

String product=request.getParameter("product");

if(cart!=null && product!=null)
{
    cart.remove(product);
}

session.setAttribute("cart",cart);

response.sendRedirect("Q5_cart.jsp");

%>