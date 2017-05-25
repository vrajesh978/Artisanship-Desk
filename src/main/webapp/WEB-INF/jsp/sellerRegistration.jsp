<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Registration</title>
<!--css-->
<link href="<c:url value = "/assets/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value = "/assets/css/style.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<!--css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="New Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); functionhideURLbar(){ window.scrollTo(0,1); } 









































</script>
<script src="<c:url value = "/assets/js/jquery.min.js"/>"></script>
<link href='//fonts.googleapis.com/css?family=Cagliostro'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300'
	rel='stylesheet' type='text/css'>
<!--search jQuery-->
<script src="<c:url value = "/assets/js/main.js"/>"></script>
<!--search jQuery-->

<!--mycart-->
<script type="text/javascript"
	src="<c:url value = "/assets/js/bootstrap-3.1.1.min.js"/>"></script>
<!-- cart -->
<script src="<c:url value = "/assets/js/simpleCart.min.js"/>"></script>
<!-- cart -->
<!-- form validator js -->
<script type="text/javascript"
	src="<c:url value = "/assets/js/validator.js"/>"></script>
<!-- form validator js -->
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!--banner-->
	<div class="banner1">
		<div class="container">
			<h3>
				<a href="index.html">Home</a> / <span>Registered</span>
			</h3>
		</div>
	</div>
	<!--banner-->

	<!--content-->
	<div class="content">
		<!--login-->
		<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Register</h3>
					<form:form name="registration" action="save.html" method="post"
						modelAttribute="clientForm">
						<form:hidden path="id" />
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<form:input type="text" path="firstName"
								placeholder="Enter First name" onfocus="this.value = '';"
								required="true" />
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<form:input type="text" path="lastName"
								placeholder="Enter last name" onfocus="this.value = '';"
								required="true" />
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<form:input type="text" path="userName" placeholder="Username"
								onfocus="this.value = '';" required="true" id="userName" />
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<form:input type="text" path="email" placeholder="Email"
								onfocus="this.value = '';" required="true" id="email" />
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<form:input type="password" path="password"
								placeholder="Password" id="password" onfocus="this.value = '';"
								required="true" />
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<form:input type="password" path=""
								placeholder="Confirm Password" id="rpwd"
								onfocus="this.value = '';" required="true" />
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<form:input type="text" path="phoneNo"
								placeholder="Enter Mobile no" onfocus="this.value = '';"
								required="true" />
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<form:input type="text" path="address"
								placeholder="Enter full address" onfocus="this.value = '';"
								required="true" />
							<div class="clearfix"></div>
						</div>
						<input type="submit" value="Registration" id="submit">
						<a href="login.html">Already registered with us</a>
					</form:form>
				</div>

			</div>
		</div>
		<!--login-->
	</div>
	<!--content-->
	<jsp:include page="footer.jsp" />



</body>
</html>