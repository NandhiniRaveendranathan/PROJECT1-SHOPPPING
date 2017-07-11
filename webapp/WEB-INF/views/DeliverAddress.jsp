<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style> 
.flex-container {
    display: -webkit-flex;
    display: flex;  
    -webkit-flex-flow: row wrap;
    flex-flow: row wrap;
    text-align: center;
}

.flex-container > * {
    padding: 15px;
    -webkit-flex: 1 100%;
    flex: 1 100%;
}

.parts
{
background-color: white;
}
.parts:hover
{
background-color: white;
}
header {background: black;color:white;}
footer {background: #aaa;color:white;}
.nav {background:#eee;}

.nav ul {
    list-style-type: none;
    padding: 0;
}
.nav ul a {
    text-decoration: none;
}

@media all and (min-width: 768px) {
    .nav {text-align:left;-webkit-flex: 1 auto;flex:1 auto;-webkit-order:1;order:1;}
    .article {-webkit-flex:5 0px;flex:5 0px;-webkit-order:2;order:2;}
    footer {-webkit-order:3;order:3;}
}
</style>
</head>
<body>
<a href="NewDelivery" class="btn btn-primary pull-right"><span
		class="glyphicon glyphicon-hand-right"></span> New Address</a>
		<br>
		<br>
		<br>

<div class="flex-container">
<c:forEach items="${shippingList}" var="shipping">

<div class="parts" style="border: thick;">
<ul>
<li> <a href="deleteShipping?shipId= ${shipping.shipId}" class="btn btn-secondary pull-left">
					<span class="glyphicon glyphicon-trash"></span></a></li>
				
		<li	>	<a href="editShipping?shipId= ${shipping.shipId}" class="btn btn-secondary pull-left">
					<span class="glyphicon glyphicon-pencil "></span></a></li>
</ul>
<h3>Name: ${shipping.customerName}</h3>
<h3>Mobile: ${shipping.customerPhone}</h3>
<h3>Address: ${shipping.customerAddress}</h3>
<h3>ZIP: ${shipping.customerZIP}</h3>
<center><a href="deliverWho?shippingId=${shipping.shipId}" class="btn btn-warning btn-lg">
								<span class="glyphicon glyphicon-hand-down"></span> Deliver Here
							</a></center>
</div>
</c:forEach>
</div>

</body>
</html>