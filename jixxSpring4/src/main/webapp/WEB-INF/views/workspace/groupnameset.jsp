<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp" flush="false" />
<div class="content-wrapper" style="min-height: 863px;">
	<div class="container">
		<!-- Content Header (Page header) -->
		<section class="content-header"></section>


		<!-- Main content -->
		<section class="content">
			<div class="col-lg-16">
				<div class="card">
					<div class="card-body card-block">
						<h3>What's your grop called?</h3>
						<br> <label class="control-label mb-1">Grop name</label>
						<form action="" method="post" class="form-horizontal">
							<div class="row form-group">
								<div class="col-5">
									<input type="text" name="Gropname" placeholder=""
										class="form-control">
								</div>
							</div>
						</form>
						<label class="form-text text-muted">We'll use this to name
							your Slack workspace, which you can always change later.</label> <br>
						<button type="submit" class="btn btn-primary btn-sm">Continue
							to Workspace URL â</button>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>

</body>
</html>