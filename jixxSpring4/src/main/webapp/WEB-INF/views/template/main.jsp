<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="mainHeader.jsp" flush="false" />
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- Main Header -->
		<header class="main-header">

			<!-- Logo -->
			<a href="${pageContext.request.contextPath }/index.do" class="logo"><img src="images/logo.png"
				alt="Logo"> </a>

			<!-- Header Navbar -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						<li class="dropdown messages-menu">
							<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-envelope-o"></i> <span
								class="label label-success">4</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 4 messages</li>
								<li>
									<!-- inner menu: contains the messages -->
									<ul class="menu">
										<li>
											<!-- start message --> <a href="#">
												<div class="pull-left">
													<!-- User Image -->
													<img src="dist/img/user2-160x160.jpg" class="img-circle"
														alt="User Image">
												</div> <!-- Message title and timestamp -->
												<h4>
													Support Team <small><i class="fa fa-clock-o"></i> 5
														mins</small>
												</h4> <!-- The message -->
												<p>Why not buy a new awesome theme?</p>
										</a>
										</li>
										<!-- end message -->
									</ul> <!-- /.menu -->
								</li>
								<li class="footer"><a href="#">See All Messages</a></li>
							</ul>
						</li>
						<!-- /.messages-menu -->

						<!-- Notifications Menu -->
						<li class="dropdown notifications-menu">
							<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-bell-o"></i> <span
								class="label label-warning">10</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 10 notifications</li>
								<li>
									<!-- Inner Menu: contains the notifications -->
									<ul class="menu">
										<li>
											<!-- start notification --> <a href="#"> <i
												class="fa fa-users text-aqua"></i> 5 new members joined
												today
										</a>
										</li>
										<!-- end notification -->
									</ul>
								</li>
								<li class="footer"><a href="#">View all</a></li>
							</ul>
						</li>
						<!-- Tasks Menu -->
						<li class="dropdown tasks-menu">
							<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-flag-o"></i> <span
								class="label label-danger">9</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 9 tasks</li>
								<li>
									<!-- Inner menu: contains the tasks -->
									<ul class="menu">
										<li>
											<!-- Task item --> <a href="#"> <!-- Task title and progress text -->
												<h3>
													Design some buttons <small class="pull-right">20%</small>
												</h3> <!-- The progress bar -->
												<div class="progress xs">
													<!-- Change the css width attribute to simulate progress -->
													<div class="progress-bar progress-bar-aqua"
														style="width: 20%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">20% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
									</ul>
								</li>
								<li class="footer"><a href="#">View all tasks</a></li>
							</ul>
						</li>
						<!-- User Account Menu -->
						<li class="dropdown user user-menu">
							<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <!-- The user image in the navbar-->
								<img src="dist/img/user2-160x160.jpg" class="user-image"
								alt="User Image"> <!-- hidden-xs hides the username on small devices so only the image appears. -->
								<span class="hidden-xs">Alexander Pierce</span>
						</a>
							<ul class="dropdown-menu">
								<!-- The user image in the menu -->
								<li class="user-header"><img
									src="dist/img/user2-160x160.jpg" class="img-circle"
									alt="User Image">

									<p>
										Alexander Pierce - Web Developer <small>Member since
											Nov. 2012</small>
									</p></li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="row">
										<div class="col-xs-4 text-center">
											<a href="#">Followers</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">Sales</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">Friends</a>
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
						<!-- Control Sidebar Toggle Button -->
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">

			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">

				<!-- Sidebar user panel (optional) -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="dist/img/user2-160x160.jpg" class="img-circle"
							alt="User Image">
					</div>
					<div class="pull-left info">
						<p>Alexander Pierce</p>
						<!-- Status -->
						<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>

				<ul class="sidebar-menu" data-widget="tree">
					<li class="header"><a href="index.html"> <i
							class="fa fa-sun-o"></i>All Threads
					</a></li>
				</ul>

				<!-- search form (Optional) -->
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="Search..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->

				<!-- Sidebar Menu -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header"><a href="index.html"> Channels &nbsp;
							&nbsp;<i class="fa fa-plus-circle"></i>
					</a>
					<li><a href="<%= request.getContextPath() %>/post/list.do?page=1&cn=2"> <i class="fa fa-asterisk"></i>Channel 1
					</a></li>
					<li><a href="#"><i id="icon2" class="fa fa-lock"></i>Channel
							2</a></li>
					</li>
					<li class="header"><a href="index.html"> Direct Messages
							&nbsp; <i class="fa fa-plus-circle"></i>
					</a>
					<li><a href="#"><i class="fa fa fa-user"></i>ì¬ë 1</a></li>
					<li><a href="#"><i class="fa fa-users"></i>ì¬ë 2</a></li>
					</li>
					<li class="header"><a href="${pageContext.request.contextPath }/moreteam.do"> Invate People
							&nbsp; <i class="fa fa-plus-circle"></i>
					</a></li>


				</ul>
				<!-- /.sidebar-menu -->
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>#Channels1</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content container-fluid">

				<section class="content">

					<!-- row -->
					<div class="row">
						<div class="col-md-12">
							<!-- The time line -->
							<ul class="timeline">
								<!-- timeline time label -->
								<li class="time-label"><span class="bg-red"> 10 Feb.
										2014 </span></li>
								<!-- /.timeline-label -->
								<!-- timeline item -->
								<li><i class="fa fa-envelope bg-blue"></i>

									<div class="timeline-item">
										<span class="time"><i class="fa fa-clock-o"></i> 12:05</span>

										<h3 class="timeline-header">
											<a href="#">Support Team</a>
											<div class="timelinebtn">
												<a class="btn btn-danger btn-xs">Delete</a>
											</div>
										</h3>

										<div class="timeline-body">Etsy doostang zoodles disqus
											groupon greplin oooj voxy zoodles, weebly ning heekya
											handango imeem plugg dopplr jibjab, movity jajah plickers
											sifteo edmodo ifttt zimbra. Babblely odeo kaboodle quora
											plaxo ideeli hulu weebly balihoo...</div>
									</div></li>
								<li><i class="fa fa-envelope bg-blue"></i>

									<div class="timeline-item">
										<span class="time"><i class="fa fa-clock-o"></i> 12:05</span>

										<h3 class="timeline-header">
											<a href="#">Support Team</a>
											<div class="timelinebtn">
												<a class="btn btn-danger btn-xs">Delete</a>
											</div>
										</h3>

										<div class="timeline-body">Etsy doostang zoodles disqus
											groupon greplin oooj voxy zoodles, weebly ning heekya
											handango imeem plugg dopplr jibjab, movity jajah plickers
											sifteo edmodo ifttt zimbra. Babblely odeo kaboodle quora
											plaxo ideeli hulu weebly balihoo...</div>
									</div></li>

								<!-- END timeline item -->
								<!-- timeline item -->
								<li><i class="fa fa-user bg-aqua"></i>

									<div class="timeline-item">
										<span class="time"><i class="fa fa-clock-o"></i> 5 mins
											ago</span>

										<h3 class="timeline-header no-border">
											<a href="#">Sarah Young</a> accepted your friend request
										</h3>
									</div></li>
								<!-- END timeline item -->
								<!-- timeline item -->
								<c:forEach items="${list}" var="post">
								<li><i class="fa fa-comments bg-yellow"></i>

									<div class="timeline-item">
										<span class="time"><i class="fa fa-clock-o"></i>${post.logdate}</span>

										<h3 class="timeline-header">
											<a href="#">${post.nickname}</a>
											<div class="timelinebtn">
												<a class="btn btn-danger btn-xs">Delete</a>
											</div>
										</h3>

										<div class="timeline-body">${post.content}</div>
										<a href="<%= request.getContextPath() %>/psot/download.do?filename=${ post.file_original}">${ post.fileName}</a>
									</div></li>
								</c:forEach>
								<!-- END timeline item -->
								<!-- timeline time label -->
								<li class="time-label"><span class="bg-green"> 3
										Jan. 2014 </span></li>
								<!-- /.timeline-label -->
								<!-- timeline item -->
								<li><i class="fa fa-camera bg-purple"></i>

									<div class="timeline-item">
										<span class="time"><i class="fa fa-clock-o"></i> 2 days
											ago</span>

										<h3 class="timeline-header">
											<a href="#">Mina Lee</a> uploaded new photos
											<div class="timelinebtn">
												<a class="btn btn-danger btn-xs">Delete</a>
											</div>
										</h3>

										<div class="timeline-body">
											<img src="http://placehold.it/150x100" alt="..."
												class="margin"> <img src="http://placehold.it/150x100"
												alt="..." class="margin"> <img
												src="http://placehold.it/150x100" alt="..." class="margin">
											<img src="http://placehold.it/150x100" alt="..."
												class="margin">
										</div>
									</div></li>
								<!-- timeline item -->

								<!-- END timeline item -->
								<li><i class="fa fa-clock-o bg-gray"></i></li>
							</ul>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->

				</section>

			</section>
			<!-- /.content -->

		</div>
		<!-- /.content-wrapper -->
		
	<%@include file="mainFooter.jsp"%>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li class="active"><a href="#control-sidebar-home-tab"
					data-toggle="tab"><i class="fa fa-home"></i></a></li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
						class="fa fa-gears"></i></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane active" id="control-sidebar-home-tab">
					<h3 class="control-sidebar-heading">Recent Activity</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:;"> <i
								class="menu-icon fa fa-birthday-cake bg-red"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

									<p>Will be 23 on April 24th</p>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

					<h3 class="control-sidebar-heading">Tasks Progress</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:;">
								<h4 class="control-sidebar-subheading">
									Custom Template Design <span class="pull-right-container">
										<span class="label label-danger pull-right">70%</span>
									</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-danger"
										style="width: 70%"></div>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
					Content</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<form method="post">
						<h3 class="control-sidebar-heading">General Settings</h3>

						<div class="form-group">
							<label class="control-sidebar-subheading"> Report panel
								usage <input type="checkbox" class="pull-right" checked>
							</label>

							<p>Some information about this general settings option</p>
						</div>
						<!-- /.form-group -->
					</form>
				</div>
				<!-- /.tab-pane -->
			</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
    immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->


</body>
</html>