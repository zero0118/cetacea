<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../template/header.jsp" flush="false"/>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="skin-blue layout-top-nav" style="height: auto; min-height: 100%;">
  <div class="wrapper" style="height: auto; min-height: 100%;">

    <header class="main-header">
      <nav class="navbar navbar-static-top">
        <div class="container">
          <div class="navbar-header">
            <a href="../../index2.html" class="navbar-brand">Spring<b>JIXX</b></a>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
              <i class="fa fa-bars"></i>
            </button>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse pull-left" id="navbar-collapse">


          </div>
          <!-- /.navbar-collapse -->
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              
              <!-- /.messages-menu -->

              <!-- Notifications Menu -->
              
              
              
              <!-- User Account Menu -->
              <li class="dropdown user user-menu">
                <!-- Menu Toggle Button -->
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  <!-- The user image in the navbar-->
                  
                  <!-- hidden-xs hides the username on small devices so only the image appears. -->
                  <span class="hidden-xs">Create Workspace</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- The user image in the menu -->
                  <li class="user-header">


                    <p>ë¡ê·¸ì¸ëìí¬ì¤íì´ì¤<small>Member since Nov. 2012</small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div class="row">
                      <div class="col-xs11 text-center">
                        <a href="#"> Sign Into Another Workspace</a>
                      </div>
                      
                      
                    </div>
                    <!-- /.row -->
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
        <section class="content-header">


        </section>


        <!-- Main content -->
        <section class="content">
          <div class="col-lg-16">
           <div class="card">
            <div class="card-body card-block">
              <h3>What's URL do you want for your Slack workspace?</h3>
              <br>
              <label class="form-text text-muted">Choose the address you'll use to sign in to Slack</label>

              <label class="control-label mb-1">Your workspace URL</label>
              <form action="" method="post" class="form-horizontal">
                <div class="row form-group">
                  <div class="col-3">
                    <input type="text" name="Gropname" placeholder="" class="form-control">
                  </div><label class="control-label mb-1">.jixx.com</label>
                </div>
              </form>
              <button type="submit" class="btn btn-primary btn-sm">Create Workspace â</button>
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
        <strong>Copyright Â© 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
        reserved.
      </div>
      <!-- /.container -->
    </footer>
  </div>
  <!-- ./wrapper -->


</body>
</html>