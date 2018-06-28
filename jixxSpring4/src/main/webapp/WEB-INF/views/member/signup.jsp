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
		sendRequest("<%=request.getContextPath()%>
	/idCheck.do?email="
				+ f.email.value, null, check_res, "GET");
	}

	function check_res() {
		if (httpRequest.readyState == 4) {
			if (httpRequest.status = 200) {
				var check_div = document.getElementById("check_div");
				check_div.innerHTML = httpRequest.responseText;
			}
		}
	}
</script>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="../../index2.html">Spring<b>JIXX</b></a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">Sign in to start your session</p>

			<form action="<%=request.getContextPath()%>/member/insert.do"
				method="post" name="f">
				<div class="form-group has-feedback">
					<input type="email" class="form-control" placeholder="Email"
						name="email" required="required"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div>
					<input type="button" value="중복체크" onclick="check()">
				</div>
				<div id="check_div"></div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" placeholder="Password"
						name="pwd" required="required"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="text" class="form-control" placeholder="name"
						name="name" required="required"> <span
						style="width: 34px;"
						class=" glyphicon-envelope form-control-feedback fa fa-fw fa-user"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck"></div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">JOIN</button>
						<input type="button" id="cancel" value="취소" />
					</div>
					<!-- /.col -->
				</div>
			</form>


			<!-- /.social-auth-links -->


		</div>
		<!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' /* optional */
			});
		});
	</script>



</body>
</html>
