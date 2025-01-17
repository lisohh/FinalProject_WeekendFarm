<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>주말농장 | 관리자페이지</title>

<!-- Font Awesome Icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jjs/adminMain.css">
<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
<script src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<jsp:include page="include/header.jsp" />

		<jsp:include page="include/aside.jsp" />

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1419.6px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>주문 상세정보</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="main">Home</a></li>
								<li class="breadcrumb-item"><a href="orderList">주문목록</a></li>
								<li class="breadcrumb-item active">주문 상세정보</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">

							<!-- Profile Image -->
							<div class="card card-primary card-outline">
								<div class="card-body box-profile">

									<ul class="list-group list-group-unbordered mb-3 h5">
										<li class="list-group-item"><b>주문번호</b> <a class="float-right">210924_332142</a></li>
										<li class="list-group-item"><b>수령인</b> <a class="float-right">홍길동</a></li>
										<li class="list-group-item"><b>전화번호</b> <a class="float-right">010-1111-1111</a></li>
										<li class="list-group-item"><b>주소</b> <a class="float-right">331-213 서울특별시 종로구 종로3가</a></li>
										<li class="list-group-item"><b>주문가격</b> <a class="float-right">1,000원</a></li>
										<li class="list-group-item"><b>결제일</b> <a class="float-right">21-09-24</a></li>
									</ul>

								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->

						</div>
						<!-- /.col -->
						<div class="col-lg-6">
							<div class="card card-primary">
								<div class="card-header">
									<span><a href="#">상품이름</a></span> <span class="float-right">1,000원</span>
								</div>
								<div class="card-body">
									<a href="#"><img class="img-fluid" src="${pageContext.request.contextPath}/dist/img/photo1.png" alt="Photo"></a>
								</div>
							</div>
						</div>

						<div class="col-lg-6">
							<div class="card card-primary">
								<div class="card-header">
									<span><a href="#">상품이름</a></span> <span class="float-right">1,000원</span>
								</div>
								<div class="card-body">
									<a href="#"><img class="img-fluid" src="${pageContext.request.contextPath}/dist/img/photo1.png" alt="Photo"></a>
								</div>
							</div>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->


		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
			<div class="p-3">
				<h5>Title</h5>
				<p>Sidebar content</p>
			</div>
		</aside>
		<!-- /.control-sidebar -->

		<jsp:include page="include/footer.jsp" />
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<jsp:include page="include/plugin_js.jsp" />

</body>
</html>

