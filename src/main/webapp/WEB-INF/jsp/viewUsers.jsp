
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin| Insert Product</title>

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
				</a> <a class="brand" href="#"> Shopping Portal | Admin </a>

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

							<li><a href="userslist.html"> <i
									class="menu-icon icon-group"></i> Manage users
							</a></li>
						</ul>


						<ul class="widget widget-menu unstyled">

							<li><a
								href="${pageContext.request.contextPath }/admin/addproduct.html"><i
									class="menu-icon icon-paste"></i>Insert Product </a></li>
							<li><a
								href="${pageContext.request.contextPath }/admin/viewProducts.html"><i
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
					<!-- Content -->
					<div class="content">
						<div class="scroll-view">
							<table class="table table-responsive">
								<thead>
									<tr>
										<th>FirstName</th>
										<th>LastName</th>
										<th>username</th>
										<th>email</th>
										<th>password</th>
										<th>mobile no</th>
										<th>Address</th>
										<th>UserRole</th>
										<th>Edit</th>
										<th>delete</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="clist" items="${clist}">
										<tr>
											<td>${clist.firstName }</td>
											<td>${clist.lastName }</td>
											<td>${clist.userName }</td>
											<td>${clist.email}</td>
											<td>${clist.password }</td>
											<td>${clist.phoneNo }</td>
											<td>${clist.address }</td>
											<td>${clist.userRole }</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/editClient.html?id=${clist.id}">
													<img
													src="${pageContext.request.contextPath}/admin/bootstrap/img/edit.png"
													style="width: 20px; height: 25px" />
											</a></td>
											<td><a
												href="${pageContext.request.contextPath}/admin/deleteClient.html?id=${clist.id}"><img
													src="${pageContext.request.contextPath}/admin/bootstrap/img/delete.png"
													style="width: 20px; height: 25px" /></td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<!-- content -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>