<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>JIXX</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="apple-icon.png">
<link rel="shortcut icon" href="favicon.ico">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/normalize.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/themify-icons.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/flag-icon.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/cs-skin-elastic.css">
<!-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-select.less"> -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/scss/style.css">
<link href="<%=request.getContextPath()%>/resources/css/lib/vector-map/jqvmap.min.css" rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800"
	rel="stylesheet" type="text/css">

<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
<!-- /#right-panel -->

<!-- Right Panel -->

<script src="<%=request.getContextPath()%>/resources/js/vendor/jquery-2.1.4.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/plugins.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>


<script src="<%=request.getContextPath()%>/resources/js/lib/chart-js/Chart.bundle.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/dashboard.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/widgets.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/lib/vector-map/jquery.vmap.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/lib/vector-map/jquery.vmap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/lib/vector-map/jquery.vmap.sampledata.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/lib/vector-map/country/jquery.vmap.world.js"></script>
<script>
	(function($) {
		"use strict";

		jQuery('#vmap').vectorMap({
			map : 'world_en',
			backgroundColor : null,
			color : '#ffffff',
			hoverOpacity : 0.7,
			selectedColor : '#1de9b6',
			enableZoom : true,
			showTooltip : true,
			values : sample_data,
			scaleColors : [ '#1de9b6', '#03a9f5' ],
			normalizeFunction : 'polynomial'
		});
	})(jQuery);
</script>
<div class="jqvmap-label" style="display: none;"></div>



<style>
#icon1 {
	margin: 0px 25px;
}

#icon2 {
	margin: 0px 10px;
}

#icon3 {
	margin: 0px 10px 0px 0px;
}

.card-body {
	-webkit-box-flex: 1;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	padding: 0.7rem;
}
</style>
</head>
<body>


	<!-- Left Panel -->

	<aside id="left-panel" class="left-panel">
		<nav class="navbar navbar-expand-sm navbar-default">

			<div class="navbar-header">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#main-menu" aria-controls="main-menu"
					aria-expanded="false" aria-label="Toggle navigation">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand" href="index.html"><img
					src="<%=request.getContextPath()%>/resources/images/logo.png" alt="Logo"></a> <a
					class="navbar-brand hidden" href="index.html"><img
					src="<%=request.getContextPath()%>/resources/images/logo2.png" alt="Logo"></a>
			</div>

			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.html"> <i id="icon3"
							class="fa fa-sun-o"></i>All Threads
					</a></li>

					<h3 class="menu-title">
						Channels<a href="#"><i id="icon1" class="fa fa-plus-circle"></i></a>
					</h3>
					<!-- /.menu-title -->
					<li><a href="#"><i id="icon2" class="fa fa-asterisk"></i>Channel
							1</a> <a href="#"><i id="icon2" class="fa fa-asterisk"></i>Channel
							2</a> <a href="#"><i id="icon2" class="fa fa-asterisk"></i>Channel
							3</a> <a href="#"><i id="icon2" class="fa fa-lock"></i>LockChannel
					</a></li>

					<h3 class="menu-title">
						Direct Messages<a href="#"><i id="icon2"
							class="fa fa-plus-circle"></i></a>
					</h3>
					<!-- /.menu-title -->
					<li><a href="#"><i id="icon2" class="fa fa-circle"></i>사람1</a>
						<a href="#"><i id="icon2" class="fa fa-circle-o"></i>사람2</a> <a
						href="#"><i id="icon2" class="fa fa fa-user"></i>사람3</a> <a
						href="#"><i id="icon2" class="fa fa-users"></i>사람2,사람3</a></li>

					<a class="menu-title" href="#">+Invate People<i id="icon2"
						class="fa fa-plus-circle"></i>
					</a>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
		<a class="menu-title" href="#"> </a>
	</aside>