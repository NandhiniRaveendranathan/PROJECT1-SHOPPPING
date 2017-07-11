<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    background: rgba(59,183,120,1);background: -moz-linear-gradient(left, rgba(59,183,120,1) 47%, rgba(71,196,218,1) 100%);background: -webkit-gradient(left top, right top, color-stop(47%, rgba(59,183,120,1)), color-stop(100%, rgba(71,196,218,1)));background: -webkit-linear-gradient(left, rgba(59,183,120,1) 47%, rgba(71,196,218,1) 100%);background: -o-linear-gradient(left, rgba(59,183,120,1) 47%, rgba(71,196,218,1) 100%);background: -ms-linear-gradient(left, rgba(59,183,120,1) 47%, rgba(71,196,218,1) 100%);background: linear-gradient(to right, rgba(59,183,120,1) 47%, rgba(71,196,218,1) 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3bb778', endColorstr='#47c4da', GradientType=1 );
    }
.transparent .tuyin 
	{
	margin-top: 20px; 
	background-color: rgba(255, 255, 255, 0.37);
	border: 1px solid #F7F7F7;
	border-radius: 5px;
	box-shadow: 0px 0px 2px 0px rgba(181, 181, 181, 0.3);
	padding: 4%;
	text-align: center;
	width: 97%;
	min-height: 315px;
	position: relative;
	margin-bottom: 25px;
	 }
.transparent .tuyin .title 
	{
	text-align: center; 
	color: #FFF;
	font-size: 49px; 
	}
.transparent .tuyin .plan-name 
	{
	font-size: 20px;
	font-weight: 400;
	border-bottom: 1px solid #FFF;
	padding-bottom: 15px;
	padding: 10px
	}

.transparent .tuyin .text
	{
	margin-top: 20px; 
	color: #474747;
	font-weight: 300;
	margin-bottom: 13px; 
	font-size: 16px;
	text-align: justify;
	}

</style>
</head>
<body>
<a href="NewDelivery" class="btn btn-primary pull-right"><span
		class="glyphicon glyphicon-hand-right"></span> New Address</a>
		<br>
		<br>
		<br>
		
<div class="container">
<c:forEach items="${shippingList}" var="shipping">
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

</div>
<center><a href="deliverWho?shippingId=${shipping.shipId}" class="btn btn-warning btn-lg">
								<span class="glyphicon glyphicon-hand-down"></span> Deliver Here
							</a></center>
</c:forEach>
</div>

</body>
</html>