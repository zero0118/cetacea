<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<body>
<h3>메일의 인증번호를 확인해주세요</h3>
<form action="${pageContext.request.contextPath }/verify.do" method="post">
<input type="text" name="verify">
<button type="submit">인증</button>
</form>
</body>
</html>
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp" flush="false"/>

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
                    

                    <p>로그인된워크스페이스<small>Member since Nov. 2012</small>
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
              <h3>Check your email</h3>
              <br>
              <label class="control-label mb-1">Your confirmaiton code</label>
              <form action="${pageContext.request.contextPath }/verify.do" method="post">
                <div class="row form-group">
                  <div class="col-5">
                  <input type="text" name="verify" placeholder="받은 인증번호를 입력해주세요" class="form-control">                   
                  </div>
                </div>
              </form>
              <br>
              <button type="submit" class="btn btn-primary btn-sm">Submit</button>
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
      <strong>Copyright © 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
      reserved.
    </div>
    <!-- /.container -->
  </footer>
</div>
<!-- ./wrapper -->


</body>
</html>