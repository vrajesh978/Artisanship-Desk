<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Artisanship Desk</title>
<!--css-->
<link href="<c:url value ="/assets/css/bootstrap.css"/>"
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
	<!--banner-->
	<div class="banner-w3">
		<div class="demo-1">
			<div id="example1"
				class="core-slider core-slider__carousel example_1">
				<div class="core-slider_viewport">
					<div class="core-slider_list">
						<div class="core-slider_item">
							<img src="<c:url value = "/assets/images/b1.jpg"/>"
								class="img-responsive" alt="">
						</div>
						<div class="core-slider_item">
							<img src="<c:url value = "/assets/images/b2.jpg"/>"
								class="img-responsive" alt="">
						</div>
						<div class="core-slider_item">
							<img src="<c:url value = "/assets/images/b3.jpg"/>"
								class="img-responsive" alt="">
						</div>
						<div class="core-slider_item">
							<img src="<c:url value = "/assets/images/b4.jpg"/>"
								class="img-responsive" alt="">
						</div>
					</div>
				</div>
				<div class="core-slider_nav">
					<div class="core-slider_arrow core-slider_arrow__right"></div>
					<div class="core-slider_arrow core-slider_arrow__left"></div>
				</div>
				<div class="core-slider_control-nav"></div>
			</div>
		</div>
		<link href="<c:url value = "/assets/css/coreSlider.css"/>"
			rel="stylesheet" type="text/css">
		<script src="<c:url value = "/assets/js/coreSlider.js"/>"></script>
		<script>
			$('#example1').coreSlider({
				pauseOnHover : false,
				interval : 3000,
				controlNavEnabled : true
			});
		</script>

	</div>
	<!--banner-->
	<!--content-->
	<div class="content">
		<!--banner-bottom-->
		<div class="ban-bottom-w3l">
			<div class="container">
				<div class="col-md-6 ban-bottom">
					<div class="ban-top">
						<img src="<c:url value = "/assets/images/P1.jpg"/>"
							class="img-responsive" alt="" />
						<div class="ban-text">
							<h4>Men’s Clothing</h4>
						</div>
						<div class="ban-text2 hvr-sweep-to-top">
							<h4>
								50% <span>Off/-</span>
							</h4>
						</div>
					</div>
				</div>
				<div class="col-md-6 ban-bottom3">
					<div class="ban-top">
						<img src="<c:url value = "/assets/images/p2.jpg"/>"
							class="img-responsive" alt="" />
						<div class="ban-text1">
							<h4>Clothing</h4>
						</div>
					</div>
					<div class="ban-img">
						<div class=" ban-bottom1">
							<div class="ban-top">
								<img src="<c:url value = "/assets/images/p3.jpg"/>"
									class="img-responsive" alt="" />
								<div class="ban-text1">
									<h4>T - Shirt</h4>
								</div>
							</div>
						</div>
						<div class="ban-bottom2">
							<div class="ban-top">
								<img src="<c:url value = "/assets/images/p4.jpg"/>"
									class="img-responsive" alt="" />
								<div class="ban-text1">
									<h4>Hand Bag</h4>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--banner-bottom-->
		<!--new-arrivals-->
		<div class="new-arrivals-w3agile">
			<div class="container">
				<h2 class="tittle">New Arrivals</h2>
				<div class="arrivals-grids">
					<c:set var="total" value="${0}" />
					<c:forEach items="${products}" var="prodInfo" begin="0" end="11">
						<div class="col-md-3 arrival-grid simpleCart_shelfItem">
							<div class="grid-arr">
								<div class="grid-arrival">
									<figure>
										<a href="#" class="new-gri" data-toggle="modal"
											data-target="#myModal1">
											<div class="grid-img">
												<img
													src="${pageContext.request.contextPath}/admin/productImage.html?code=${prodInfo.code}"
													style="width: 200px; height: 200px" class="img-responsive"
													alt="">
											</div>
											<div class="grid-img">
												<img
													src="${pageContext.request.contextPath}/admin/productImage.html?code=${prodInfo.code}"
													class="img-responsive" alt="">
											</div>
										</a>
									</figure>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
								<div class="ribben1">
									<p>SALE</p>
								</div>
								<div class="block">
									<div class="starbox small ghosting"></div>
								</div>
								<div class="women">
									<h6>
										<a href="single.html">${prodInfo.name }</a>
									</h6>
									<span class="size">XL / XXL / S </span>
									<p>
										<em class="item_price"><fmt:formatNumber
												value="${prodInfo.price}" type="currency" /></em>
									</p>
									<a
										href="${pageContext.request.contextPath}/buyProduct.html?code=${prodInfo.code}"
										data-text="Add To Cart" class="my-cart-b item_add">Add To
										Cart</a>
								</div>
							</div>
						</div>
						<c:set var="total" value="${total + 1}" />
					</c:forEach>
					<!-- 					<div class="col-md-3 arrival-grid simpleCart_shelfItem"> -->
					<!-- 						<div class="grid-arr"> -->
					<!-- 							<div class="grid-arrival"> -->
					<!-- 								<figure> -->
					<!-- 									<a href="#" class="new-gri" data-toggle="modal" -->
					<!-- 										data-target="#myModal2"> -->
					<!-- 										<div class="grid-img"> -->
					<%-- 											<img src="<c:url value = "/assets/images/p7.jpg"/>" --%>
					<!-- 												class="img-responsive" alt=""> -->
					<!-- 										</div> -->
					<!-- 										<div class="grid-img"> -->
					<%-- 											<img src="<c:url value = "/assets/images/p8.jpg"/>" --%>
					<!-- 												class="img-responsive" alt=""> -->
					<!-- 										</div> -->
					<!-- 									</a> -->
					<!-- 								</figure> -->
					<!-- 							</div> -->
					<!-- 							<div class="ribben2"> -->
					<!-- 								<p>Box</p> -->
					<!-- 							</div> -->
					<!-- 							<div class="block"> -->
					<!-- 								<div class="starbox small ghosting"></div> -->
					<!-- 							</div> -->
					<!-- 							<div class="women"> -->
					<!-- 								<h6> -->
					<!-- 									<a href="single.html">Sed ut perspiciatis unde</a> -->
					<!-- 								</h6> -->
					<!-- 								<span class="size">XL / XXL / S </span> -->
					<!-- 								<p> -->
					<!-- 									<del>$100.00</del> -->
					<!-- 									<em class="item_price">$70.00</em> -->
					<!-- 								</p> -->
					<!-- 								<a href="#" data-text="Add To Cart" class=" my-cart-b item_add">Add -->
					<!-- 									To Cart</a> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
					<!-- 					<div class="col-md-3 arrival-grid simpleCart_shelfItem"> -->
					<!-- 						<div class="grid-arr"> -->
					<!-- 							<div class="grid-arrival"> -->
					<!-- 								<figure> -->
					<!-- 									<a href="#" class="new-gri" data-toggle="modal" -->
					<!-- 										data-target="#myModal3"> -->
					<!-- 										<div class="grid-img"> -->
					<%-- 											<img src="<c:url value = "/assets/images/p10.jpg"/>" --%>
					<!-- 												class="img-responsive" alt=""> -->
					<!-- 										</div> -->
					<!-- 										<div class="grid-img"> -->
					<%-- 											<img src="<c:url value = "/assets/images/p9.jpg"/>" --%>
					<!-- 												class="img-responsive" alt=""> -->
					<!-- 										</div> -->
					<!-- 									</a> -->
					<!-- 								</figure> -->
					<!-- 							</div> -->
					<!-- 							<div class="ribben1"> -->
					<!-- 								<p>SALE</p> -->
					<!-- 							</div> -->
					<!-- 							<div class="block"> -->
					<!-- 								<div class="starbox small ghosting"></div> -->
					<!-- 							</div> -->
					<!-- 							<div class="women"> -->
					<!-- 								<h6> -->
					<!-- 									<a href="single.html">Sed ut perspiciatis unde</a> -->
					<!-- 								</h6> -->
					<!-- 								<span class="size">XL / XXL / S </span> -->
					<!-- 								<p> -->
					<!-- 									<del>$100.00</del> -->
					<!-- 									<em class="item_price">$70.00</em> -->
					<!-- 								</p> -->
					<!-- 								<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add -->
					<!-- 									To Cart</a> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
					<!-- 					<div class="col-md-3 arrival-grid simpleCart_shelfItem"> -->
					<!-- 						<div class="grid-arr"> -->
					<!-- 							<div class="grid-arrival"> -->
					<!-- 								<figure> -->
					<!-- 									<a href="#" class="new-gri" data-toggle="modal" -->
					<!-- 										data-target="#myModal4"> -->
					<!-- 										<div class="grid-img"> -->
					<%-- 											<img src="<c:url value = "/assets/images/p11.jpg"/>" --%>
					<!-- 												class="img-responsive" alt=""> -->
					<!-- 										</div> -->
					<!-- 										<div class="grid-img"> -->
					<%-- 											<img src="<c:url value = "/assets/images/p12.jpg"/>" --%>
					<!-- 												class="img-responsive" alt=""> -->
					<!-- 										</div> -->
					<!-- 									</a> -->
					<!-- 								</figure> -->
					<!-- 							</div> -->
					<!-- 							<div class="block"> -->
					<!-- 								<div class="starbox small ghosting"></div> -->
					<!-- 							</div> -->
					<!-- 							<div class="women"> -->
					<!-- 								<h6> -->
					<!-- 									<a href="single.html">Sed ut perspiciatis unde</a> -->
					<!-- 								</h6> -->
					<!-- 								<span class="size">XL / XXL / S </span> -->
					<!-- 								<p> -->
					<!-- 									<del>$100.00</del> -->
					<!-- 									<em class="item_price">$70.00</em> -->
					<!-- 								</p> -->
					<!-- 								<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add -->
					<!-- 									To Cart</a> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--new-arrivals-->
		<!--accessories-->
		<div class="accessories-w3l">
			<div class="container">
				<h3 class="tittle">20% Discount on</h3>
				<span>TRENDING DESIGNS</span>
				<div class="button">
					<a href="#" class="button1"> Shop Now</a> <a href="#"
						class="button1"> Quick View</a>
				</div>
			</div>
		</div>
		<!--accessories-->
		<!--Products-->
		<!-- 		<div class="product-agile"> -->
		<!-- 			<div class="container"> -->
		<!-- 				<h3 class="tittle1">New Products</h3> -->
		<!-- 				<div class="slider"> -->
		<!-- 					<div class="callbacks_container"> -->
		<!-- 						<ul class="rslides" id="slider"> -->
		<!-- 							<li> -->
		<!-- 								<div class="caption"> -->

		<%-- 									<c:forEach items="${products}" var="prodInfo" varStatus="i" --%>
		<%-- 										begin="1" end="4"> --%>
		<!-- 										<div class="col-md-3 cap-left simpleCart_shelfItem"> -->
		<!-- 											<div class="grid-arr"> -->
		<!-- 												<div class="grid-arrival"> -->
		<!-- 													<figure> -->
		<!-- 														<a href="single.html"> -->
		<!-- 															<div class="grid-img"> -->
		<!-- 																<img -->
		<%-- 																	src="${pageContext.request.contextPath}/admin/productImage.html?code=${prodInfo[i.index].code}" --%>
		<!-- 																	"class="img-responsive" alt=""> -->
		<!-- 															</div> -->
		<!-- 															<div class="grid-img"> -->
		<%-- 																<img src="<c:url value = "/assets/images/p13.jpg"/>" --%>
		<!-- 																	class="img-responsive" alt=""> -->
		<!-- 															</div> -->
		<!-- 														</a> -->
		<!-- 													</figure> -->
		<!-- 												</div> -->
		<!-- 												<div class="block"> -->
		<!-- 													<div class="starbox small ghosting"></div> -->
		<!-- 												</div> -->
		<!-- 												<div class="women"> -->
		<!-- 													<h6> -->
		<%-- 														<a href="single.html">${prodInfo[i.index].name}</a> --%>
		<!-- 													</h6> -->
		<!-- 													<span class="size">XL / XXL / S </span> -->
		<!-- 													<p> -->

		<%-- 														<em class="item_price"><fmt:formatNumber --%>
		<%-- 																value="${prodInfo[i.index].price}" type="currency" /></em> --%>
		<!-- 													</p> -->
		<!-- 													<a -->
		<%-- 														href="${pageContext.request.contextPath}/buyProduct.html?code=${prodInfo[i.index].code}" --%>
		<!-- 														data-text="Add To Cart" class="my-cart-b item_add">Add -->
		<!-- 														To Cart</a> -->
		<!-- 												</div> -->
		<!-- 											</div> -->
		<!-- 										</div> -->
		<%-- 										<c:set var="total" value="${total + 1}" /> --%>
		<%-- 									</c:forEach> --%>
		<!-- 									<div class="col-md-3 cap-left simpleCart_shelfItem"> -->
		<!-- 										<div class="grid-arr"> -->
		<!-- 											<div class="grid-arrival"> -->
		<!-- 												<figure> -->
		<!-- 													<a href="single.html"> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p15.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p16.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 													</a> -->
		<!-- 												</figure> -->
		<!-- 											</div> -->
		<!-- 											<div class="ribben"> -->
		<!-- 												<p>NEW</p> -->
		<!-- 											</div> -->
		<!-- 											<div class="block"> -->
		<!-- 												<div class="starbox small ghosting"></div> -->
		<!-- 											</div> -->
		<!-- 											<div class="women"> -->
		<!-- 												<h6> -->
		<!-- 													<a href="single.html">Sed ut perspiciatis unde</a> -->
		<!-- 												</h6> -->
		<!-- 												<span class="size">XL / XXL / S </span> -->
		<!-- 												<p> -->
		<!-- 													<del>$100.00</del> -->
		<!-- 													<em class="item_price">$70.00</em> -->
		<!-- 												</p> -->
		<!-- 												<a href="#" data-text="Add To Cart" -->
		<!-- 													class="my-cart-b item_add">Add To Cart</a> -->
		<!-- 											</div> -->
		<!-- 										</div> -->
		<!-- 									</div> -->
		<!-- 									<div class="col-md-3 cap-left simpleCart_shelfItem"> -->
		<!-- 										<div class="grid-arr"> -->
		<!-- 											<div class="grid-arrival"> -->
		<!-- 												<figure> -->
		<!-- 													<a href="single.html"> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p18.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p17.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 													</a> -->
		<!-- 												</figure> -->
		<!-- 											</div> -->
		<!-- 											<div class="ribben1"> -->
		<!-- 												<p>SALE</p> -->
		<!-- 											</div> -->
		<!-- 											<div class="block"> -->
		<!-- 												<div class="starbox small ghosting"></div> -->
		<!-- 											</div> -->
		<!-- 											<div class="women"> -->
		<!-- 												<h6> -->
		<!-- 													<a href="single.html">Sed ut perspiciatis unde</a> -->
		<!-- 												</h6> -->
		<!-- 												<span class="size">XL / XXL / S </span> -->
		<!-- 												<p> -->
		<!-- 													<del>$100.00</del> -->
		<!-- 													<em class="item_price">$70.00</em> -->
		<!-- 												</p> -->
		<!-- 												<a href="#" data-text="Add To Cart" -->
		<!-- 													class="my-cart-b item_add">Add To Cart</a> -->
		<!-- 											</div> -->
		<!-- 										</div> -->
		<!-- 									</div> -->
		<!-- 									<div class="col-md-3 cap-left simpleCart_shelfItem"> -->
		<!-- 										<div class="grid-arr"> -->
		<!-- 											<div class="grid-arrival"> -->
		<!-- 												<figure> -->
		<!-- 													<a href="single.html"> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p20.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p19.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 													</a> -->
		<!-- 												</figure> -->
		<!-- 											</div> -->
		<!-- 											<div class="ribben"> -->
		<!-- 												<p>-20%</p> -->
		<!-- 											</div> -->
		<!-- 											<div class="block"> -->
		<!-- 												<div class="starbox small ghosting"></div> -->
		<!-- 											</div> -->
		<!-- 											<div class="women"> -->
		<!-- 												<h6> -->
		<!-- 													<a href="single.html">Sed ut perspiciatis unde</a> -->
		<!-- 												</h6> -->
		<!-- 												<span class="size">XL / XXL / S </span> -->
		<!-- 												<p> -->
		<!-- 													<del>$100.00</del> -->
		<!-- 													<em class="item_price">$70.00</em> -->
		<!-- 												</p> -->
		<!-- 												<a href="#" data-text="Add To Cart" -->
		<!-- 													class="my-cart-b item_add">Add To Cart</a> -->
		<!-- 											</div> -->
		<!-- 										</div> -->
		<!-- 									</div> -->
		<!-- 									<div class="clearfix"></div> -->
		<!-- 								</div> -->
		<!-- 							</li> -->
		<!-- 							<li> -->
		<!-- 								<div class="caption"> -->
		<!-- 									<div class="col-md-3 cap-left simpleCart_shelfItem"> -->
		<!-- 										<div class="grid-arr"> -->
		<!-- 											<div class="grid-arrival"> -->
		<!-- 												<figure> -->
		<!-- 													<a href="single.html"> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p21.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p22.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 													</a> -->
		<!-- 												</figure> -->
		<!-- 											</div> -->
		<!-- 											<div class="block"> -->
		<!-- 												<div class="starbox small ghosting"></div> -->
		<!-- 											</div> -->
		<!-- 											<div class="women"> -->
		<!-- 												<h6> -->
		<!-- 													<a href="single.html">Sed ut perspiciatis unde</a> -->
		<!-- 												</h6> -->
		<!-- 												<span class="size">XL / XXL / S </span> -->
		<!-- 												<p> -->
		<!-- 													<del>$100.00</del> -->
		<!-- 													<em class="item_price">$70.00</em> -->
		<!-- 												</p> -->
		<!-- 												<a href="#" data-text="Add To Cart" -->
		<!-- 													class="my-cart-b item_add">Add To Cart</a> -->
		<!-- 											</div> -->
		<!-- 										</div> -->
		<!-- 									</div> -->
		<!-- 									<div class="col-md-3 cap-left simpleCart_shelfItem"> -->
		<!-- 										<div class="grid-arr"> -->
		<!-- 											<div class="grid-arrival"> -->
		<!-- 												<figure> -->
		<!-- 													<a href="single.html"> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p24.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p23.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 													</a> -->
		<!-- 												</figure> -->
		<!-- 											</div> -->
		<!-- 											<div class="ribben"> -->
		<!-- 												<p>NEW</p> -->
		<!-- 											</div> -->
		<!-- 											<div class="block"> -->
		<!-- 												<div class="starbox small ghosting"></div> -->
		<!-- 											</div> -->
		<!-- 											<div class="women"> -->
		<!-- 												<h6> -->
		<!-- 													<a href="single.html">Sed ut perspiciatis unde</a> -->
		<!-- 												</h6> -->
		<!-- 												<span class="size">XL / XXL / S </span> -->
		<!-- 												<p> -->
		<!-- 													<del>$100.00</del> -->
		<!-- 													<em class="item_price">$70.00</em> -->
		<!-- 												</p> -->
		<!-- 												<a href="#" data-text="Add To Cart" -->
		<!-- 													class="my-cart-b item_add">Add To Cart</a> -->
		<!-- 											</div> -->
		<!-- 										</div> -->
		<!-- 									</div> -->
		<!-- 									<div class="col-md-3 cap-left simpleCart_shelfItem"> -->
		<!-- 										<div class="grid-arr"> -->
		<!-- 											<div class="grid-arrival"> -->
		<!-- 												<figure> -->
		<!-- 													<a href="single.html"> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p26.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p25.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 													</a> -->
		<!-- 												</figure> -->
		<!-- 											</div> -->
		<!-- 											<div class="ribben"> -->
		<!-- 												<p>-75%</p> -->
		<!-- 											</div> -->
		<!-- 											<div class="block"> -->
		<!-- 												<div class="starbox small ghosting"></div> -->
		<!-- 											</div> -->
		<!-- 											<div class="women"> -->
		<!-- 												<h6> -->
		<!-- 													<a href="single.html">Sed ut perspiciatis unde</a> -->
		<!-- 												</h6> -->
		<!-- 												<span class="size">XL / XXL / S </span> -->
		<!-- 												<p> -->
		<!-- 													<del>$100.00</del> -->
		<!-- 													<em class="item_price">$70.00</em> -->
		<!-- 												</p> -->
		<!-- 												<a href="#" data-text="Add To Cart" -->
		<!-- 													class="my-cart-b item_add">Add To Cart</a> -->
		<!-- 											</div> -->
		<!-- 										</div> -->
		<!-- 									</div> -->
		<!-- 									<div class="col-md-3 cap-left simpleCart_shelfItem"> -->
		<!-- 										<div class="grid-arr"> -->
		<!-- 											<div class="grid-arrival"> -->
		<!-- 												<figure> -->
		<!-- 													<a href="single.html"> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p10.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 														<div class="grid-img"> -->
		<%-- 															<img src="<c:url value = "/assets/images/p9.jpg"/>" --%>
		<!-- 																class="img-responsive" alt=""> -->
		<!-- 														</div> -->
		<!-- 													</a> -->
		<!-- 												</figure> -->
		<!-- 											</div> -->
		<!-- 											<div class="ribben"> -->
		<!-- 												<p>NEW</p> -->
		<!-- 											</div> -->
		<!-- 											<div class="block"> -->
		<!-- 												<div class="starbox small ghosting"></div> -->
		<!-- 											</div> -->
		<!-- 											<div class="women"> -->
		<!-- 												<h6> -->
		<!-- 													<a href="single.html">Sed ut perspiciatis unde</a> -->
		<!-- 												</h6> -->
		<!-- 												<span class="size">XL / XXL / S </span> -->
		<!-- 												<p> -->
		<!-- 													<del>$100.00</del> -->
		<!-- 													<em class="item_price">$70.00</em> -->
		<!-- 												</p> -->
		<!-- 												<a href="#" data-text="Add To Cart" -->
		<!-- 													class="my-cart-b item_add">Add To Cart</a> -->
		<!-- 											</div> -->
		<!-- 										</div> -->
		<!-- 									</div> -->
		<!-- 									<div class="clearfix"></div> -->
		<!-- 								</div> -->
		<!-- 							</li> -->
		<!-- 						</ul> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 		</div> -->
		<!-- 		<!--Products-->
		-->
		<div class="latest-w3">
			<div class="container">
				<h3 class="tittle1">Latest Fashion Trends</h3>
				<div class="latest-grids">
					<div class="col-md-4 latest-grid">
						<div class="latest-top">
							<img src="<c:url value = "/assets/images/l1.jpg"/>"
								class="img-responsive" alt="">
							<div class="latest-text">
								<h4>Men</h4>
							</div>
							<div class="latest-text2 hvr-sweep-to-top">
								<h4>-50%</h4>
							</div>
						</div>
					</div>
					<div class="col-md-4 latest-grid">
						<div class="latest-top">
							<img src="<c:url value = "/assets/images/l2.jpg"/>"
								class="img-responsive" alt="">
							<div class="latest-text">
								<h4>Shoes</h4>
							</div>
							<div class="latest-text2 hvr-sweep-to-top">
								<h4>-20%</h4>
							</div>
						</div>
					</div>
					<div class="col-md-4 latest-grid">
						<div class="latest-top">
							<img src="<c:url value = "/assets/images/l3.jpg"/>"
								class="img-responsive" alt="">
							<div class="latest-text">
								<h4>Women</h4>
							</div>
							<div class="latest-text2 hvr-sweep-to-top">
								<h4>-50%</h4>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="latest-grids">
					<div class="col-md-4 latest-grid">
						<div class="latest-top">
							<img src="<c:url value = "/assets/images/l4.jpg"/>"
								class="img-responsive" alt="">
							<div class="latest-text">
								<h4>Watch</h4>
							</div>
							<div class="latest-text2 hvr-sweep-to-top">
								<h4>-45%</h4>
							</div>
						</div>
					</div>
					<div class="col-md-4 latest-grid">
						<div class="latest-top">
							<img src="<c:url value = "/assets/images/l5.jpg"/>"
								class="img-responsive" alt="">
							<div class="latest-text">
								<h4>Bag</h4>
							</div>
							<div class="latest-text2 hvr-sweep-to-top">
								<h4>-10%</h4>
							</div>
						</div>
					</div>
					<div class="col-md-4 latest-grid">
						<div class="latest-top">
							<img src="<c:url value = "/assets/images/l6.jpg"/>"
								class="img-responsive" alt="">
							<div class="latest-text">
								<h4>Home Decor</h4>
							</div>
							<div class="latest-text2 hvr-sweep-to-top">
								<h4>-30%</h4>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="new-arrivals-w3agile">
			<div class="container">
				<h3 class="tittle1">Best Sellers</h3>
				<div class="arrivals-grids">
					<c:set var="total" value="${0}" />
					<c:forEach items="${products}" var="prodInfo" begin="13" end="17">
						<div class="col-md-3 arrival-grid simpleCart_shelfItem">
							<div class="grid-arr">
								<div class="grid-arrival">
									<figure>
										<a href="#" class="new-gri" data-toggle="modal"
											data-target="#myModal1">
											<div class="grid-img">
												<img
													src="${pageContext.request.contextPath}/admin/productImage.html?code=${prodInfo.code}"
													style="width: 200px; height: 200px" class="img-responsive"
													alt="">
											</div>
											<div class="grid-img">
												<img
													src="${pageContext.request.contextPath}/admin/productImage.html?code=${prodInfo.code}"
													class="img-responsive" alt="">
											</div>
										</a>
									</figure>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
								<div class="ribben1">
									<p>SALE</p>
								</div>
								<div class="block">
									<div class="starbox small ghosting"></div>
								</div>
								<div class="women">
									<h6>
										<a href="single.html">${prodInfo.name }</a>
									</h6>
									<span class="size">XL / XXL / S </span>
									<p>
										<em class="item_price"><fmt:formatNumber
												value="${prodInfo.price}" type="currency" /></em>
									</p>
									<a
										href="${pageContext.request.contextPath}/buyProduct.html?code=${prodInfo.code}"
										data-text="Add To Cart" class="my-cart-b item_add">Add To
										Cart</a>
								</div>
							</div>
						</div>
						<c:set var="total" value="${total + 1}" />
					</c:forEach>
					<!-- 					<div class="col-md-3 arrival-grid simpleCart_shelfItem"> -->
					<!-- 						<div class="grid-arr"> -->
					<!-- 							<div class="grid-arrival"> -->
					<!-- 								<figure> -->
					<!-- 									<a href="single.html"> -->
					<!-- 										<div class="grid-img"> -->
					<%-- 											<img src="<c:url value = "/assets/images/p30.jpg"/>" --%>
					<!-- 												class="img-responsive" alt=""> -->
					<!-- 										</div> -->
					<!-- 										<div class="grid-img"> -->
					<%-- 											<img src="<c:url value = "/assets/images/p29.jpg"/>" --%>
					<!-- 												class="img-responsive" alt=""> -->
					<!-- 										</div> -->
					<!-- 									</a> -->
					<!-- 								</figure> -->
					<!-- 							</div> -->
					<!-- 							<div class="ribben2"> -->
					<!-- 								<p>OUT OF STOCK</p> -->
					<!-- 							</div> -->
					<!-- 							<div class="block"> -->
					<!-- 								<div class="starbox small ghosting"></div> -->
					<!-- 							</div> -->
					<!-- 							<div class="women"> -->
					<!-- 								<h6> -->
					<!-- 									<a href="single.html">Sed ut perspiciatis unde</a> -->
					<!-- 								</h6> -->
					<!-- 								<span class="size">XL / XXL / S </span> -->
					<!-- 								<p> -->
					<!-- 									<del>$100.00</del> -->
					<!-- 									<em class="item_price">$70.00</em> -->
					<!-- 								</p> -->
					<!-- 								<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add -->
					<!-- 									To Cart</a> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
					<!-- 					<div class="col-md-3 arrival-grid simpleCart_shelfItem"> -->
					<!-- 						<div class="grid-arr"> -->
					<!-- 							<div class="grid-arrival"> -->
					<!-- 								<figure> -->
					<!-- 									<a href="single.html"> -->
					<!-- 										<div class="grid-img"> -->
					<%-- 											<img src="<c:url value = "/assets/images/s2.jpg"/>" --%>
					<!-- 												class="img-responsive" alt=""> -->
					<!-- 										</div> -->
					<!-- 										<div class="grid-img"> -->
					<%-- 											<img src="<c:url value = "/assets/images/s1.jpg"/>" --%>
					<!-- 												class="img-responsive" alt=""> -->
					<!-- 										</div> -->
					<!-- 									</a> -->
					<!-- 								</figure> -->
					<!-- 							</div> -->
					<!-- 							<div class="ribben1"> -->
					<!-- 								<p>SALE</p> -->
					<!-- 							</div> -->
					<!-- 							<div class="block"> -->
					<!-- 								<div class="starbox small ghosting"></div> -->
					<!-- 							</div> -->
					<!-- 							<div class="women"> -->
					<!-- 								<h6> -->
					<!-- 									<a href="single.html">Sed ut perspiciatis unde</a> -->
					<!-- 								</h6> -->
					<!-- 								<span class="size">XL / XXL / S </span> -->
					<!-- 								<p> -->
					<!-- 									<del>$100.00</del> -->
					<!-- 									<em class="item_price">$70.00</em> -->
					<!-- 								</p> -->
					<!-- 								<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add -->
					<!-- 									To Cart</a> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
					<!-- 					<div class="col-md-3 arrival-grid simpleCart_shelfItem"> -->
					<!-- 						<div class="grid-arr"> -->
					<!-- 							<div class="grid-arrival"> -->
					<!-- 								<figure> -->
					<!-- 									<a href="single.html"> -->
					<!-- 										<div class="grid-img"> -->
					<%-- 											<img src="<c:url value = "/assets/images/s4.jpg"/>" --%>
					<!-- 												class="img-responsive" alt=""> -->
					<!-- 										</div> -->
					<!-- 										<div class="grid-img"> -->
					<%-- 											<img src="<c:url value = "/assets/images/s3.jpg"/>" --%>
					<!-- 												class="img-responsive" alt=""> -->
					<!-- 										</div> -->
					<!-- 									</a> -->
					<!-- 								</figure> -->
					<!-- 							</div> -->
					<!-- 							<div class="ribben"> -->
					<!-- 								<p>NEW</p> -->
					<!-- 							</div> -->
					<!-- 							<div class="block"> -->
					<!-- 								<div class="starbox small ghosting"></div> -->
					<!-- 							</div> -->
					<!-- 							<div class="women"> -->
					<!-- 								<h6> -->
					<!-- 									<a href="single.html">Sed ut perspiciatis unde</a> -->
					<!-- 								</h6> -->
					<!-- 								<span class="size">XL / XXL / S </span> -->
					<!-- 								<p> -->
					<!-- 									<del>$100.00</del> -->
					<!-- 									<em class="item_price">$70.00</em> -->
					<!-- 								</p> -->
					<!-- 								<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add -->
					<!-- 									To Cart</a> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
					<!-- 					<div class="clearfix"></div> -->
					<!-- 				</div> -->
					<!-- 			</div> -->
					<!-- 		</div> -->
					<!-- 		<!--new-arrivals-->

					<!-- 	</div> -->
					<!-- 	<!--content-->



					<!-- 	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"> -->
					<!-- 		<div class="modal-dialog" role="document"> -->
					<!-- 			<div class="modal-content modal-info"> -->
					<!-- 				<div class="modal-header"> -->
					<!-- 					<button type="button" class="close" data-dismiss="modal" -->
					<!-- 						aria-label="Close"> -->
					<!-- 						<span aria-hidden="true">&times;</span> -->
					<!-- 					</button> -->
					<!-- 				</div> -->
					<!-- 				<div class="modal-body"> -->
					<!-- 					<div class="news-gr"> -->
					<!-- 						<div class="col-md-5 new-grid1"> -->
					<%-- 							<img src="<c:url value = "/assets/images/p5.jpg"/>" --%>
					<!-- 								class="img-responsive" alt=""> -->
					<!-- 						</div> -->
					<!-- 						<div class="col-md-7 new-grid"> -->
					<!-- 							<h5>Box</h5> -->
					<!-- 							<h6>Quick Overview</h6> -->
					<!-- 							<span>This is a box</span> -->
					<!-- 							<div class="color-quality"> -->
					<!-- 								<div class="color-quality-left"> -->
					<!-- 									<h6>Color :</h6> -->
					<!-- 									<ul> -->
					<!-- 										<li><a href="#"><span></span>Red</a></li> -->
					<!-- 										<li><a href="#" class="brown"><span></span>Yellow</a></li> -->
					<!-- 										<li><a href="#" class="purple"><span></span>Purple</a></li> -->
					<!-- 										<li><a href="#" class="gray"><span></span>Violet</a></li> -->
					<!-- 									</ul> -->
					<!-- 								</div> -->
					<!-- 								<div class="color-quality-right"> -->
					<!-- 									<h6>Quality :</h6> -->
					<!-- 									<div class="quantity"> -->
					<!-- 										<div class="quantity-select"> -->
					<!-- 											<div class="entry value-minus1">&nbsp;</div> -->
					<!-- 											<div class="entry value1"> -->
					<!-- 												<span>1</span> -->
					<!-- 											</div> -->
					<!-- 											<div class="entry value-plus1 active">&nbsp;</div> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 									quantity -->
					<!-- 									<script> -->
					<!-- // $('.value-plus1') // .on( // 'click', // function() { // var
					divUpd = $(this) // .parent() // .find( // '.value1'), newVal =
					parseInt( // divUpd // .text(), // 10) + 1; // divUpd.text(newVal);
					// }); // $('.value-minus1') // .on( // 'click', // function() { //
					var divUpd = $(this) // .parent() // .find( // '.value1'), newVal =
					parseInt( // divUpd // .text(), // 10) - 1; // if (newVal >= 1) //
					divUpd // .text(newVal); // }); -->
					<!-- 									</script> -->
					<!-- 									quantity -->
					<!-- 								</div> -->
					<!-- 								<div class="clearfix"></div> -->
					<!-- 							</div> -->
					<!-- 							<div class="women"> -->
					<!-- 								<span class="size">XL / XXL / S </span> -->
					<!-- 								<p> -->
					<!-- 									<del>$100.00</del> -->
					<!-- 									<em class="item_price"> $70.00 </em> -->
					<!-- 								</p> -->
					<!-- 								<div class="add"> -->
					<!-- 									<button class="btn btn-danger my-cart-btn my-cart-b" -->
					<!-- 										data-id="3" data-name="Kabuli Chana" data-summary="summary 3" -->
					<!-- 										data-price="2.00" data-quantity="1" -->
					<!-- 										data-image="images/of2.png">Add to Cart</button> -->
					<!-- 								</div> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="news-gr">
						<div class="col-md-5 new-grid1">
							<img src="<c:url value = "/assets/images/p7.jpg"/>"
								class="img-responsive" alt="">
						</div>
						<div class="col-md-7 new-grid">
							<h5>Ten Women's Cotton Viscose fabric Grey Shrug</h5>
							<h6>Quick Overview</h6>
							<span>Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis
								aute irure dolor in reprehenderit in voluptate velit esse cillum
								dolore eu fugiat nulla pariatur. Excepteur sint occaecat
								cupidatat non proident, sunt in culpa qui officia deserunt
								mollit anim id est laborum.</span>
							<div class="color-quality">
								<div class="color-quality-left">
									<h6>Color :</h6>
									<ul>
										<li><a href="#"><span></span>Red</a></li>
										<li><a href="#" class="brown"><span></span>Yellow</a></li>
										<li><a href="#" class="purple"><span></span>Purple</a></li>
										<li><a href="#" class="gray"><span></span>Violet</a></li>
									</ul>
								</div>
								<div class="color-quality-right">
									<h6>Quality :</h6>
									<div class="quantity">
										<div class="quantity-select">
											<div class="entry value-minus1">&nbsp;</div>
											<div class="entry value1">
												<span>1</span>
											</div>
											<div class="entry value-plus1 active">&nbsp;</div>
										</div>
									</div>
									<!--quantity-->
									<script>
										$('.value-plus1')
												.on(
														'click',
														function() {
															var divUpd = $(this)
																	.parent()
																	.find(
																			'.value1'), newVal = parseInt(
																	divUpd
																			.text(),
																	10) + 1;
															divUpd.text(newVal);
														});

										$('.value-minus1')
												.on(
														'click',
														function() {
															var divUpd = $(this)
																	.parent()
																	.find(
																			'.value1'), newVal = parseInt(
																	divUpd
																			.text(),
																	10) - 1;
															if (newVal >= 1)
																divUpd
																		.text(newVal);
														});
									</script>
									<!--quantity-->
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="women">
								<span class="size">XL / XXL / S </span>
								<p>
									<del>$100.00</del>
									<em class="item_price"> $70.00 </em>
								</p>
								<div class="add">
									<button class="btn btn-danger my-cart-btn my-cart-b"
										data-id="3" data-name="Kabuli Chana" data-summary="summary 3"
										data-price="2.00" data-quantity="1"
										data-image="images/of2.png">Add to Cart</button>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="news-gr">
						<div class="col-md-5 new-grid1">
							<img src="<c:url value = "/assets/images/p10.jpg"/>"
								class="img-responsive" alt="">
						</div>
						<div class="col-md-7 new-grid">
							<h5>Ten Men's Cotton Viscose fabric Grey Shrug</h5>
							<h6>Quick Overview</h6>
							<span>Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis
								aute irure dolor in reprehenderit in voluptate velit esse cillum
								dolore eu fugiat nulla pariatur. Excepteur sint occaecat
								cupidatat non proident, sunt in culpa qui officia deserunt
								mollit anim id est laborum.</span>
							<div class="color-quality">
								<div class="color-quality-left">
									<h6>Color :</h6>
									<ul>
										<li><a href="#"><span></span>Red</a></li>
										<li><a href="#" class="brown"><span></span>Yellow</a></li>
										<li><a href="#" class="purple"><span></span>Purple</a></li>
										<li><a href="#" class="gray"><span></span>Violet</a></li>
									</ul>
								</div>
								<div class="color-quality-right">
									<h6>Quality :</h6>
									<div class="quantity">
										<div class="quantity-select">
											<div class="entry value-minus1">&nbsp;</div>
											<div class="entry value1">
												<span>1</span>
											</div>
											<div class="entry value-plus1 active">&nbsp;</div>
										</div>
									</div>
									<!--quantity-->
									<script>
										$('.value-plus1')
												.on(
														'click',
														function() {
															var divUpd = $(this)
																	.parent()
																	.find(
																			'.value1'), newVal = parseInt(
																	divUpd
																			.text(),
																	10) + 1;
															divUpd.text(newVal);
														});

										$('.value-minus1')
												.on(
														'click',
														function() {
															var divUpd = $(this)
																	.parent()
																	.find(
																			'.value1'), newVal = parseInt(
																	divUpd
																			.text(),
																	10) - 1;
															if (newVal >= 1)
																divUpd
																		.text(newVal);
														});
									</script>
									<!--quantity-->
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="women">
								<span class="size">XL / XXL / S </span>
								<p>
									<del>$100.00</del>
									<em class="item_price"> $70.00 </em>
								</p>
								<div class="add">
									<button class="btn btn-danger my-cart-btn my-cart-b"
										data-id="3" data-name="Kabuli Chana" data-summary="summary 3"
										data-price="2.00" data-quantity="1"
										data-image="images/of2.png">Add to Cart</button>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="news-gr">
						<div class="col-md-5 new-grid1">
							<img src="<c:url value = "/assets/images/p12.jpg"/>"
								class="img-responsive" alt="">
						</div>
						<div class="col-md-7 new-grid">
							<h5>Ten Men's Cotton Viscose fabric Grey Shrug</h5>
							<h6>Quick Overview</h6>
							<span>Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis
								aute irure dolor in reprehenderit in voluptate velit esse cillum
								dolore eu fugiat nulla pariatur. Excepteur sint occaecat
								cupidatat non proident, sunt in culpa qui officia deserunt
								mollit anim id est laborum.</span>
							<div class="color-quality">
								<div class="color-quality-left">
									<h6>Color :</h6>
									<ul>
										<li><a href="#"><span></span>Red</a></li>
										<li><a href="#" class="brown"><span></span>Yellow</a></li>
										<li><a href="#" class="purple"><span></span>Purple</a></li>
										<li><a href="#" class="gray"><span></span>Violet</a></li>
									</ul>
								</div>
								<div class="color-quality-right">
									<h6>Quality :</h6>
									<div class="quantity">
										<div class="quantity-select">
											<div class="entry value-minus1">&nbsp;</div>
											<div class="entry value1">
												<span>1</span>
											</div>
											<div class="entry value-plus1 active">&nbsp;</div>
										</div>
									</div>
									<!--quantity-->
									<script>
										$('.value-plus1')
												.on(
														'click',
														function() {
															var divUpd = $(this)
																	.parent()
																	.find(
																			'.value1'), newVal = parseInt(
																	divUpd
																			.text(),
																	10) + 1;
															divUpd.text(newVal);
														});

										$('.value-minus1')
												.on(
														'click',
														function() {
															var divUpd = $(this)
																	.parent()
																	.find(
																			'.value1'), newVal = parseInt(
																	divUpd
																			.text(),
																	10) - 1;
															if (newVal >= 1)
																divUpd
																		.text(newVal);
														});
									</script>
									<!--quantity-->
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="women">
								<span class="size">XL / XXL / S </span>
								<p>
									<del>$100.00</del>
									<em class="item_price"> $70.00 </em>
								</p>
								<div class="add">
									<button class="btn btn-danger my-cart-btn my-cart-b"
										data-id="3" data-name="Kabuli Chana" data-summary="summary 3"
										data-price="2.00" data-quantity="1"
										data-image="images/of2.png">Add to Cart</button>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>