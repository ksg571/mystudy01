<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="utf-8">
<title>���ַ� �÷�</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- ������Ʈ �ΰ� -->
<link href="resources/img/logo.png" rel="icon">

<link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="resources/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="resources/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="resources/lib/prettyphoto/css/prettyphoto.css"
	rel="stylesheet">
<link href="resources/lib/hover/hoverex-all.css" rel="stylesheet">
<link href="resources/lib/jetmenu/jetmenu.css" rel="stylesheet">
<link href="resources/lib/owl-carousel/owl-carousel.css"
	rel="stylesheet">
<!-- Main Stylesheet File -->
<link href="resources/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/colors/blue.css">
<link href="resources/css/bbpress.css" rel="stylesheet">

<!-- �߰� CSS ���� -->

<!-- ���� ���� css -->
<link href="resources/css/reviews.css" rel="stylesheet">
<!-- �޷� -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<!-- �߰� CSS �� -->
</head>
<body>
	<!-- �ֻ�� bar ���� -->
	<div class="topbar clearfix">
		<div class="container">
			<div class="col-lg-12 text-right">
				<div class="social_buttons">
					<!-- �α��� ȸ������ -->
					<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
					<c:choose>
						<c:when test="${sessionScope.uuId == null }">
							<a href="loginForm" style="float: left; width: 60px">�α��� |</a>&nbsp;&nbsp;
							<a href="registerForm" style="float: left; width: 60px">ȸ������</a>
						</c:when>
						<c:otherwise>
							<a href="logout" style="float: left; width: 60px">�α׾ƿ� </a>
							<a href="" style="float: left; width: 150px">|${sessionScope.uName}
								�� ȯ���մϴ�.</a>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${sessionScope.uuId == null }">

						</c:when>
						<c:otherwise>

						</c:otherwise>
					</c:choose>

					<!-- �˻� -->
					<a href="search" data-toggle="tooltip" data-placement="bottom"
						title="�˻�"><i class="fa fa-rss"></i></a> <a
						href="https://ko-kr.facebook.com/" data-toggle="tooltip"
						data-placement="bottom" title="Facebook"><i
						class="fa fa-facebook"></i></a> <a href="https://twitter.com/?lang=ko"
						data-toggle="tooltip" data-placement="bottom" title="Twitter"><i
						class="fa fa-twitter"></i></a> <a href="https://www.google.com/"
						data-toggle="tooltip" data-placement="bottom" title="Google+"><i
						class="fa fa-google-plus"></i></a>
				</div>
			</div>
		</div>
		<!-- end container -->
	</div>
	<!-- �ֻ�� bar �� -->
	<!-- �޴�â ���� -->
	<header class="header">
		<div class="container">
			<div class="site-header clearfix">
				<div class="col-lg-3 col-md-3 col-sm-12 title-area">
					<div class="site-title" id="title">
						<a href="home" title="">
							<h4>
								<img alt=""
									src="resources/img/plan_icon/icons8-south-korea-map-50.png">���ַ�<span>�÷�</span>
							</h4>
						</a>
					</div>
				</div>
				<!-- title area -->
				<div class="col-lg-9 col-md-12 col-sm-12">
					<div id="nav" class="right">
						<div class="container clearfix">
							<ul id="jetmenu" class="jetmenu blue">
								<li class="active"><a href="home">Ȩ</a></li>
								<li><a href="tourList">������</a> <!-- ��з� -->
									<ul class="dropdown">
										<li><a href="tourList">����</a></li>
										<!-- �Һз�  -->
										<li><a href="tourList">�ڿ�</a></li>
										<li><a href="tourList">��ȭ</a></li>
										<li><a href="tourList">�׸�</a></li>
										<li><a href="tourList">�÷�</a></li>
									</ul></li>
								<li><a href="house">����</a>
									<ul class="dropdown">
										<li><a href="house">����</a></li>
										<li><a href="house">ȣ��</a></li>
										<li><a href="house">ȣ����</a></li>
										<li><a href="house">�ܵ�</a></li>
									</ul></li>
								<li><a href="notice">��������</a>
									<ul class="dropdown">
										<li><a href="notice">��������</a></li>
										<li><a href="faq">���ֹ�������</a></li>
										<li><a href="contact">���ǻ���</a></li>
									</ul></li>
								<li><a href="404">�����̾߱�</a>
									<ul class="dropdown">
										<li><a href="jejustory">�����̾߱�</a></li>
										<li><a href="blog">��α�</a></li>
										<li><a href="etc">��Ÿ���</a></li>
									</ul></li>
								<li><a href="404">������</a>
									<ul class="dropdown">
										<li><a href="chart">��Ʈ</a></li>
										<li><a href="bigdata">��õ</a></li>
										<li><a href="weather">����</a></li>
									</ul></li>
								<c:choose>
									<c:when test="${sessionScope.uuId != null }">
										<li><a href="mypage">����������</a>
											<ul class="dropdown">
												<li><a href="mypage">���ǿ���</a></li>
												<li><a href="pickTourspot">pick ������</a></li>
												<li><a href="pickhouse">pick ����</a></li>
												<li><a href="pickhouse">���� ����</a></li>
												<li><a href="myreview">���Ǹ���</a></li>
												<li><a href="infoModify">�����ϱ�</a></li>
											</ul></li>
									</c:when>
									<c:otherwise>
										<li><a href="loginForm">����������</a></li>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</div>
					<!-- nav -->
				</div>
				<!-- title area -->
			</div>
			<!-- site header -->
		</div>
		<!-- end container -->
	</header>
	<!-- �޴� â �� -->