<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp" flush="false" />
<script type="text/javascript">
</script>
<body class="skin-blue layout-top-nav" style="height: auto; min-height: 100%;">
	<c:set var="email" value="${email}" />
	<div class="wrapper" style="height: auto; min-height: 100%;">
		<header>
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active"
						style="background-image: url('resources/images/index1.jpg'); height: 950px;">
						<div class="carousel-caption d-none d-md-block">
							<h3>FILE CETACEA</h3>
							<p>*(파일공유 그룹웨어)</p>
						</div>
					</div>
				</div>
			</div>
		</header>
	</div>
</body>
</html>