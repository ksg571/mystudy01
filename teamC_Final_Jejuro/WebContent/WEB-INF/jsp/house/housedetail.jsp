<%@include file="../main/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- �޷��Լ� -->
<script>
	$(function() {

		//���� ��¥�� ���
		$("#today").text(new Date().toLocaleDateString());

		//datepicker �ѱ���� ����ϱ� ���� ����
		$.datepicker.setDefaults($.datepicker.regional['ko']);

		// ������(fromDate)�� ������(toDate) ���� ��¥ ���� �Ұ�
		// ������(toDate)�� ������(fromDate) ���� ��¥ ���� �Ұ�

		//������.
		$('#fromDate').datepicker({
			showOn : "both", // �޷��� ǥ���� Ÿ�̹� (both: focus or button)
			buttonImage : "resources/img/calendar.gif", // ��ư �̹���
			buttonImageOnly : true, // ��ư �̹����� ǥ������ ����
			buttonText : "��¥����", // ��ư�� ��ü �ؽ�Ʈ
			dateFormat : "yy-mm-dd", // ��¥�� ����
			changeMonth : true, // ���� �̵��ϱ� ���� ���û��� ǥ�ÿ���
			//minDate: 0,                       // �����Ҽ��ִ� �ּҳ�¥, ( 0 : ���� ���� ��¥ ���� �Ұ�)
			onClose : function(selectedDate) {
				// ������(fromDate) datepicker�� ������
				// ������(toDate)�� �����Ҽ��ִ� �ּ� ��¥(minDate)�� ������ �����Ϸ� ����
				$("#toDate").datepicker("option", "minDate", selectedDate);
			}
		});

		//������
		$('#toDate').datepicker({
			showOn : "both",
			buttonImage : "resources/img/calendar.gif",
			buttonImageOnly : true,
			buttonText : "��¥����",
			dateFormat : "yy-mm-dd",
			changeMonth : true,
			//minDate: 0, // ���� ���� ��¥ ���� �Ұ�
			onClose : function(selectedDate) {
				// ������(toDate) datepicker�� ������
				// ������(fromDate)�� �����Ҽ��ִ� �ִ� ��¥(maxDate)�� ������ �����Ϸ� ���� 
				$("#fromDate").datepicker("option", "maxDate", selectedDate);
			}
		});

		$('#login').click(function() {
			if (confirm("�α����� �ʿ��մϴ�. �α����������� �̵��Ͻðڽ��ϱ�?") == true) {
				location.href = "loginForm"
			} else {
				return;
			}

		})
	});
</script>
<!-- �󼼺��� ��ư Ŭ���� ���� ������� �Լ� -->
<script>
	$(function() {
		$("#res").click(function() {
			var aa = $("#test").val();
			var bb = $("#td4").val();
			console.log("bb" + bb);

			if (bb == 0) {
				alert("���� ����� �����ϴ�.");
				return false;
			} else {
				$('#rNo').attr("value", aa);
				$('#people').attr("max", bb);
			}
		})

		$("#detail").click(function detail() {
			$("#displaydiv").show();
			$("#test1").hide();

			var aa = $("#test").val();
			console.log("rNo : " + aa);

			$.ajax({
				url : "roomdetail?rNo=" + aa,
				dataType : 'json',
				success : function(data) {
					console.log(data);
					test1 = data.rName;
					test2 = data.rPrice;
					test3 = data.rPeople;
					test4 = data.rImg;
					test4 = "resources/img/room/" + test4
					test5 = data.rInfo;
					test6 = data.rCount;
					console.log(test1, test2, test3, test4, test5, test6);
					if (data !== "") {
						$('#td1').attr("value", test1);
						$('#td2').attr("value", test2);
						$('#td3').attr("value", test6);
						$('#td4').attr("value", test3);
						$('#td5').attr("value", test5);
						$('#td0').attr("src", test4);
						if (test6 == 0) {
							$("#td3").show().css("color", "red");
						}
					}
				}
			})
		});
	});
