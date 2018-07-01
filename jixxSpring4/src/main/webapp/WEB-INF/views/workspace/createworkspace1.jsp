<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../template/header.jsp" flush="false" />
<body class="skin-blue layout-top-nav"
	style="height: auto; min-height: 100%;">
	<div class="wrapper" style="height: auto; min-height: 100%;">	
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
								<h3>Create a new workspace</h3>
								<br> <label class="control-label mb-1">Your email
									address</label>
								<form action="${pageContext.request.contextPath }/emailauth.do"
									method="post" class="form-horizontal">
									<div class="row form-group">
										<div class="col-6">
											<c:set var="m" value="${m}" />
											<input type="text" name="email" placeholder=""
												class="form-control" value="${m.email}"> <input
												type="hidden" name="requestfrom" value="createws">
										</div>
									</div>
									<button type="submit" class="btn btn-block btn-primary btn-lg">인증번호전송</button>
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
</html>