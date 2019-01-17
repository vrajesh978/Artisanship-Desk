<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Artisanship Desk</title>
<!--css-->
<link href="<c:url value = "/assets/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value = "/assets/css/style.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<link href="<c:url value = "/assets/css/font-awesome.css"/>"
	rel="stylesheet">
<!--css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="New Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 






















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

</head>
<body>
	<!--header-->
	<jsp:include page="header.jsp" />
	<!--header-->
	<!--banner-->
	<div class="banner1">
		<div class="container">
			<h3>
				<a href="index.html">Home</a> / <span>Mail Us</span>
			</h3>
		</div>
	</div>
	<!--banner-->
	<!--content-->
	<div class="content">
		<!--contact-->
		<div class="mail-w3ls">
			<div class="container">
				<h2 class="tittle">Mail Us</h2>
				<div class="mail-grids">
					<div class="mail-top">
						<div class="col-md-4 mail-grid">
							<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
							<h5>Address</h5>
							<p>9th floor - Palace Building -Bapunagar,ahmedabad,india</p>
						</div>
						<div class="col-md-4 mail-grid">
							<i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>
							<h5>Phone</h5>
							<p>Telephone:+91-7405235315</p>
						</div>
						<div class="col-md-4 mail-grid">
							<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
							<h5>E-mail</h5>
							<p>
								E-mail:<a href="mailto:jinaldesai@gmail.com">
									jinaldesai@gmail.com</a>
							</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="map-w3">
						<iframe width="600" height="450" frameborder="0" style="border: 0"
							src="your link to google map private key"
							allowfullscreen> </iframe>

					</div>
					<div class="mail-bottom">
						<h4>Get In Touch With Us</h4>
						<form action="#" method="post">
							<input type="text" value="Name" onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Name';}"
								required=""> <input type="email" value="Email"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Email';}"
								required=""> <input type="text" value="Telephone"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Telephone';}"
								required="">
							<textarea onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Message...';}"
								required="">Message...</textarea>
							<input type="submit" value="Submit"> <input type="reset"
								value="Clear">

						</form>
					</div>
				</div>
			</div>
		</div>
		<!--contact-->
	</div>
	<!--content-->
	<!---footer--->
	<jsp:include page="footer.jsp" />
	<!---footer--->
	<!--copy-->

	<!--copy-->
</body>
</html>
