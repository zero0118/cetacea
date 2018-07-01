<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="text/html; charset=UTF-8">
<title>JIXX</title>
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
   folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/dist/css/skins/_all-skins.min.css">
<!-- Morris chart -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/bower_components/morris.js/morris.css">
<!-- jvectormap -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/bower_components/jvectormap/jquery-jvectormap.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/resources/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- Daterange picker -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

<!-- jQuery 3 -->
<script src="<%= request.getContextPath() %>/resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<%= request.getContextPath() %>/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="<%= request.getContextPath() %>/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<%= request.getContextPath() %>/resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<%= request.getContextPath() %>/resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<%= request.getContextPath() %>/resources/dist/js/demo.js"></script>


<style type="text/css">

	.card-block{
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


