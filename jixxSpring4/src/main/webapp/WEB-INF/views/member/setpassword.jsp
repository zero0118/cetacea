<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../template/header.jsp" flush="false" />
<script type="text/javascript">
	function isSame() {
		var pwd = $('#pwd').val();
		var pwd2 = $('#pwdcheck').val();
		var same = document.getElementById("same");
		if (pwd.length < 6 || pwd.length > 16) {
			window.alert("비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.");
			document.getElementById('same').innerHTML = '비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.';
		} else {
			if (pwd != "" && pwd2 != "") {
				if (pwd==pwd2) {
					same.innerHTML = "비밀번호가 일치합니다";
					same.style.color = 'blue';
				} else {
					same.innerHTML = "비밀번호가 일치하지 않습니다";
					same.style.color = "red";
				}
			}
		}
	}
	$(function(){
		$('#setpw').click(function(){
			var pwsame = $('#same').text().trim();
			if(pwsame=='비밀번호가 일치합니다'){
				$('#setpwform').submit();				
			}else{
				alert("비밀번호가 일치하지 않습니다");
			}
			return;
		})
	})
</script>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="skin-blue layout-top-nav"
	style="height: auto; min-height: 100%;">
	<div class="wrapper" style="height: auto; min-height: 100%;">

		<header class="main-header">
			<nav class="navbar navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<a href="../../index2.html" class="navbar-brand">Spring<b>JIXX</b></a>
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
							<!-- Messages: style can be found in dropdown.less-->

							<!-- /.messages-menu -->

							<!-- Notifications Menu -->



							<!-- User Account Menu -->
							<li class="dropdown user user-menu">
								<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
								data-toggle="dropdown" aria-expanded="false"> <!-- The user image in the navbar-->

									<!-- hidden-xs hides the username on small devices so only the image appears. -->
									<span class="hidden-xs">Create Workspace</span>
							</a>
								<ul class="dropdown-menu">
									<!-- The user image in the menu -->
									<li class="user-header">


										<p>
											ë¡ê·¸ì¸ëìí¬ì¤íì´ì¤<small>Member since
												Nov. 2012</small>
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
							<div class="card-body card-block">

								<h3>Set your New password</h3>
								<br> <label class="control-label mb-1"></label>
								<form action="<%=request.getContextPath()%>/setnewpass.do"
									method="post" class="" id="setpwform">
									<c:set var="email" value="${email}"/>
									<input type="hidden" name="email" value="${email}">									<div class="form-group">
										<div class="input-group">
											<div class="input-group-addon">Password</div>
											<input type="password" id="pwd" name="pwd"
												class="form-control" onchange="isSame()">
										</div>
										<div class="input-group">
											<div class="input-group-addon">Password Check</div>
											<input type="password" id="pwdcheck" name="password2"
												class="form-control" onchange="isSame()">
										</div>
										<span
												id="same"></span>
									</div>
								</form>
								<button type="button" class="btn btn-primary btn-sm" id="setpw">New
									Password Setting Done</button>
							</div>
						</div>
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
				<strong>Copyright Â© 2014-2016 <a
					href="https://adminlte.io">Almsaeed Studio</a>.
				</strong> All rights reserved.
			</div>
			<!-- /.container -->
		</footer>
	</div>
	<!-- ./wrapper -->


</body>
</html>