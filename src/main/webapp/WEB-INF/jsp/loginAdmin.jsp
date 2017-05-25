<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Login</title>
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
<!-- form validator js -->
<script type="text/javascript"
	src="<c:url value = "/assets/js/validator.js"/>"></script>
<!-- form validator js -->
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
</head>
<body>


	<!--content-->
	<div class="content">
		<!--login-->
		<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile">
					<h3>Login To AdminPanel</h3>
					<form:form name="loginform" action="validate.html" method="post"
						modelAttribute="clientForm" onsubmit="return validateLoginForm">
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<form:input path="email" type="text" placeholder="Email"
								onfocus="this.value = '';" required="true" id="email" />
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<form:input path="password" type="password"
								placeholder="Password" name="Password"
								onfocus="this.value = '';" required="true" id="password" />
							<div class="clearfix"></div>
						</div>
						<center>
							<input type="submit" value="Login"
								onclick="return validateLoginForm()">
						</center>
					</form:form>
				</div>

			</div>
		</div>
		<!--login-->
	</div>
	<!--content-->


</body>
</html>