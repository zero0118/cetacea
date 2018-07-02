<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp" flush="false" />
<div class="content-wrapper" style="min-height: 863px;">
	<div class="container">
		<section class="content">
			<div class="col-lg-16">
				<div class="card">
					<div class="card-body card-block">
						<h3>What's URL do you want for your FILE CETACEA workspace?</h3>
						<br> <label class="form-text text-muted">Choose the
							address you'll use to sign in to Slack</label> <label
							class="control-label mb-1">Your workspace URL</label>
						<form action="" method="post" class="form-horizontal">
							<div class="row form-group">
								<div class="col-3">
									<input type="text" name="Gropname" placeholder=""
										class="form-control">
								</div>
								<label class="control-label mb-1">.FILE CETACEA.com</label>
							</div>
						</form>
						<button type="submit" class="btn btn-primary btn-sm">Create
							Workspace â</button>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
</body>
</html>