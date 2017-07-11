<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Aclonica" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
..invoice-title h2, .invoice-title h3 {
    display: inline-block;
}

.table > tbody > tr > .no-line {
    border-top: none;
}

.table > thead > tr > .no-line {
    border-bottom: none;
}

.table > tbody > tr > .thick-line {
    border-top: 2px solid;
}

</style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h2>Invoice</h2><h3 class="pull-right">Order # 12345</h3>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    				<strong>Billed To:</strong><br>
    					Name: ${ship.customerName}<br>
Mobile: ${ship.customerPhone}<br>
Address: ${ship.customerAddress}<br>
ZIP: ${ship.customerZIP}<br>
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    				<strong>Shipped To:</strong><br>
        							
Name: ${ship.customerName}<br>
Mobile: ${ship.customerPhone}<br>
Address: ${ship.customerAddress}<br>
ZIP: ${ship.customerZIP}<br>
    				</address>
    			</div>
    		</div>
    		<!-- <div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong>Payment Method:</strong><br>
    					Visa ending **** 4242<br>
    					jsmith@email.com
    				</address>
    			</div> -->
    			<!-- <div class="col-xs-6 text-right">
    				<address>
    					<strong>Order Date:</strong><br>
    					March 7, 2014<br><br>
    				</address>
    			</div> -->
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<tr>
    <th>S.No</th>
    
    
    <th>Product Name</th>
    <th>Price</th>
    <th>Total Price</th>
    <th>Quantity</th>
    
    
  </tr>
  <c:forEach items="${cartList}" var="cart" varStatus="status">
				<tr>
					<td>${status.count}</td>
					
					
					
					<td>${cart.productName}</td>
					<td>&#8377;${cart.productPrice}</td>
					<td>${cart.cartTotalprice}</td>
					<td>${cart.cartQuantity}</td>
					
					
					
					
				</tr>
			</c:forEach>
   <tr> <td colspan="11"> Grand Total : &#8377; ${GrandTotal}</td></tr>    						
    					</table>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
</div>
<a href="YetToCome" class="btn btn-primary pull-left "><font face="verdana" size="20">Thank U for Shopping</a>
</body>
</html>