</script>
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
	function pick(hNo, val) {
		var data = {
			"hNo" : hNo,
			"val" : val
		}
		$.ajax({
			type : "GET",
			data : data,
			url : "houselikepick",
			success : function(data) {
				if (data == 1) {
					alert("�̹� ���߽��ϴ�.", data);
				} else {
					alert("���ϱ� ����", data)
				}
			}
		})
	}
	function like(hNo, val) {
		var data = {
			"hNo" : hNo,
			"val" : val
		}
		$.ajax({
			type : "GET",
			data : data,
			url : "houselikepick",
			success : function(data) {
				if (data == 1) {
					alert("���ƿ䰡 �̹� ���ֽ��ϴ�.", data);
					location = 'housedetail?hNo=' + hNo
				} else {
					alert("���ƿ� ����", data)
					location = 'housedetail?hNo=' + hNo
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
	border-radius: 15px;
	border: 1px solid #d6bcd6;
	display: inline-block;
	cursor: pointer;
	color: #3a8a9e;
	font-family: Arial;
	font-size: 17px;
	padding: 7px 25px;
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
<!--  ��ũ�� -->
<style>
#scroll {
	width: 100px;
	height: 150px;
}
</style>


<!-- end post-wrapper-top -->

<section class="section1">
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
			<div class="col-lg-4 col-md-4 col-sm-4">
				<div class="portfolio_details">
					<div class="details_section">
						<h2>
							<a>${hvo.hName}</a>
						</h2>
						<br>
						<h3>
							&nbsp;&nbsp;�������� :<span>&nbsp;${hvo.hType}</span>
						</h3>
						<div>
							<p></p>
						</div>
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
							<li class="update">�ּ� : <span>${hvo.hAddr1}</span></li>

							<li class="release">��ȭ��ȣ : <span>${hvo.hTel}</span></li>
						</ul>
					</div>
				</div>
				<div class="" style="text-align: center;">
					<div class="">
						<br>
						<div style="margin-left: 10px; font-size: 0.5em;">
							<i class="fa fa-text1 fa-3x"> ��ȸ�� <a>${hvo.hHit}</a></i>
							&nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-text2 fa-3x">���ƿ� <a
								href="javascript:like(${hvo.hNo},1);"
								onclick="return loginCheck('${sessionScope.uuId}')">${hvo.likes}</a></i>
							<hr>
							<a class="fa fa-text3 fa-3x"
								href="javascript:pick(${hvo.hNo},2);"
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
				ps.keywordSearch('${hvo.hAddr1}', placesSearchCB);

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
			<div class="tabbable servicetab tabs-left">
				<ul class="nav nav-tabs"
					style="margin-left: 10px; border-bottom: 2px solid #ddd; width: 1020px;">
					<li class="active"><a href="services.html#webdesign"
						data-toggle="tab"><i class="fa fa-laptop"></i>������</a></li>
					<li><a href="services#webdevelopment" data-toggle="tab"><i
							class="fa fa-cogs"></i>���� ����</a></li>
					<li><a href="services#seoservices" data-toggle="tab"><i
							class="fa fa-print"></i>Ȱ����</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane" id="seoservices">
						<h5 class="title">
							<i class="fa fa-laptop"></i>����
						</h5>
						<div class="row"
							style="border: 1px solid grey; width: 100%; height: 600px;">


							<div class="col-lg-8 col-md-8 col-sm-12"
								style="border: 1px solid grey; width: 50%; height: 300px; float: left; box-sizing: border-box">
								<div class="item_image">
									<div id="myCarousel" class="carousel slide">
										<div class="carousel-inner">
											<div class="item active">
												<img src="resources/img/c1.jpg" alt=""
													style="width: 100%; height: 300px;">
											</div>
											<!-- end item -->
											<div class="item">
												<img src="resources/img/c2.jpg" alt=""
													style="width: 100%; height: 300px;">
											</div>
											<!-- end item -->
											<div class="item">
												<img src="resources/img/c3.jpg" alt=""
													style="width: 100%; height: 300px;">
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





							<div
								style="border: 1px solid grey; width: 45%; float: right; box-sizing: border-box">

								<a>�������������������������������������������</a>

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


					<div class="tab-pane active" id="webdesign">
						<br>
						<div style="width: 95%; height: 600px;">
							<div
								style="width: 65%; height: 600px; float: left; box-sizing: border-box">
								<!-- �󼼺��� ��ưŬ���� ���������ϴ� �κ� -->
								<h1 id="test1" style="margin-left: 15%;">�󼼺����ư�� �����ּ���</h1>

								<div
									style="display: none; width: 100%; height: 300px; text-align: center; margin-top: 40px;"
									id="displaydiv">
									<img id="td0" src="" style="width: 300px; height: 200px">
									<table style="width: 100%; height: 100%;">
										<br>
										<tr>
											<td>���̸�</td>
											<td><input type="text" id="td1" disabled="disabled"></td>
										</tr>
										<tr>
											<td>�밡��</td>
											<td><input type="text" id="td2" disabled="disabled"></td>
										<tr>
											<td>�����氳��</td>
											<td><input type="text" id="td3" disabled="disabled"></td>
										</tr>
										<tr>
											<td>�ִ��̿밡���ο�</td>
											<td><input type="text" id="td4" disabled="disabled"></td>
										</tr>
										<tr>
											<td>������</td>
											<td><input type="text" id="td5" disabled="disabled"></td>

										</tr>
										<tr>
											<c:choose>
												<c:when test="${sessionScope.uuId != null }">
													<td><input data-toggle="modal" data-target="#myModal2"
														type="button" id="res" value="�����ϱ�"
														class="btn btn-warning"
														style="width: 100px; margin-left: 80%"></td>
												</c:when>
												<c:otherwise>
													<td><input type="button" id="login" value="�α���"
														class="btn btn-warning"
														style="width: 100px; margin-left: 80%"></td>
												</c:otherwise>
											</c:choose>
										</tr>
									</table>
									</form>
								</div>
							</div>
							<div style="width: 35%; float: right; box-sizing: border-box">

								<div style="overflow-y: auto; width: 100%; height: 600px;">
									<ul>
										<c:forEach var="e" items="${rlist}">
											<li id="showbtn"><p>
													${e.rName} <img src="resources/img/room/${e.rImg }">
													<%-- <c:forEach var="i" begin="1" end="${cnt}"> --%>
													<input data-toggle="modal" type="button" id="detail"
														onclick="detail();" value="�� �󼼺���" class="btn btn-warning"
														style="width: 100%; height: 20pt;">
													<%-- </c:forEach> --%>
													<input type="hidden" id="test" value="${e.rNo}">
												</p></li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- owl-related -->
		</div>
		<!-- end content -->
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
					<div class="comments_form1">
						<br>
						<form id="comments_form1" action="" name="comments_form1"
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
									rows="6" placeholder="������ �Է��ϼ���."></textarea>

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





		<!-- ���2 -->
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">

			<div class="modal-dialog">
				<div class="modal-content">
					<form action="res_room" method="post" autocomplete=off>
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">��</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="myModalLabel"
								style="text-align: center;">�����ϱ�</h4>
						</div>
						<div class="comments_form">
							<br>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
								style="position: relative; text-align: center;">
								<input type="hidden" id="rNo" name="rNo">
								<table>
									<tr>

										<td>���� ��¥ : <span id="today"></span> <br> <label
											for="fromDate">������&nbsp;</label> <input type="text"
											id="fromDate" name="startDate">~ <label for="toDate">������&nbsp;</label>
											<input type="text" id="toDate" name="endDate"> <br>
										</td>
									</tr>
								</table>
								<input type="number" id="people" min="1" max="10" step="1"
									name="rvPeople" id="number" class="form-control"
									placeholder="�ο� ���� �Է��ϼ���." required="required"
									style="width: 200px; left: 0; right: 0; margin-left: auto; margin-right: auto;">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">���</button>
							<input type="submit" class="btn btn-primary">
						</div>
					</form>
				</div>
			</div>
		</div>


		<!-- end content -->
	</div>
	<!-- end container -->
</section>
<!-- end section -->
<%@include file="../main/footer.jsp"%>