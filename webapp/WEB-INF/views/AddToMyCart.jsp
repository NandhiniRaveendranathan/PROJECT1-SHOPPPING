<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Aclonica" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
@media only screen and (max-width: 800px) {
    
    /* Force table to not be like tables anymore */
	#no-more-tables table, 
	#no-more-tables thead, 
	#no-more-tables tbody, 
	#no-more-tables th, 
	#no-more-tables td, 
	#no-more-tables tr { 
		display: block; 
	}
 
	/* Hide table headers (but not display: none;, for accessibility) */
	#no-more-tables thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
 
	#no-more-tables tr { border: 1px solid #ccc; }
 
	#no-more-tables td { 
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
		white-space: normal;
		text-align:left;
	}
 
	#no-more-tables td:before { 
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
		text-align:left;
		font-weight: bold;
	}
 
	/*
	Label the data
	*/
	#no-more-tables td:before { content: attr(data-title); }
}
</style>
<div class="container">
    <div class="row">
        <div class="col-md-12">
        <center>  <h1>Shoppee List</h1> </center>
          <br>
          <br> 
        </div>
        <div id="no-more-tables">
            <table class="col-md-12 table-bordered table-striped table-condensed cf">
        		<thead class="cf">
        			<tr>
    <th>S.No</th>
    <th>Cart Id</th>
    <th>Customer Email</th>
     <th>Product</th>
    <th>Product Name</th>
    <th>Price</th>
    <th>Total Price</th>
    <th>Quantity</th>
    <th>Status</th>
    
    <th>Days</th>
    <th>Time</th>
    <th>Remove</th>
    
  </tr>
        		</thead>
        		<tbody>
        		<c:forEach items="${cartList}" var="cart" varStatus="status">
  <tr>
    <td>${status.count}</td>
					<td>${cart.cartId}</td>
					<td>${cart.customerEmail}</td>
					<td><img src="<c:url value="/resources/images/productImages/${cart.productId}.jpg"/>" alt="${product.productId}" width="40" height="40"></td>
					<td>${cart.productName}</td>
					<td>&#8377;${cart.productPrice}</td>
					<td>${cart.cartTotalprice}</td>
					<td>${cart.cartQuantity}</td>
					<td>${cart.cartStatus}</td>
					<td>${cart.carttDays}</td>
					<td>${cart.cartTime}</td>
					<td><a href="removeCart?cartId=${cart.cartId}">Remove</a></td>
  </tr>
  </c:forEach>
  <tr>
  <div align="right">
  <colspan="11">Grand Total : ${GrandTotal}
  </tr>
        		
        				<!-- <td data-title="Code">AAD</td>
        				<td data-title="Company">ARDENT LEISURE GROUP</td>
        				<td data-title="Price" class="numeric">$1.15</td>
        				<td data-title="Change" class="numeric">+0.02</td>
        				<td data-title="Change %" class="numeric">1.32%</td>
        				<td data-title="Open" class="numeric">$1.14</td>
        				<td data-title="High" class="numeric">$1.15</td>
        				<td data-title="Low" class="numeric">$1.13</td>
        				<td data-title="Volume" class="numeric">56,431</td>
        			</tr>  -->
        			<!-- <tr>
        				<td data-title="Code">AAX</td>
        				<td data-title="Company">AUSENCO LIMITED</td>
        				<td data-title="Price" class="numeric">$4.00</td>
        				<td data-title="Change" class="numeric">-0.04</td>
        				<td data-title="Change %" class="numeric">-0.99%</td>
        				<td data-title="Open" class="numeric">$4.01</td>
        				<td data-title="High" class="numeric">$4.05</td>
        				<td data-title="Low" class="numeric">$4.00</td>
        				<td data-title="Volume" class="numeric">90,641</td>
        			</tr>
        			<tr>
        				<td data-title="Code">ABC</td>
        				<td data-title="Company">ADELAIDE BRIGHTON LIMITED</td>
        				<td data-title="Price" class="numeric">$3.00</td>
        				<td data-title="Change" class="numeric">+0.06</td>
        				<td data-title="Change %" class="numeric">2.04%</td>
        				<td data-title="Open" class="numeric">$2.98</td>
        				<td data-title="High" class="numeric">$3.00</td>
        				<td data-title="Low" class="numeric">$2.96</td>
        				<td data-title="Volume" class="numeric">862,518</td>
        			</tr>
        			<tr>
        				<td data-title="Code">ABP</td>
        				<td data-title="Company">ABACUS PROPERTY GROUP</td>
        				<td data-title="Price" class="numeric">$1.91</td>
        				<td data-title="Change" class="numeric">0.00</td>
        				<td data-title="Change %" class="numeric">0.00%</td>
        				<td data-title="Open" class="numeric">$1.92</td>
        				<td data-title="High" class="numeric">$1.93</td>
        				<td data-title="Low" class="numeric">$1.90</td>
        				<td data-title="Volume" class="numeric">595,701</td>
        			</tr>
        			<tr>
        				<td data-title="Code">ABY</td>
        				<td data-title="Company">ADITYA BIRLA MINERALS LIMITED</td>
        				<td data-title="Price" class="numeric">$0.77</td>
        				<td data-title="Change" class="numeric">+0.02</td>
        				<td data-title="Change %" class="numeric">2.00%</td>
        				<td data-title="Open" class="numeric">$0.76</td>
        				<td data-title="High" class="numeric">$0.77</td>
        				<td data-title="Low" class="numeric">$0.76</td>
        				<td data-title="Volume" class="numeric">54,567</td>
        			</tr>
        			<tr>
        				<td data-title="Code">ACR</td>
        				<td data-title="Company">ACRUX LIMITED</td>
        				<td data-title="Price" class="numeric">$3.71</td>
        				<td data-title="Change" class="numeric">+0.01</td>
        				<td data-title="Change %" class="numeric">0.14%</td>
        				<td data-title="Open" class="numeric">$3.70</td>
        				<td data-title="High" class="numeric">$3.72</td>
        				<td data-title="Low" class="numeric">$3.68</td>
        				<td data-title="Volume" class="numeric">191,373</td>
        			</tr>
        			<tr>
        				<td data-title="Code">ADU</td>
        				<td data-title="Company">ADAMUS RESOURCES LIMITED</td>
        				<td data-title="Price" class="numeric">$0.72</td>
        				<td data-title="Change" class="numeric">0.00</td>
        				<td data-title="Change %" class="numeric">0.00%</td>
        				<td data-title="Open" class="numeric">$0.73</td>
        				<td data-title="High" class="numeric">$0.74</td>
        				<td data-title="Low" class="numeric">$0.72</td>
        				<td data-title="Volume" class="numeric">8,602,291</td>
        			</tr>
        			<tr>
        				<td data-title="Code">AGG</td>
        				<td data-title="Company">ANGLOGOLD ASHANTI LIMITED</td>
        				<td data-title="Price" class="numeric">$7.81</td>
        				<td data-title="Change" class="numeric">-0.22</td>
        				<td data-title="Change %" class="numeric">-2.74%</td>
        				<td data-title="Open" class="numeric">$7.82</td>
        				<td data-title="High" class="numeric">$7.82</td>
        				<td data-title="Low" class="numeric">$7.81</td>
        				<td data-title="Volume" class="numeric">148</td>
        			</tr>
        			<tr>
        				<td data-title="Code">AGK</td>
        				<td data-title="Company">AGL ENERGY LIMITED</td>
        				<td data-title="Price" class="numeric">$13.82</td>
        				<td data-title="Change" class="numeric">+0.02</td>
        				<td data-title="Change %" class="numeric">0.14%</td>
        				<td data-title="Open" class="numeric">$13.83</td>
        				<td data-title="High" class="numeric">$13.83</td>
        				<td data-title="Low" class="numeric">$13.67</td>
        				<td data-title="Volume" class="numeric">846,403</td>
        			</tr>
        			<tr>
        				<td data-title="Code">AGO</td>
        				<td data-title="Company">ATLAS IRON LIMITED</td>
        				<td data-title="Price" class="numeric">$3.17</td>
        				<td data-title="Change" class="numeric">-0.02</td>
        				<td data-title="Change %" class="numeric">-0.47%</td>
        				<td data-title="Open" class="numeric">$3.11</td>
        				<td data-title="High" class="numeric">$3.22</td>
        				<td data-title="Low" class="numeric">$3.10</td>
        				<td data-title="Volume" class="numeric">5,416,303</td>
        			</tr> -->
        		</tbody>
        	</table>
        </div>
    </div>
   <!--  <div class="row">
        <p class="bg-success" style="padding:10px;margin-top:20px"><a href="http://elvery.net/demo/responsive-tables/#no-more-tables" target="_blank">
    </div> -->
</div>
<p>
		<a href="shippTheItems"><button align="right"
				class="btn btn-primary">ShippTheItems</button></a>
		<a href ="afterlogin"class="btn btn-primary pull-right"">Continue Shopping</a>
				
	</p>
</head>
<body>

</body>
</html>