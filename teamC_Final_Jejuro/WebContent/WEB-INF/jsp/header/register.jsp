<%@include file="../main/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- ���̵� �ߺ��˻� -->
<script>
	$(function() {
		//ȸ�� ���̵� �ߺ� Ȯ��!
		$("#idChkBtn").click(function() {
			$.ajax({
				url : "idcheck?uuId=" + $("#uuId").val(),
				success : function(data) {
					if (data == 0) {
						alert("��밡��");
					} else {
						alert("�����");
					}
				}
			})
		});
	});
</script>
<script>
	function DosignUp() {

		var userid = $("#uuId").val();
		var userpwd = $("#uPwd").val();
		var inputPwdCfm = $("#signUpUserPwdCfm").val();
		var username = $("#uName").val();
		var email = $("#uEmail").val();
		var birth = $("#uBirth").val();
		var phone = $("#uPhone").val();
		var img = $("#uImg").val();

		if (userid.length == 0) {
			alert("���̵� �Է��� �ּ���");
			$("#userid").focus();
			return false;
		}

		if (userpwd.length == 0) {
			alert("��й�ȣ�� �Է��� �ּ���");
			$("#userpwd").focus();
			return false;
		} else {
			if (userpwd.length < 8) {
				alert("��й�ȣ�� 8�� �̻� �Է����ּ���");
				$("#userpwd").focus();
				return false;
			}
		}

		if (userpwd != inputPwdCfm) {
			alert("��й�ȣ�� ���� �ٸ��ϴ�. ��й�ȣ�� Ȯ���� �ּ���.");
			$("#signUpUserPwd").focus();
			return false;
		}

		if (username.length == 0) {
			alert("�̸��� �Է����ּ���");
			$("#username").focus();
			return false;
		}

		if (email.length == 0) {
			alert("�̸����� �Է����ּ���");
			$("#email").focus();
			return false;
		}
		if (birth.length == 0) {
			alert("������ �Է����ּ���");
			$("#uBirth").focus();
			return false;
		}
		if (phone.length == 0) {
			alert("�ڵ�����ȣ�� �Է����ּ���");
			$("#uPhone").focus();
			return false;
		}
		if (confirm("ȸ�������� �Ͻðڽ��ϱ�?")) {
			alert("ȸ�������� �����մϴ�");
			return true;
		}

	}
</script>
<section class="post-wrapper-top">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<ul class="breadcrumb">
				<li><a href="home">Home</a></li>
				<li>Register</li>
			</ul>
			<h2>ȸ������</h2>
		</div>
	</div>
</section>
<!-- end post-wrapper-top -->

<section class="section1">
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix"
			style="margin-left: 20%">
			<div class="col-lg-4 col-md-4 col-sm-12">
				<h4 class="title">
					<span style="margin-left: 80px; font-size: 30px">�̿���</span>
				</h4>
				<ul class="check">
					<li><a href="#">ȸ���ʼ� �Է»��� : ���̵�,��й�ȣ,�̸�</a></li>
					<li><a href="#">ȸ�����Խ� �����÷� ����� ����� �� �ֽ��ϴ�.</a></li>
					<li><a href="#">�̿� ��� ����</a></li>
					<li><a href="#">���� ���� ���� �� �̿뿡 ���� ����</a></li>
					<li><a href="#">��ġ���� �̿��� ����</a></li>
				</ul>
			</div>
			<!-- end login -->

			<div class="col-lg-4 col-md-4 col-sm-12">
				<h4 class="title">
					<span style="font-size: 30px; margin-left: 80px;">ȸ������</span>
				</h4>
				<form id="register" method="post" name="registerform"
					onsubmit="return DosignUp();" action="register"
					enctype="multipart/form-data">
					<div class="form-group">
						<input type="text" name="uuId" id="uuId" class="form-control"
							placeholder="���̵�"> &nbsp;<input type="button" id="idChkBtn"
							class="button" value="�ߺ�Ȯ��">
					</div>
					<input type="hidden" id="target" class="">
					<div class="form-group">
						<input type="password" name="uPwd" id="uPwd" class="form-control"
							placeholder="��й�ȣ (8�� �̻�)">
					</div>
					<div class="form-group">
						<input type="password" name="signUpUserPwdCfm"
							id="signUpUserPwdCfm" class="form-control" placeholder="��й�ȣȮ��">
					</div>
					<div class="form-group">
						<input type="text" name="uName" id="uName" class="form-control"
							placeholder="�̸�">
					</div>
					<div class="form-group">
						<input type="text" name="uBirth" id="uBirth" class="form-control"
							placeholder="�ֹι�ȣ(001107)">
					</div>
					<div class="form-group">
						<input type="email" name="uEmail" id="uEmail" class="form-control"
							placeholder="�̸���(kosmo@kosmo.co.kr)">
					</div>
					<div class="form-group">
						<select name="uGender" class="form-control">
							<option value="M">����</option>
							<option value="F">����</option>
						</select>
					</div>
					<div class="form-group">
						<input type="text" id="uPhone" name="uPhone" class="form-control"
							placeholder="��ȭ��ȣ(000-0000-0000)">
					</div>
					<div class="form-group">
						������̹��� : �̼��ý� �⺻�̹����� ��ϵ˴ϴ�.
						<input multiple="multiple" type="file" id="userImg"
							name="userImg">
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-lg btn-success btn-block"
							value="����">
					</div>
				</form>
			</div>
			<!-- end register -->
		</div>
		<!-- end content -->
	</div>
	<!-- end container -->
</section>
<!-- end section -->

<%@include file="../main/footer.jsp"%>