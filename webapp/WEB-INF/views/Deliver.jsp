<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="resources/engine1/style.css" />
<script type="text/javascript" src="resources/engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="NewDelivery" class="btn btn-primary pull-right"><span
		class="glyphicon glyphicon-hand-right"></span> New Address</a>
		<br>
		<br>
		<br>
		<c:forEach items="${shippingList}" var="shipping">
<div class="container">
<a href="deleteShipping?shipId= ${shipping.shipId}" class="btn btn-secondary pull-left">
					<span class="glyphicon glyphicon-trash"></span></a>
				
				<a href="editShipping?shipId= ${shipping.shipId}" class="btn btn-secondary pull-left">
					<span class="glyphicon glyphicon-pencil "></span></a>
					
				
                
                <br>
<div class="head"><center>Delivery Address<center></div>
<div class="parts">
<h3>Name: ${shipping.customerName}</h3>
<h3>Mobile: ${shipping.customerPhone}</h3>
<h3>Address: ${shipping.customerAddress}</h3>
<h3>ZIP: ${shipping.customerZIP}</h3>

<%-- </div>
<center><a href="deliverWho?shippingId=${shipping.shipId}" class="btn btn-warning btn-lg">
								<span class="glyphicon glyphicon-hand-down"></span> Deliver Here
							</a></center>

</div> --%>
</c:forEach>
</body>
</html>