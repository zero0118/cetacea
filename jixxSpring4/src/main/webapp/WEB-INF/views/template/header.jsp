<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="text/html; charset=UTF-8">
<title>JIXX</title>
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
   folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/css/skins/_all-skins.min.css">
<!-- Morris chart -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bower_components/morris.js/morris.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bower_components/jvectormap/jquery-jvectormap.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

<!-- jQuery 3 -->
<script
	src="<%=request.getContextPath()%>/resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script
	src="<%=request.getContextPath()%>/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script
	src="<%=request.getContextPath()%>/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script
	src="<%=request.getContextPath()%>/resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script
	src="<%=request.getContextPath()%>/resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<%=request.getContextPath()%>/resources/dist/js/demo.js"></script>


<style type="text/css">
.card-block {
	background: #ffff;
	padding: 50px;
	margin-left: 20%;
	margin-right: 20%;
	margin-top: 8%;
}

.carousel-item {
	height: 100vh;
	min-height: 300px;
	background: no-repeat center center scroll;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}

.carousel-caption {
	position: absolute;
	right: 15%;
	bottom: 765px;
	left: 15%;
	z-index: 10;
	padding-top: 20px;
	padding-bottom: 20px;
	color: #222d32;
	text-align: center;
}

.carousel-caption2 {
	position: absolute;
	right: 15%;
	bottom: 30px;
	left: 15%;
	z-index: 10;
	padding-top: 20px;
	padding-bottom: 20px;
	color: #222d32;
	text-align: center;
}

h3 {
	display: block;
	font-size: 2em;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	font-weight: bold;
}

p {
	-webkit-margin-before: 0.8em;
	-webkit-margin-after: 0.8em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
}
</style>
</head>
<body class="skin-blue layout-top-nav"
	style="height: auto; min-height: 100%;">
	<c:set var="user_id" value="${id }" />
	<c:set var="email" value="${email}" />
	<c:set var="replist" value="${rep_list}" />
	<header class="main-header"> <nav
		class="navbar navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<a href="${pageContext.request.contextPath }/index.do"
				class="navbar-brand">Spring<b>JIXX</b></a>
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-collapse">
				<i class="fa fa-bars"></i>
			</button>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse pull-left" id="navbar-collapse"></div>
		<!-- /.navbar-collapse -->
		<!-- Navbar Right Menu -->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<c:choose>
					<c:when test="${user_id eq null}">
						<li>
							<!-- Menu Toggle Button --> <a class="dropdown-toggle"
							href="${pageContext.request.contextPath}/member/loginForm.do"
							aria-expanded="true" style="display: inline;"> SIGN IN </a>
						</li>
					</c:when>
					<c:otherwise>
						<li><a class="dropdown-toggle" aria-expanded="true"
							style="display: inline;"> ${email}님 환영합니다 </a></li>
						<c:choose>
							<c:when test="${empty replist}">
								<li class="dropdown user user-menu">
									<!-- Menu Toggle Button --> <a class="dropdown-toggle"
									data-toggle="dropdown" aria-expanded="false"> <span
										class="hidden-xs">Create Workspace</span>
								</a>
									<ul class="dropdown-menu">
										<li class="user-header">
											<div class="pull-left" style="border: 1px;">
												<a href="${pageContext.request.contextPath}/crw1.do"
													class="btn btn-default btn-flat" aria-expanded="false">
													<span class="hidden-xs">Create New Workspace</span>
												</a>
											</div>

										</li>
										<!-- Menu Body -->
										<li class="user-body">
											<div class="pull-left" style="border: 1px;">
												<a href="${pageContext.request.contextPath}/crw1.do"
													class="btn btn-default btn-flat" aria-expanded="false">
													<span class="hidden-xs">Find Workspace</span>
												</a>
											</div>
										</li>
										<!-- Menu Footer-->
										<li class="user-footer">
											<div class="pull-left">
												<a href="#" class="btn btn-default btn-flat">Profile</a>
											</div>
											<div class="pull-right">
												<a
													href="${pageContext.request.contextPath}/member/logout.do"
													class="btn btn-default btn-flat">Sign out</a>
											</div>
										</li>
									</ul>
								</li>

							</c:when>
							<c:otherwise>
								<li class="dropdown user user-menu">
									<!-- Menu Toggle Button --> <a
									href="${pageContext.request.contextPath}/gomain.do"
									class="dropdown-toggle" data-toggle="dropdown"
									aria-expanded="false"> <!-- The user image in the navbar-->

										<!-- hidden-xs hides the username on small devices so only the image appears. -->
										<span class="hidden-xs">My Workspace</span>
								</a>
									<ul class="dropdown-menu">
										<li class="user-header"><c:forEach var="aa"
												items="${rep_list}">
												<p>
													<a
														href="${pageContext.request.contextPath}/gomain.do?rep_id=${aa.rep_id}"
														style="display: inline;">${aa.rep_name}</a>
												</p>
											</c:forEach> <!-- Menu Body -->
										<li class="user-body"><div class="pull-left"
												style="border: 1px;">
												<a href="${pageContext.request.contextPath}/crw1.do"
													class="btn btn-default btn-flat" aria-expanded="false">
													<span class="hidden-xs">Create new Workspace</span>
												</a>
											</div> <!-- Menu Footer-->
										<li class="user-footer">
											<div class="pull-left">
												<a href="#" class="btn btn-default btn-flat">Profile</a>
											</div>
											<div class="pull-right">
												<a
													href="${pageContext.request.contextPath}/member/logout.do"
													class="btn btn-default btn-flat">Sign out</a>
											</div>
										</li>
									</ul>

								</li>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
		<!-- /.navbar-custom-menu -->
	</div>
	<!-- /.container-fluid --> </nav> </header>
</body>
</html>
