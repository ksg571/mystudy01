<%@include file="../main/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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

#div1, #div2 {
	float: left;
	width: 100px;
	height: 80px;
	margin: 10px;
	padding: 10px;
	border: 1px solid black;
}
</style>
<link href="resources/css/plan.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
<script>
	$(function addPlan(){
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
		
		$('#button3').click(function test() {
			var start = $('#fromDate').datepicker('getDate');
			var end = $('#toDate').datepicker('getDate');
			var diff = new Date(end-start)
			var days = (diff/1000/60/60/24)+1;
			
			console.log("���۳�¥ : " + start)
			console.log("���ᳯ¥ : " + end)
			console.log("��¥ : " + diff)
			console.log("��¥ : " + days)
			/* 
		 	if(start != null & end != null){
				location.href='plan?num='+day;
			}else{
				location.href='404';
			}    */
		})
	});
</script>
<section class="section1">
	<br> <br>
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
								<a href="infoModify" style="color: orange; font-weight: bold;">��������</a>
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
												<li class="pickTourspot">���� ������: <span><a
														href="#">5</a></span></li>
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

			<div class="content col-lg-12 col-md-12 col-sm-12 clearfix"
				style="padding-bottom: 0px;">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<a href="mypage"><button style="font-size: medium;">����
							����</button></a> <a href="pickTourspot"><button style="font-size: medium;">����
							������</button></a> <a href="pickhouse"><button style="font-size: medium;">����
							����</button></a> <a href=""><button style="font-size: medium;">����
							����</button></a> <a href="myreview"><button style="font-size: medium;">����
							����</button></a> <a href=""><button style="font-size: medium;">����
							����</button></a>
				</div>
			</div>

			<div class="clearfix"></div>
			<div class="divider"></div>

			<div class="tab-pane active" id="myTourPlan">
				<h3 class="title">
					���� ���� ����(1) <small><a href="#" data-toggle="modal"
						data-target="#myModal" style="float: right;">[���� ���� �߰�]</a></small>
				</h3>
				<div class="plan_inner">
					<a href="" class="box" target="_blank">
						<div class="plan_hidden_btn">������ ����</div>
						<div class="plan_bg">
							<div class="plan_bg_inner">
								<span>2020-01-27</span><span
									style="margin-left: 10px; color: #b4b4b4;">2 DAYS</span><br>���ֿ���
							</div>
						</div>
						<div class="plan_img_box">
							<img
								src="http://img.earthtory.com/img/city_images/312/jeju_1425527554.jpg"
								alt="" class="plan_img">
						</div>
						<div class="plan_bg_inner2">
							<span>��Ȧ�� ����</span>
							<div class="fr pn_list_view_icon" style="float: right;">4</div>
							<div class="clear"></div>
							<div class="pn_list_city"></div>
							<div class="clear"></div>
							<div>&nbsp;</div>
							<div class="pn_list_user">
								������id
								<div class="edit_btn" data-srl="303925" data-op="del">����</div>
								<div class="edit_line"></div>
								<div class="edit_btn" data-op="edit" data-srl="303925">����</div>
								<div class="clear"></div>
							</div>
						</div>
					</a>

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
										style="text-align: center;">${sessionScope.uName}���ǿ�������</h4>
								</div>
								<div class="modal-body">
									<div class="modal-div">
										<form method="post" action="add_plan" id="add_plan"
											onsubmit="return addPlan();" autocomplete=off>
											<table>
												<tr>
													<td>����&nbsp;&nbsp;<input type="text" name="mTitle"
														placeholder="������ �Է��ϼ���." required="required"
														style="width: 300px"></td>
												</tr>
												<tr>
													<td>���� ��¥ : <span id="today"></span> <br> <label
														for="fromDate">������&nbsp;</label> <input type="text"
														id="fromDate" name="startDate">~ <label
														for="toDate">������&nbsp;</label> <input type="text"
														id="toDate" name="endDate"> <br>
													</td>
												</tr>
											</table>
											�ο�<select id="number" name="mPeople" class="small"
												aria-required="true" aria-invalid="false"><option
													value="1">1��</option>
												<option value="2">2��</option>
												<option value="3">3��</option>
												<option value="4">4��</option>
												<option value="5">5��</option>
												<option value="6">6��</option>
												<option value="7">7��</option>
												<option value="8">8��</option>
												<option value="9">9��</option>
												<option value="10">10��</option></select>&nbsp;����<select id="partner"
												name="mWith" class="small" aria-required="true"
												aria-invalid="false"><option value="">����</option>
												<option value="a">�θ�</option>
												<option value="b">����</option>
												<option value="c">ģ��</option>
												<option value="d">Ŀ��</option>
												<option value="e">ȥ��</option></select>&nbsp;�����׸� <select id="concept"
												name="mTheme" aria-required="true" aria-invalid="false"><option
													value="">���� ������ �����ϼ���</option>
												<option value="a">�޽İ� ġ�� ����</option>
												<option value="b">������ ü��</option>
												<option value="c">õõ�� �ȱ�</option>
												<option value="d">������ ��ȭ����</option>
												<option value="e">���ÿ� ���</option>
												<option value="f">����</option></select>
											<ul>
												<li class="radio_padding_box"><input type="radio"
													name="mStatus" id="public" value="a" aria-required="true"
													aria-invalid="false">����&nbsp;&nbsp;<input
													type="radio" name="mStatus" id="private" value="b"
													aria-required="true" aria-invalid="false"> �����</li>
											</ul>
											<div class="modal-footer">
												<button type="button" id="button2" class="btn btn-default"
													data-dismiss="modal">Close</button>
												<input type="submit" id="button3" style="color: #696E7;"
													class="btn btn-primary">
											</div>
										</form>
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