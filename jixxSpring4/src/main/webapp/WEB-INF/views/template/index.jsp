<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp" flush="false"/>
 <style type="text/css">
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

<body class="skin-blue layout-top-nav" style="height: auto; min-height: 100%;">
	<div class="wrapper" style="height: auto; min-height: 100%;">

		<header class="main-header">
			<nav class="navbar navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<a href="../../index2.html" class="navbar-brand">Spring<b>JIXX</b></a>
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
							data-target="#navbar-collapse">
							<i class="fa fa-bars"></i>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse pull-left" id="navbar-collapse"></div>
					<!-- /.navbar-collapse -->
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<li>
								<!-- Menu Toggle Button --> <a  href="crw1.do" class="dropdown-toggle" data-toggle="dropdown"
								aria-expanded="true"> SIGN IN</span>
							</a>

							</li>
						</ul>
					</div>
					<!-- /.navbar-custom-menu -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>

		<header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
          <div class="carousel-item active" style="background-image: url('resources/images/index1.jpg');  height:950px; ">
            <div class="carousel-caption d-none d-md-block">
              <h3>JIXX</h3>
              <p>(파일공유 그룹웨어)</p>
            </div>
          </div>
        </div>
      </div>
      
      
    </header>
</body>
</html>