<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp" flush="false" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(document).ready(function() {
		$("#urlCheck").click(function() {
			$.post( "repository/urlCheck.do", { url: $("#repurl").val()} )
		    .done(function( data ) {
		    	$("#urlResult").text(data);
		  });
		});
		$("#createws").click(function() {		
			if($("#urlResult").text().trim()=="사용가능"){
				$("form").submit();
			}else{
				alert("url 중복체크 먼저 하세요");
			}
			return;
		});
	});
</script>

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
							<!-- Messages: style can be found in dropdown.less-->

							<!-- /.messages-menu -->

							<!-- Notifications Menu -->



							<!-- User Account Menu -->
							<li class="dropdown user user-menu">
								<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> <!-- The user image in the navbar--> <!-- hidden-xs hides the username on small devices so only the image appears. -->
									<span class="hidden-xs">Create Workspace</span>
							</a>
								<ul class="dropdown-menu">
									<!-- The user image in the menu -->
									<li class="user-header">


										<p>
											ë¡ê·¸ì¸ëìí¬ì¤íì´ì¤<small>Member since Nov. 2012</small>
										</p>
									</li>
									<!-- Menu Body -->
									<li class="user-body">
										<div class="row">
											<div class="col-xs11 text-center">
												<a href="#"> Sign Into Another Workspace</a>
											</div>


										</div> <!-- /.row -->
									</li>
									<!-- Menu Footer-->
									<li class="user-footer">
										<div class="pull-left">
											<a href="#" class="btn btn-default btn-flat">Profile</a>
										</div>
										<div class="pull-right">
											<a href="#" class="btn btn-default btn-flat">Sign out</a>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- /.navbar-custom-menu -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>
		<!-- Full Width Column -->
		<div class="content-wrapper" style="min-height: 863px;">
			<div class="container">
				<!-- Content Header (Page header) -->
				<section class="content-header"></section>


				<!-- Main content -->
				<section class="content">
					<div class="col-lg-16">
						<div class="card">
							<div class="card">
								<form action="${pageContext.request.contextPath }/createrep.do" method="post" class="">
									<div class="card-body card-block">

										<h3>What's your name?</h3>
										<br>
										<label class="control-label mb-1">This is how your teammates in Slack will see and
											refer to you</label>

										<div class="form-group">
											<div class="input-group">
												<div class="input-group-addon">Display name</div>
												<input type="text" id="nickname" name="nickname" class="form-control" required="required">
											</div>
										</div>


									</div>
									<div class="card-body card-block">
										<h3>What's your grop called?</h3>
										<br>
										<label class="control-label mb-1">Grop name</label>

										<div class="row form-group">
											<div class="col-5">
												<input type="text" name="rep_name" placeholder="" class="form-control" required="required">
											</div>
										</div>

										<label class="form-text text-muted">We'll use this to name your Slack workspace,
											which you can always change later.</label>
										<br>
									</div>
									<div class="card-body card-block">
										<h3>What's URL do you want for your Slack workspace?</h3>
										<br>
										<label class="form-text text-muted">Choose the address you'll use to sign in to
											Slack</label> <label class="control-label mb-1">Your workspace URL</label>

										<div class="row form-group">
											<div class="col-3">
												<input type="text" id="repurl" name="rep_url" placeholder="" class="form-control" required="required">
											</div>
											<label class="control-label mb-1">.jixx.com</label>
										</div>
										<input type="button"	id="urlCheck" value="url 중복체크"class="btn btn-primary btn-sm"> 
										<span id="urlResult"></span>
										<button type="button" class="btn btn-primary btn-sm" id="createws">Create Workspace</button>
									</div>
								</form>
							</div>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="container">
				<div class="pull-right hidden-xs">
					<b>Version</b> 2.4.0
				</div>
				<strong>Copyright Â© 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.
				</strong> All rights reserved.
			</div>
			<!-- /.container -->
		</footer>
	</div>
	<!-- ./wrapper -->


</body>
</html>