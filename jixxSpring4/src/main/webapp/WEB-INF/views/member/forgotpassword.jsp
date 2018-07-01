<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp" flush="false" />
<script type="text/javascript">
	function getXMLHttpRequest() {
		if (window.ActiveXObject) {
			try {
				return new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					return new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e1) {
					return null;
				}
			}
		} else if (window.XMLHttpRequest) {
			return new XMLHttpRequest();
		} else {
			return null;
		}
	}
	var httpRequest = null;

	function sendRequest(url, params, callback, method) {
		httpRequest = getXMLHttpRequest();
		var httpMethod = method ? method : 'GET';
		if (httpMethod != 'GET' && httpMethod != 'POST') {
			httpMethod = 'GET';
		}
		var httpParams = (params == null || params == '') ? null : params;
		var httpUrl = url;
		if (httpMethod == 'GET' && httpParams != null) {
			httpUrl = httpUrl + "?" + httpParams;
		}
		httpRequest.open(httpMethod, httpUrl, true);
		httpRequest.setRequestHeader(
			'Content-Type', 'application/x-www-form-urlencoded');
		httpRequest.onreadystatechange = callback;
		httpRequest.send(httpMethod == 'POST' ? httpParams : null);
	}

	function check() {
		var email = $('#emailinput').val();
		if (email == "") {
			alert("아이디를입력하세요");
		} else {
			if (email.length <= 10) {
				alert("전체아이디를입력하세요")
			} else {
				sendRequest("<%=request.getContextPath()%>/idCheck.do?email=" + email + "&checkfrom=forgotpass", null, check_res1, "GET");

			}
		}
	}
	function check_res1() {
		if (httpRequest.readyState == 4) {
			if (httpRequest.status = 200) {
				var check_div = document.getElementById("check_div");
				check_div.innerHTML = httpRequest.responseText;
			}
		}
	}
	$(function() {
		$('#verify').click(function() {
			var idCheckResult = $('#check_div').text().trim();
			if (idCheckResult == "") {
				alert("아이디 체크 먼저 하세요")
			} else {
				if (idCheckResult == "존재하지 않는 아이디입니다 회원가입하세요") {
					alert("로그인창으로이동합니다")
					$(location).attr('href', "${pageContext.request.contextPath}/member/signup.do");
				} else {
					$('#insertform').submit();
				}
			}
		})
	})
</script>

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
								<h3>Find forgotten password</h3>
								<br> <label class="control-label mb-1">Your email
									address</label>
								<form action="${pageContext.request.contextPath }/emailauth.do"
									method="post" class="form-horizontal" id="insertform">
									<div class="row form-group">
										<div class="col-6">
											<input type="email" name="email" class="form-control"
												id="emailinput"> <input type="hidden"
												name="requestfrom" value="findpass">
										</div>

									</div>
									<div>
										<input type="button" value="아이디체크" onclick="check()"
											class="btn btn-primary btn-block btn-flat">
									</div>
									<div id="check_div"></div>
									<button type="button" class="btn btn-block btn-primary btn-lg"
										id="verify">인증번호전송</button>
								</form>
								<br>
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
