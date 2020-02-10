<%@include file="../main/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<style>
#div1, #div2 {
	float: left;
	width: 100px;
	height: 80px;
	margin: 10px;
	padding: 10px;
	border: 1px solid black;
}
</style>
<link href="resources/css/pickTourspot.css" rel="stylesheet">


<section class="section1">
<br><br>
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

			<div class="clearfix"></div>

			<div class="col-lg-4 col-md-4 col-sm-4">
				<div class="item_image">
					<div id="myCarousel" class="carousel slide">
						<div class="carousel-inner">
							<div class="item active">
								<img src="resources/img/slides_01.jpg" alt="">
							</div>
							<!-- end item -->
							<div class="item">
								<img src="resources/img/slides_02.jpg" alt="">
							</div>
							<!-- end item -->
							<div class="item">
								<img src="resources/img/slides_03.jpg" alt="">
							</div>
							<!-- end item -->
						</div>
						<!-- carousel inner -->
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev"> <span class="icon-prev"></span>
						</a> <a class="right carousel-control" href="#myCarousel"
							data-slide="next"> <span class="icon-next"></span>
						</a>
					</div>
					<!-- end carousel -->
				</div>
				<!-- end item_image -->
			</div>
			<!-- end col-lg 8 -->

			<div class="col-lg-8 col-md-8 col-sm-12">
				<div class="portfolio_details">
					<div class="details_section">
						<div class="row">
							<div class="col-lg-10 col-md-10">
								<h2>
									TeamC<small>���� ���ֿ���</small>
								</h2>
							</div>
							<div class="col-lg-2 col-md-2">
								<a href="infoModify" style="color:orange; font-weight: bold;">��������</a>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12">
						<hr>
						<table>
							<tr>
								<td
									style="text-align: center; border-right: 1px solid #F5F5F5; width: 350px;">
									<ul>
										<li class="mypage">���� ��������: <span><a href="#">3</a></span></li>
										<li class="pickTourspot">���� ������: <span><a href="#">5</a></span></li>
										<li class="pickhouse">���� ����: <span><a href="#">2</a></span></li>

									</ul>
								</td>
								<td style="text-align: center; width: 350px;">
									<ul>
										<li class="">���� ����: <span><a href="#">1</a></span></li>
										<li class="myreview">���� ����: <span><a href="#">3</a></span></li>
										<li class="">���� ����: <span><a href="#">3</a></span></li>

									</ul>
								</td>
							</tr>
						</table>
						</div>
						</div>
					</div>
					<!-- details section -->
				</div>
				<!-- theme details -->
			</div>
			<!-- end col-lg 8 -->

			<div class="content col-lg-12 col-md-12 col-sm-12 clearfix" style="padding-bottom: 0px;">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<a href="mypage"><button style="font-size: medium;">����
							����</button></a> <a href="pickTourspot"><button style="font-size: medium;">����
							������</button></a>
					<a href="pickhouse"><button style="font-size: medium;">���� ����</button></a>
					<a href=""><button style="font-size: medium;">���� ����</button></a> <a
						href="myreview"><button style="font-size: medium;">����
							����</button></a>
							<a href=""><button style="font-size: medium;">���� ����</button></a>
				</div>
			</div>
			<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
				<h3 class="title">���� ������</h3>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
					<div class="box">
						<div class="clear">&nbsp;</div>
						<div class="img_box"
							onclick="window.open('/ko/city/istanbul_202/attraction/blue-mosque-sultan-ahmet-camii_3868');"
							style="cursor: pointer; margin-top: 1px;">
							<img
								src="http://img.earthtory.com/img/place_img/202/3868_0_et.jpg"
								alt="" class="box_img"
								onerror="this.src='/res/img/common/no_img/sight.png';">
						</div>
						<div class="box_inner">
							<div class="box_inner_bottom">
								<img src="/res/map/marker/301_0.png" alt="" class="box_pin">
								<div class="bottom_title"
									onclick="window.open('/ko/city/istanbul_202/attraction/blue-mosque-sultan-ahmet-camii_3868');">���
									��ũ(��ź�����Ʈ ��...</div>
								<div class="inner_bottom">
									<div class="clip_cnt">683</div>
									<div class="inner_bottom_line">&nbsp;</div>
									<div class="rate_val">9.0</div>
									<a href="undefined" target="_blank" class="btn_map"
										style="display: none">����</a>
									<div class="clear"></div>
								</div>
								<div class="inner_bottom">
									<div class="tag">���帶ũ</div>
									<div class="tag">��/�Ż�/���</div>
									<div class="clear">&nbsp;</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end content -->
	</div>
	<!-- end container -->
</section>
<!-- end section -->
<script>
	function allowDrop(ev) {
		ev.preventDefault();
	}

	function drag(ev) {
		ev.dataTransfer.setData("text", ev.target.id);
	}

	function drop(ev) {
		ev.preventDefault();
		var data = ev.dataTransfer.getData("text");
		ev.target.appendChild(document.getElementById(data));
	}

</script>
<%@include file="../main/footer.jsp"%>