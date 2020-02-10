<%@include file="../main/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- ���� �Լ�  -->
<script>
	$(function() {
		$('.starRev span').click(function() {
			$(this).parent().children('span').removeClass('on');
			$(this).addClass('on').prevAll('span').addClass('on');
			return false;
		});
	});
</script>
<!-- ���� ���� ���� -->
<!-- �α��� üũ �� ���ϱ� �� ���ƿ� -->
<script>
	function loginCheck(uuid) {
		if (uuid == '') {
			if (confirm("�α����� �ʿ��մϴ�. �α����������� �̵��Ͻðڽ��ϱ�?") == true) {
				location.href = "loginForm"
			} else {
				return;
			}
		}
	}
</script>
<script>
	function pick(tNo, val) {
		var data = {
			"tNo" : tNo,
			"val" : val
		}
		$.ajax({
			type : "GET",
			data : data,
			url : "tourlikepick",
			success : function(data) {
				if (data == 1) {
					alert("�̹� ���߽��ϴ�.", data);
				} else {
					alert("���ϱ� ����", data)
				}
			}
		})
	}
	function like(tNo, val) {
		var data = {
			"tNo" : tNo,
			"val" : val
		}
		$.ajax({
			type : "GET",
			data : data,
			url : "tourlikepick",
			success : function(data) {
				if (data == 1) {
					alert("���ƿ䰡 �̹� ���ֽ��ϴ�.", data);
					location = 'tourdetail?tNo=' + tNo
				} else {
					alert("���ƿ� ����", data)
					location = 'tourdetail?tNo=' + tNo
				}
			}
		})
	}
</script>


<style>
/*�����ġ*/
.modal {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 80%;
	}
}

.modal-dialog {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}

ul {
	list-style: none;
}

ul {
	list-style: none;
}
/* ���� ��Ÿ�� ���� */
.starR1 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat -52px 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR2 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR1.on {
	background-position: 0 0;
}

.starR2.on {
	background-position: -15px 0;
}
/* ���� ��Ÿ�� �� */

