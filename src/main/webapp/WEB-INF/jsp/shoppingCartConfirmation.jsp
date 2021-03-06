<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>ShoppingCart</title>
<!--css-->
<link href="<c:url value ="/assets/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value = "/assets/css/style.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<link href="<c:url value = "/assets/css/font-awesome.css"/>"
	rel="stylesheet">
<link href="<c:url value = "/assets/css/productList.css"/>"
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
<script src="<c:url value = "/assets/js/responsiveslides.min.js"/>"></script>
<script>
	$(function() {
		$("#slider").responsiveSlides({
			auto : true,
			nav : true,
			speed : 1000,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>
<!--mycart-->
<script type="text/javascript"
	src="<c:url value = "/assets/js/bootstrap-3.1.1.min.js"/>"></script>
<!-- cart -->
<script src="<c:url value = "/assets/js/simpleCart.min.js"/>"></script>
<!-- cart -->
<!--start-rate-->
<script src="<c:url value = "/assets/js/jstarbox.js"/>"></script>
<link rel="stylesheet"
	href="<c:url value = "/assets/css/jstarbox.css"/>" type="text/css"
	media="screen" charset="utf-8" />
<script type="text/javascript">
	jQuery(function() {
		jQuery('.starbox')
				.each(
						function() {
							var starbox = jQuery(this);
							starbox
									.starbox(
											{
												average : starbox
														.attr('data-start-value'),
												changeable : starbox
														.hasClass('unchangeable') ? false
														: starbox
																.hasClass('clickonce') ? 'once'
																: true,
												ghosting : starbox
														.hasClass('ghosting'),
												autoUpdateAverage : starbox
														.hasClass('autoupdate'),
												buttons : starbox
														.hasClass('smooth') ? false
														: starbox
																.attr('data-button-count') || 5,
												stars : starbox
														.attr('data-star-count') || 5
											})
									.bind(
											'starbox-value-changed',
											function(event, value) {
												if (starbox.hasClass('random')) {
													var val = Math.random();
													starbox.next().text(
															' ' + val);
													return val;
												}
											})
						});
	});
</script>
<!--//End-rate-->
</head>
<body>
	<jsp:include page="header.jsp" />
	 
	<div class="customer-info-container">
		      
		<h3>Customer Information:</h3>
		      
		<ul>
			          
			<li>Name: ${myCart.customerInfo.name}</li>           
			<li>Email: ${myCart.customerInfo.email}</li>           
			<li>Phone: ${myCart.customerInfo.phone}</li>           
			<li>Address: ${myCart.customerInfo.address}</li>       
		</ul>
		      
		<h3>Cart Summary:</h3>
		      
		<ul>
			          
			<li>Quantity: ${myCart.quantityTotal}</li>           
			<li>Total:           <span class="total">             <fmt:formatNumber
						value="${myCart.amountTotal}" type="currency" />           
			</span></li>       
		</ul>
		  
	</div>
	    
	<form method="POST"
		      action="${pageContext.request.contextPath}/shoppingCartConfirmation.html">
		        
		<!-- Edit Cart -->
		      <a class="navi-item"
			          href="${pageContext.request.contextPath}/shoppingCart.html">Edit
			Cart</a>         
		<!-- Edit Customer Info -->
		      <a class="navi-item"
			          href="${pageContext.request.contextPath}/shoppingCartCustomer.html">Edit
			          Customer Info</a>         
		<!-- Send/Save -->
		      <input type="submit" value="Send" class="button-send-sc" />   
	</form>
	    
	<div class="container">
		        
		<c:forEach items="${myCart.cartLines}" var="cartLineInfo">
          <div class="product-preview-container">
				              
				<ul>
					                  
					<li><img class="product-image"
						                      src="${pageContext.request.contextPath}/admin/productImage.html?code=${cartLineInfo.productInfo.code}" /></li>
					                  
					<li>Code: ${cartLineInfo.productInfo.code} <input
						                      type="hidden" name="code"
						value="${cartLineInfo.productInfo.code}" />                   
					</li>                   
					<li>Name: ${cartLineInfo.productInfo.name}</li>                   
					<li>Price: <span class="price">                      <fmt:formatNumber
								value="${cartLineInfo.productInfo.price}" type="currency" />
							                  
					</span>                   
					</li>                   
					<li>Quantity: ${cartLineInfo.quantity}</li>                   
					<li>Subtotal:                     <span class="subtotal">
							                       <fmt:formatNumber
								value="${cartLineInfo.amount}" type="currency" />
							                    
					</span>                   
					</li>               
				</ul>
				          
			</div>
      </c:forEach>
		    
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>