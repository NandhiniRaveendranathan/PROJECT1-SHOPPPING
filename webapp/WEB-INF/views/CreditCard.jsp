<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
<title>Insert title here</title>
<script>
	function formCC() {
		var cname = document.getElementById('cname');
		var cexp = document.getElementById('cexp');
		var cvc = document.getElementById('cvc');
		if (Credit(cname, " Enter a valid 16 digit number")) {
			if (isNumeric(cname, "Please enter only numbers")) {
				if (isAlphanumeric(cexp,
						"Please enter vali date of expiry in suggested format")) {
					if (Cvc(cvc, " Enter a valid 3 digit number")) {
						if (isNumeric(cvc, "Please enter only numbers")) {
							return true;
						}
					}
				}
			}
		}
		return false;
	}
	function Credit(elem, helperMsg) {
		if (elem.value.length != 16) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
	function Cvc(elem, helperMsg) {
		if (elem.value.length != 3) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z\.\-]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
</script>




</head>
<body>
	<form action="billingpage" class="payment" method="post"
		onsubmit="return formCC()">
<div class="container">
	<div class="row-fluid">
      <form class="form-horizontal">
        <fieldset>
          <div id="legend">
            <legend class="">Payment</legend>
          </div>
     
          <!-- Name -->
          <div class="control-group">
            <label class="control-label"  for="username">Card Holder's Name</label>
            <div class="controls">
              <input type="text" id="username" name="username" placeholder="" class="input-xlarge">
            </div>
          </div>
     
          <!-- Card Number -->
          <div class="control-group">
            <label class="control-label" for="email">Card Number</label>
            <div class="controls">
              <input type="text" id="email" name="email" placeholder="" class="input-xlarge">
            </div>
          </div>
     
          <!-- Expiry-->
          <div class="control-group">
            <label class="control-label" for="password">Card Expiry Date</label>
            <div class="controls">
              <select class="span3" name="expiry_month" id="expiry_month">
                <option></option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>1
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select>
              <select class="span2" name="expiry_year">
                <option value="13">2013</option>
                <option value="14">2014</option>
                <option value="15">2015</option>
                <option value="16">2016</option>
                <option value="17">2017</option>
                <option value="18">2018</option>
                <option value="19">2019</option>
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select>
            </div>
          </div>
     
          <!-- CVV -->
          <div class="control-group">
            <label class="control-label"  for="password_confirm">Card CVV</label>
            <div class="controls">
              <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="span2">
            </div>
          </div>
     
          <!-- Save card -->
          <div class="control-group">
            <div class="controls">
              <label class="checkbox" for="save_card">
                <input type="checkbox" id="save_card" value="option1">
                Save card on file?
              </label>
            </div>
          </div>
     
          <!-- Submit -->
          <div class="control-group">
            <div class="controls">
              <button class="btn btn-success">Pay Now</button>
            </div>
          </div>
     
        </fieldset>
      </form>
    </div>
</div>
</body>
</html>