/* ��ư ��Ÿ�� ���� */
.myButton {
	box-shadow: 3px 4px 0px 0px #899599;
	background: linear-gradient(to bottom, #ededed 5%, #bab1ba 100%);
	background-color: #ededed;
	border-radius: 10px;
	border: 1px solid #d6bcd6;
	display: inline-block;
	cursor: pointer;
	color: #696E74;
	font-family: Arial;
	font-size: 15px;
	padding: 4px 20px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #e1e2ed;
}

.myButton:hover {
	background: linear-gradient(to bottom, #bab1ba 5%, #ededed 100%);
	background-color: #bab1ba;
}

.myButton:active {
	position: relative;
	top: 1px;
}

/* ��ư ��Ÿ�� �� */
</style>
<section class="section1">
	<div class="container clearfix">
		<br>
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

			<div class="col-lg-4 col-md-4 col-sm-4">
				<div class="portfolio_details">
					<div class="details_section">
						<h2>
							<a>${tvo.tName }</a>
						</h2>
						<br>
						<h3>
							&nbsp;&nbsp;������ ���� :<span>&nbsp;${tvo.tType}</span>
						</h3>
						<hr>
						<ul>
							<li class="version"><span><a href="#">

										<div class="starRev">
											<span class="starR1 on">��1_����</span> <span class="starR2">��1_������</span>
											<span class="starR1">��2_����</span> <span class="starR2">��2_������</span>
											<span class="starR1">��3_����</span> <span class="starR2">��3_������</span>
											<span class="starR1">��4_����</span> <span class="starR2">��4_������</span>
											<span class="starR1">��5_����</span> <span class="starR2">��5_������</span>
										</div> <br>
								</a></span></li>
							<br>
							<li class="update">�ּ� : <span>${tvo.tAddr1 }</span></li>

							<li class="release">��ȭ��ȣ : <span>${tvo.tTel}</span></li>
						</ul>

					</div>
				</div>
				<div class="" style="text-align: center;">
					<div class="">
						<br>
						<div style="margin-left: 10px; font-size: 0.5em;">
							<i class="fa fa-text1 fa-3x"> ��ȸ�� <a> ${tvo.tHit}</a></i>
							&nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-text2 fa-3x"> ���ƿ� <a
								href="javascript:like(${tvo.tNo},1);"
								onclick="return loginCheck('${sessionScope.uuId}')">${tvo.likes}</a></i>
							<hr>
							<a class="fa fa-text3 fa-3x"
								href="javascript:pick(${tvo.tNo},2);"
								onclick="return loginCheck('${sessionScope.uuId}')">���ϱ�</a>
						</div>
						<hr>
						<ul>

						</ul>

					</div>
				</div>
				<div></div>


				<!-- theme details -->
			</div>
			<div id="map" style="width: 60%; height: 400px;"></div>
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8b2b3fa7a88682f73a72b57b119c70c3&libraries=services"></script>
			<script>
				// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ǥ���� ���������� �Դϴ�
				var infowindow = new kakao.maps.InfoWindow({
					zIndex : 1
				});

				var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
				mapOption = {
					center : new kakao.maps.LatLng(37.566826, 126.9786567), // ������ �߽���ǥ
					level : 3
				// ������ Ȯ�� ����
				};

				// ������ �����մϴ�    
				var map = new kakao.maps.Map(mapContainer, mapOption);

				// ��� �˻� ��ü�� �����մϴ�
				var ps = new kakao.maps.services.Places();

				// Ű����� ��Ҹ� �˻��մϴ�
				ps.keywordSearch('${tvo.tAddr1}', placesSearchCB);

				// Ű���� �˻� �Ϸ� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
				function placesSearchCB(data, status, pagination) {
					if (status === kakao.maps.services.Status.OK) {

						// �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
						// LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
						var bounds = new kakao.maps.LatLngBounds();

						for (var i = 0; i < data.length; i++) {
							displayMarker(data[i]);
							bounds.extend(new kakao.maps.LatLng(data[i].y,
									data[i].x));
						}

						// �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
						map.setBounds(bounds);
					}
				}

				// ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
				function displayMarker(place) {

					// ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
					var marker = new kakao.maps.Marker({
						map : map,
						position : new kakao.maps.LatLng(place.y, place.x)
					});

					// ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
					kakao.maps.event
							.addListener(
									marker,
									'click',
									function() {
										// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ���������쿡 ǥ��˴ϴ�
										infowindow
												.setContent('<div style="padding:5px;font-size:12px;">'
														+ place.place_name
														+ '</div>');
										infowindow.open(map, marker);
									});
				}
			</script>


			<br> <br>
			<br> <br>
			<div class="tabbable servicetab tabs-left">
				<ul class="nav nav-tabs"
					style="margin-left: 10px; border-bottom: 2px solid #ddd; width: 1020px;">
					<li class="active"><a href="services.html#webdesign"
						data-toggle="tab"><i class="fa fa-laptop"></i>������ ������</a></li>
					<li><a href="services#webdevelopment" data-toggle="tab"><i
							class="fa fa-cogs"></i>���� ����</a></li>
					<li><a href="services#seoservices" data-toggle="tab" id="map1"><i
							class="fa fa-print"></i>Ȱ����</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="webdesign">
						<div class="row" style="padding-left: 100px">
							<br>
							<div class="col-lg-6">
							<c:forTokens var="e" items="${tvo.tInfo}" delims="/">
								<p>${e}</p>
							</c:forTokens>
							</div>

							<div class="col-lg-6">
								<img class="img-responsive" src="resources/img/tourspot/${tvo.tImg1 }"
									alt=""> <br> <img class="img-responsive"
									src="resources/img/tourspot/${tvo.tImg2 }" alt="">
									<br> <img class="img-responsive"
									src="resources/img/tourspot/${tvo.tImg3 }" alt="">
									<br> <img class="img-responsive"
									src="resources/img/tourspot/${tvo.tImg4 }" alt="">

							</div>
						</div>
					</div>
					<div class="tab-pane" id="webdevelopment" style="width: 950px">
						<br>
						<div>
							<input data-toggle="modal" data-target="#myModal" type="button"
								id="" value="�����ۼ�" style="float: right;" class="myButton">
						</div>
						<div class="row">
							<div id="comments_wrapper">
								<ul class="comment-list">
									<li>
										<div class="comment-content" style="height: 200px">
											<h4 class="comment-author">
												������ <small class="comment-meta"> <a>�ۼ��ڳ�¥</a>
													<li class="version">
														<div class="starRev" style="float: right;">
															<span class="starR1 on">��1_����</span> <span class="starR2">��1_������</span>
															<span class="starR1">��2_����</span> <span class="starR2">��2_������</span>
															<span class="starR1">��3_����</span> <span class="starR2">��3_������</span>
															<span class="starR1">��4_����</span> <span class="starR2">��4_������</span>
															<span class="starR1">��5_����</span> <span class="starR2">��5_������</span>
														</div></small>
											</h4>
											<p>�۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���</p>
											<span class="comment-reply"><a href="#"
												class="btn btn-danger">�Ű�</a></span>
										</div>
										<div class="comment-content" style="height: 200px">
											<h4 class="comment-author">
												������ <small class="comment-meta"> <a>�ۼ��� / ��¥</a>
													<li class="version">
														<div class="starRev" style="float: right;">
															<span class="starR1 on">��1_����</span> <span class="starR2">��1_������</span>
															<span class="starR1">��2_����</span> <span class="starR2">��2_������</span>
															<span class="starR1">��3_����</span> <span class="starR2">��3_������</span>
															<span class="starR1">��4_����</span> <span class="starR2">��4_������</span>
															<span class="starR1">��5_����</span> <span class="starR2">��5_������</span>
														</div></small>
											</h4>
											<p>�۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���</p>
											<span class="comment-reply"><a href="#"
												class="btn btn-danger">�Ű�</a></span>
										</div>
										<div class="comment-content" style="height: 200px">
											<h4 class="comment-author">
												������ <small class="comment-meta"> <a>�ۼ��� / ��¥</a>
													<li class="version">
														<div class="starRev" style="float: right;">
															<span class="starR1 on">��1_����</span> <span class="starR2">��1_������</span>
															<span class="starR1">��2_����</span> <span class="starR2">��2_������</span>
															<span class="starR1">��3_����</span> <span class="starR2">��3_������</span>
															<span class="starR1">��4_����</span> <span class="starR2">��4_������</span>
															<span class="starR1">��5_����</span> <span class="starR2">��5_������</span>
														</div></small>
											</h4>
											<p>�۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���۳���</p>
											<span class="comment-reply"><a href="#"
												class="btn btn-danger">�Ű�</a></span>
										</div>
									</li>

								</ul>
								<!-- End .comment-list -->

								<div class="clearfix"></div>


							</div>
							<!-- div comments -->

						</div>
					</div>



					<div class="tab-pane" id="seoservices">

						<!-- end col-lg 8 -->

						<div class="clearfix"></div>
						<div class="clearfix"></div>


					</div>
				</div>
			</div>
			<!-- owl-related -->
		</div>
		<!--  https://jsfiddle.net/zzznara/Ln8wpm67/?utm_source=website&utm_medium=embed&utm_campaign=Ln8wpm67 -->
		<!-- https://zzznara2.tistory.com/588 -->
		<!-- �⺻ ��� -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">��</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel"
							style="text-align: center;">�����ۼ�</h4>
					</div>
					<div class="comments_form">
						<br>
						<form id="comments_form" action="" name="comments_form"
							class="row" method="post">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								����: <input type="text" name="name" id="name"
									class="form-control" placeholder="������ �Է��ϼ���."
									required="required">

								<ul>
									<li class="version">����: <span><a href="#">

												<div class="starRev">
													<span class="starR1 on">��1_����</span> <span class="starR2">��1_������</span>
													<span class="starR1">��2_����</span> <span class="starR2">��2_������</span>
													<span class="starR1">��3_����</span> <span class="starR2">��3_������</span>
													<span class="starR1">��4_����</span> <span class="starR2">��4_������</span>
													<span class="starR1">��5_����</span> <span class="starR2">��5_������</span>
												</div>

										</a></span></li>
								</ul>
								<textarea class="form-control" name="comments" id="comments"
									rows="6" placeholder="������ �Է��ϼ���"></textarea>

							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">���</button>
						<button type="button" class="btn btn-primary">���</button>
					</div>
				</div>
			</div>
		</div>
		<!-- end content -->
	</div>
	<!-- end container -->
</section>
<!-- end section -->
<%@include file="../main/footer.jsp"%>