<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp" flush="false" />
<div class="content-wrapper" style="min-height: 863px;">
	<div class="container">
		<!-- Main content -->
		<section class="content">
			<div class="card">
				<div class="card-body card-block">

					<div class="nav-tabs-custom">
						<div class="tab-pane active" id="settings">
							<form class="form-horizontal">

								<div class="form-group">
									<label for="inputEmail" class="col-sm-2 control-label">Email</label>

									<div class="col-sm-10">
										<input type="email" class="form-control" id="inputEmail"
											placeholder="Email">
									</div>
								</div>

								<div class="form-group">
									<label for="inputName" class="col-sm-2 control-label">Name</label>

									<div class="col-sm-10">
										<input type="email" class="form-control" id="inputName"
											placeholder="Name">
									</div>
								</div>

								<div class="form-group">
									<label for="inputNickName" class="col-sm-2 control-label">NickName</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" id="NickName"
											placeholder="NickName">
									</div>
								</div>

								<div class="form-group">
									<label for="inputAuthority" class="col-sm-2 control-label">Authority</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" id="inputAuthority"
											placeholder="Authority">
									</div>
								</div>

								<div class="form-group">
									<label for="inputImg" class="col-sm-2 control-label">img</label>

									<div class="col-sm-10">
										<input type="file" class="form-control" id="inputImg"
											placeholder="img">
									</div>
								</div>

							</form>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-danger">Submit</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- /.content -->
	</div>
	<!-- /.container -->
</div>

</body>
</html>
