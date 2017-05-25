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

<!--//End-rate-->
</head>
<body>
	<jsp:include page="header.jsp" />
	<form:form method="POST" modelAttribute="cartForm"
		action="${pageContext.request.contextPath}/shoppingCart.html">

		<c:forEach items="${cartForm.cartLines}" var="cartLineInfo"
			varStatus="varStatus">
			<div class="product-preview-container">
				<ul>

					<li><img class="product-image"
						src="${pageContext.request.contextPath}/admin/productImage.html?code=${cartLineInfo.productInfo.code}" />
					</li>
					<li>Code: ${cartLineInfo.productInfo.code} <form:hidden
							path="cartLines[${varStatus.index}].productInfo.code" />

					</li>
					<li>Name: ${cartLineInfo.productInfo.name}</li>
					<li>Price: <span class="price"> <fmt:formatNumber
								value="${cartLineInfo.productInfo.price}" type="currency" />

					</span></li>
					<li>Quantity: ${cartLineInfo.quantity}</li>
					<li>Subtotal: <span class="subtotal"> <fmt:formatNumber
								value="${cartLineInfo.amount}" type="currency" />

					</span>
					</li>
					<li><a
						href="${pageContext.request.contextPath}/shoppingCartRemoveProduct.html?code=${cartLineInfo.productInfo.code}">
							Delete </a></li>
				</ul>
			</div>
		</c:forEach>
		<div style="clear: both"></div>
		<input class="button-update-sc" type="submit" value="Update Quantity" />
		<a class="navi-item"
			href="${pageContext.request.contextPath}/shoppingCartCustomer.html">Enter
			Customer Info</a>
		<a class="navi-item"
			href="${pageContext.request.contextPath}/viewProducts.html">Continue
			Buy</a>
	</form:form>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>