<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${name }|InsertProduct</title>
<link type="text/css"
	href="<c:url value ="bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link type="text/css"
	href="<c:url value ="bootstrap/css/bootstrap-responsive.min.css"/>"
	rel="stylesheet">
<link type="text/css" href="<c:url value ="css/theme.css"/>"
	rel="stylesheet">
<link type="text/css"
	href="<c:url value ="images/icons/css/font-awesome.css"/>"
	rel="stylesheet">
<link type="text/css"
	href='<c:url value ="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"/>'
	rel='stylesheet'>
<script src="<c:url value ="http://js.nicedit.com/nicEdit-latest.js"/>"
	type="text/javascript"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(nicEditors.allTextAreas);
</script>




</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i>
				</a> <a class="brand" href="#"> Shopping Portal | ${name } </a>

				<div class="nav-collapse collapse navbar-inverse-collapse">
					<ul class="nav pull-right">
						<c:choose>
							<c:when test="${client.userName == null}">
								<li><a href="login.html">Login</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="#">${client.userName}</a></li>
							</c:otherwise>
						</c:choose>
						<li class="nav-user dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="images/user.png" class="nav-avatar" /> <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">

								<li><a href="logout.html">Logout</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- /.nav-collapse -->
			</div>
		</div>
		<!-- /navbar-inner -->
	</div>
	<!-- /navbar -->


	<div class="wrapper">
		<div class="container">
			<div class="row">


				<div class="span3">
					<div class="sidebar">


						<ul class="widget widget-menu unstyled">
							<!-- 							<li><a class="collapsed" data-toggle="collapse" -->
							<!-- 								href="#togglePages"> <i class="menu-icon icon-cog"></i> <i -->
							<!-- 									class="icon-chevron-down pull-right"></i><i -->
							<!-- 									class="icon-chevron-up pull-right"></i> Order Management -->
							<!-- 							</a> -->
							<ul id="togglePages" class="collapse unstyled">
								<li><a href="todays-orders.php"> <i class="icon-tasks"></i>
										Today' s Orders
								</a></li>
								<li><a href="pending-orders.php"> <i class="icon-tasks"></i>
										Pending Orders
								</a></li>
								<li><a href="delivered-orders.php"> <i
										class="icon-inbox"></i> Delivered Orders

								</a></li>
							</ul>
							</li>
							<c:if test="${name == 'admin' }">
								<li><a href="userslist.html"> <i
										class="menu-icon icon-group"></i> Manage users
								</a></li>
							</c:if>
						</ul>


						<ul class="widget widget-menu unstyled">

							<li><a
								href="${pageContext.request.contextPath }/${name}/addproduct.html"><i
									class="menu-icon icon-paste"></i>Insert Product </a></li>
							<li><a
								href="${pageContext.request.contextPath }/${name}/viewProducts.html"><i
									class="menu-icon icon-table"></i>Manage Products </a></li>

						</ul>
						<!--/.widget-nav-->

						<ul class="widget widget-menu unstyled">


							<li><a href="logout.html"> <i
									class="menu-icon icon-signout"></i> Logout
							</a></li>
						</ul>

					</div>
					<!--/.sidebar-->
				</div>
				<!--/.span3-->


				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Insert Product</h3>
							</div>
							<div class="module-body">



								<br />

								<form:form class="form-horizontal row-fluid" name="productForm"
									action="addProduct.html" modelAttribute="productForm"
									method="post" enctype="multipart/form-data">

									<div class="control-group">
										<label class="control-label" for="basicinput">Category</label>
										<div class="controls">
											<form:select path="category" name="category"
												class="span8 tip" required="true">
												<form:option value="">Select Category</form:option>
												<form:option value="Clothing">Clothing</form:option>
												<form:option value="Beauty">Beauty</form:option>
												<form:option value="Accessories">Accessories</form:option>
											</form:select>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label" for="basicinput">Product
											Code </label>
										<div class="controls">
											<form:input type="text" name="code"
												placeholder="Enter Product code" class="span8 tip"
												path="code" required="true" id="code" />
										</div>
									</div>

									<div class="control-group">
										<label class="control-label" for="basicinput">Product
											Name</label>
										<div class="controls">
											<form:input type="text" name="productName"
												placeholder="Enter Product Name" path="name"
												class="span8 tip" required="true" />
										</div>
									</div>

									<div class="control-group">
										<label class="control-label" for="basicinput">Product
											Price </label>
										<div class="controls">
											<form:input type="text" name="productpricebd"
												placeholder="Enter Product Price" class="span8 tip"
												path="price" required="true" />
										</div>
									</div>



									<div class="control-group">
										<label class="control-label" for="basicinput">Product
											Description</label>
										<div class="controls">
											<form:textarea name="productDescription"
												placeholder="Enter Product Description" rows="6"
												class="span8 tip" path="description" />
											</textarea>
										</div>
									</div>





									<div class="control-group">
										<label class="control-label" for="basicinput">Product
											Image1</label>
										<div class="controls">
											<img
												src="${pageContext.request.contextPath}/productImage?code=${productForm.code}"
												width="100" />
											<form:input type="file" name="productimage1"
												id="productimage1" value="" class="span8 tip"
												path="fileData" required="true" />
										</div>
									</div>



									<div class="control-group">
										<div class="controls">
											<button type="submit" name="submit" class="btn">Insert</button>
										</div>
									</div>
								</form:form>
							</div>
						</div>





					</div>
					<!--/.content-->
				</div>
				<!--/.span9-->
			</div>
		</div>
		<!--/.container-->
	</div>
	<!--/.wrapper-->

	<div class="footer">
		<div class="container">


			<b class="copyright">&copy; 2017 Shopping Portal </b> All rights
			reserved.
		</div>
	</div>


	<script src="<c:url value ="scripts/jquery-1.9.1.min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value ="scripts/jquery-ui-1.10.1.custom.min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value ="bootstrap/js/bootstrap.min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value ="scripts/flot/jquery.flot.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value ="scripts/datatables/jquery.dataTables.js"/>"></script>
	<script>
		$(document).ready(
				function() {
					$('.datatable-1').dataTable();
					$('.dataTables_paginate').addClass(
							"btn-group datatable-pagination");
					$('.dataTables_paginate > a').wrapInner('<span />');
					$('.dataTables_paginate > a:first-child').append(
							'<i class="icon-chevron-left shaded"></i>');
					$('.dataTables_paginate > a:last-child').append(
							'<i class="icon-chevron-right shaded"></i>');
				});
	</script>
</body>
</html>