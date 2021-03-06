<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../template/lheader.jsp" flush="false" />
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
		var email = $('input#emailinput').val();
		if (email == "") {
			alert("아이디를입력하세요");
		} else {
			if (email.length <= 10) {
				alert("전체아이디를입력하세요")
			} else {
				sendRequest("<%=request.getContextPath()%>/idCheck.do?email=" + f.email.value+"&checkfrom=signup", null, check_res, "GET");
			}

		}
	}

	function check_res() {
		if (httpRequest.readyState == 4) {
			if (httpRequest.status = 200) {
				var check_div = document.getElementById("check_div");
				check_div.innerHTML = httpRequest.responseText;
			}
		}
	}
	$(function() {
		$('#join').click(function() {
			var idCheckResult = $('#check_div').text().trim();
			if (idCheckResult == "") {
				alert("id중복확인 해주세요")
			} else {
				if (idCheckResult == "사용불가능한 아이디") {
					alert("다른 id를 입력하세요");
				} else {
					var email =$('#emailinput').val();
					var pwd =$('#pwd').val();
					var name =$('#name').val();					
					if (email !="" && pwd!= "" && name != "") {
						$('#insertform').submit();
					} else {
						alert("칸을 모두채우세요")						
					}
					return;
				}
			}			
		});
	});
</script>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="${pageContext.request.contextPath}">FILE CETACEA</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">Sign in to start your session</p>

			<form action="<%=request.getContextPath()%>/member/insert.do"
				method="post" name="f" id="insertform">
				<div class="form-group has-feedback">
					<input type="email" class="form-control" placeholder="Email"
						name="email" required="required" id="emailinput"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div>
					<input type="button" value="중복체크" onclick="check()"
						class="btn btn-primary btn-block btn-flat">
				</div>
				<div id="check_div"></div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" placeholder="Password"
						name="pwd" required="required" id="pwd"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="text" class="form-control" placeholder="name"
						name="name" required="required" id="name"> <span
						style="width: 34px;"
						class=" glyphicon-envelope form-control-feedback fa fa-fw fa-user"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck"></div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button style="display: inline;" type="button" id="join"
							class="btn btn-primary btn-block btn-flat">JOIN</button>
						<input type="button" id="cancel" value="취소"
							class="btn btn-primary btn-block btn-flat"
							onclick="location.href='${pageContext.request.contextPath }/member/loginForm.do'" />
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
