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
	
	/* .main-sidebar{
	 position: fixed;
	 } */
	 .btnlist{
	  border-top-left-radius: 4px;
	  border-top-right-radius: 4px;
	  border-bottom-right-radius: 0;
	  border-bottom-left-radius: 0;
	  background-color: #ffffff;
	  padding: 7px 10px;
	  border-bottom: 1px solid #f4f4f4;
	  color: #444444;
	  font-size: 14px;
	
	}
	.timelinebtn{
	  display: inline;
	  float: right;
	}
	.content-header{    
	  background: #fff;
	  box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.15);
	  clear: both;
	  display: inline-block;
	  padding: 15px 20px 13px 20px;
	  width: 100%;
	  }
	.skin-blue .content-header {
	    background: #ffffff;
	  }
	
	</style>
</head>



