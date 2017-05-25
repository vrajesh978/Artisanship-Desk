<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--header-->
<div class="header">
	<div class="header-top">
		<div class="container">
			<div class="top-left">
				<a href="#"> Help <i class="glyphicon glyphicon-phone"
					aria-hidden="true"></i>+91-7405235315
				</a>
			</div>
			<div class="top-right">
				<ul>
					<c:choose>
						<c:when test="${client.userName == null}">
							<li><a href="login.html">Login</a></li>
							<li><a href="registration.html"> Create Account </a></li>
						</c:when>
						<c:otherwise>
							<li><a href="#">${client.userName}</a></li>
							<li><a href="logout.html"> Logout </a></li>
						</c:otherwise>
					</c:choose>
					<li><a href="shoppingCart.html">Checkout</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="heder-bottom">
		<div class="container">
			<div class="logo-nav">
				<div class="logo-nav-left">
					<h1>
						<a href="index.html">Artisanship Desk <span>The art
								store</span></a>
					</h1>
				</div>
				<div class="logo-nav-left1">
					<nav class="navbar navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header nav_2">
							<button type="button"
								class="navbar-toggle collapsed navbar-toggle1"
								data-toggle="collapse" data-target="#bs-megadropdown-tabs">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.html" class="act">Home</a></li>
								<!-- Mega Menu -->
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">Products<b class="caret"></b></a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="row">
											<div class="col-sm-3  multi-gd-img">
												<ul class="multi-column-dropdown">
													<h6>Submenu1</h6>
													<li><a href="products.html">Clothing</a></li>
													<li><a href="products.html">Wallets</a></li>
													<li><a href="products.html">Shoes</a></li>
													<li><a href="products.html">Watches</a></li>
													<li><a href="products.html"> Underwear </a></li>
													<li><a href="products.html">Accessories</a></li>
												</ul>
											</div>
											<div class="col-sm-3  multi-gd-img">
												<ul class="multi-column-dropdown">
													<h6>Submenu2</h6>
													<li><a href="products.html">Sunglasses</a></li>
													<li><a href="products.html">Wallets,Bags</a></li>
													<li><a href="products.html">Footwear</a></li>
													<li><a href="products.html">Watches</a></li>
													<li><a href="products.html">Accessories</a></li>
													<li><a href="products.html">Jewellery</a></li>
												</ul>
											</div>
											<div class="col-sm-3  multi-gd-img">
												<a href="products.html"><img
													src="<c:url value = "/assets/images/woo.jpg"/>" alt=" " /></a>
											</div>
											<div class="col-sm-3  multi-gd-img">
												<a href="products.html"><img
													src="<c:url value = "/assets/images/woo1.jpg"/>" alt=" " /></a>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">Services <b class="caret"></b></a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="row">
											<div class="col-sm-3  multi-gd-img">
												<ul class="multi-column-dropdown">
													<h6>Submenu1</h6>
													<li><a href="products.html">Clothing</a></li>
													<li><a href="products.html">Wallets</a></li>
													<li><a href="products.html">Shoes</a></li>
													<li><a href="products.html">Watches</a></li>
													<li><a href="products.html"> Home Decor</a></li>
													<li><a href="products.html">Accessories</a></li>
												</ul>
											</div>
											<div class="col-sm-3  multi-gd-img">
												<ul class="multi-column-dropdown">
													<h6>Submenu2</h6>
													<li><a href="products.html">Baskets</a></li>
													<li><a href="products.html">Bags</a></li>
													<li><a href="products.html">Footwear</a></li>
													<li><a href="products.html">Watches</a></li>
													<li><a href="products.html">Accessories</a></li>
													<li><a href="products.html">Jewellery</a></li>
												</ul>
											</div>
											<div class="col-sm-3  multi-gd-img">
												<a href="products1.html"><img
													src="<c:url value = "/assets/images/woo3.jpg"/>" alt=" " /></a>
											</div>
											<div class="col-sm-3  multi-gd-img">
												<a href="products1.html"><img
													src="<c:url value = "/assets/images/woo4.jpg"/>" alt=" " /></a>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul></li>

								<li><a href="mail.html">Mail Us</a></li>
							</ul>
						</div>
					</nav>
				</div>
				<div class="logo-nav-right">
					<ul class="cd-header-buttons">
						<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
					</ul>
					<!-- cd-header-buttons -->
					<div id="cd-search" class="cd-search">
						<form action="#" method="post">
							<input name="Search" type="search" placeholder="Search...">
						</form>
					</div>
				</div>
				<div class="header-right2">
					<div class="cart box_1">
						<a href="checkout.html">
							<h3>
								<div>
									<c:set var="total" value="${0}" />
									<span><c:forEach items="${cartForm.cartLines}"
											var="cartLineInfo" varStatus="varStatus">
											<c:set var="total" value="${total + 1}" />
										</c:forEach></span>
									<h2>${total}</h2>
								</div>
								<img src="<c:url value = "/assets/images/bag.png"/>" alt="" />
							</h3>
						</a>
						<p></p>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>
<!--header-->
