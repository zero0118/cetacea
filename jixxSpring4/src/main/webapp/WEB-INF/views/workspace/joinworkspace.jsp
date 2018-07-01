<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp" flush="false" />
<div class="content-wrapper" style="min-height: 863px;">
	<div class="container">
		<section class="content">
			<div class="col-lg-16">
				<div class="card">
					<div class="card-body card-block">

						<h3>Join the Jixx workspace jas</h3>
						<br>
						<form action="" method="post" class="">
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">Full name</div>
									<input type="text" id="Fullname" name="Fullname"
										class="form-control" placeholder="Full name">
								</div>
							</div>

							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">Display name (optional)</div>
									<input type="text" id="Displayname" name="Displayname"
										class="form-control" placeholder="Display name (optional)">
								</div>
							</div>

							<label class="form-text text-muted">By default, JiXX use
								your full name -but ou can choose sometiong shorter if your'd
								like.</label>

							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">Password</div>
									<input type="password" id="password" name="password"
										class="form-control" placeholder="Password">
								</div>
							</div>

							<label class="form-text text-muted">Passwords must be at
								least least 6 characters long, and can't be things like
								"password","123445" or "abcdef".</label>

						</form>
						<button type="submit" class="btn btn-primary btn-sm">Next</button>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
</body>
</html>