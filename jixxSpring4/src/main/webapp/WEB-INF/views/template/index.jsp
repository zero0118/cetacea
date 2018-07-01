<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp" flush="false" />

<<<<<<< HEAD
=======
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
<script type="text/javascript">
 $(document).ready(function() {
	 <c:forEach var="stdn"  items="${k}" varStatus="status">
     temp--;
     if (temp === 0) {
         mainString = mainString + "{key:\"" + "${stdn.key}" + "\",name:\"" + "${stdn.value.name}" + "\",rollno:\"" + "${stdn.value.rollNo}" + "\",marks:\"" + "${stdn.value.marks}" + "\"}";
     } else {
         mainString = mainString + "{key:\"" + "${stdn.key}" + "\",name:\"" + "${stdn.value.name}" + "\",rollno:\"" + "${stdn.value.rollNo}" + "\",marks:\"" + "${stdn.value.marks}" + "\"},";
     }
     </c:forEach>
 }
</script>
<body class="skin-blue layout-top-nav"
	style="height: auto; min-height: 100%;">
	<c:set var="email" value="${email}" />
	<div class="wrapper" style="height: auto; min-height: 100%;">
		<header class="main-header">
			<nav class="navbar navbar-static-top">
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
					<div class="collapse navbar-collapse pull-left"
						id="navbar-collapse"></div>
					<!-- /.navbar-collapse -->
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<c:set var="rep_list" value="${rep_list }" />
							<c:forEach var="rep_lists" items="${rep_list}" varStatus="status">
								<li>${rep_lists},${status.count}</li>
							</c:forEach>
							<li>
								<!-- Menu Toggle Button --> <a class="dropdown-toggle"
								aria-expanded="true" style="display: inline;"> ${email}
									,저장소: ${rep_lisst }</a>
							</li>
							<li>
								<!-- Menu Toggle Button --> <a class="dropdown-toggle"
								href="${pageContext.request.contextPath}/member/loginForm.do"
								aria-expanded="true" style="display: inline;"> SIGN IN </a>
							</li>
							<li><a class="dropdown-toggle"
								href="${pageContext.request.contextPath}/crw1.do"
								aria-expanded="true" style="display: inline;"> CREATE
									WORKSPACE</a></li>
							<li><a class="dropdown-toggle"
								href="${pageContext.request.contextPath}/gomain.do"
								aria-expanded="true" style="display: inline;"> MYWORKSPACE</a></li>
						</ul>
					</div>
					<!-- /.navbar-custom-menu -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>
>>>>>>> 1760796cdb152558574f17fddf4b7e5eecf91106

		<header>
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active"
						style="background-image: url('resources/images/index1.jpg'); height: 950px;">
						<div class="carousel-caption d-none d-md-block">
							<h3>FILE CETACEA</h3>
							<p>*(파일공유 그룹웨어)</p>
						</div>
					</div>
				</div>
			</div>


		</header>
	</div>
</body>
</html>