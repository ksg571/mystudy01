<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="sidebar.jsp"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
<div class="col-md-12">
	<div class="card">
		<div class="card-header card-header-success card-header-icon">
			<div class="card-icon">    
				<i class="material-icons">sms</i>
			</div>
			<h4 class="card-title">������� ����Ʈ</h4>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table style="vertical-align: middle;">  
					<tr>     			<td><select name="searchType">
					<option value="0">����</option>     
					<option value="1">�Ű�Ƚ��</option>
					<option value="2">��۾���</option>
					<option value="3">��¥</option>
				</select></td></tr> 
				</table>         
				<br>
				<table class="w3-table-all w3-hoverable w3-centered">
					<thead>
						<tr class="w3-light-grey">
							<th width="100px">ī�װ�</th>
							<th width="80px">�۹�ȣ</th>
							<th width="80px">��۹�ȣ</th>
							<th>����</th>
							<th width="100px">��۾���</th>
							<th width="100px">�Ű���</th>
							<th width="80px">�Ű�Ƚ��</th>
							<th width="200px">�۾�</th>
						</tr>
					</thead>
					
					<tr>
						<td style="vertical-align: middle">������</td>
						<td style="vertical-align: middle">1</td>
						<td style="vertical-align: middle">1</td>
						<td style="vertical-align: middle"><a href="#"><font color="blue">xxx���� ������</font></a></td>
						<td style="vertical-align: middle">hong123</td>
						<td style="vertical-align: middle"><a href="adminReportUserList" onClick="window.open(this.href, '', 'width=600, height=580'); return false;"><font color="blue">����</font></a></td>
						<td style="vertical-align: middle">3</td>
						<td style="vertical-align: middle">
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>��ۻ���</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>�Ű����</b>
							</button>
						</td>
					</tr>
					
					<tr>
						<td style="vertical-align: middle">����</td>
						<td style="vertical-align: middle">1</td>
						<td style="vertical-align: middle">2</td>
						<td style="vertical-align: middle"><a href="#"><font color="blue">xxx���� ���ھ���</font></a></td>
						<td style="vertical-align: middle">hong123</td>
						<td style="vertical-align: middle"><a href="adminReportUserList" onClick="window.open(this.href, '', 'width=600, height=580'); return false;"><font color="blue">����</font></a></td>
						<td style="vertical-align: middle">3</td>
						<td style="vertical-align: middle">
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>��ۻ���</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>�Ű����</b>
							</button>
						</td>
					</tr>
					
					<tr>
						<td style="vertical-align: middle">������</td>
						<td style="vertical-align: middle">2</td>
						<td style="vertical-align: middle">3</td>
						<td style="vertical-align: middle"><a href="#"><font color="blue">xxx���� ������</font></a></td>
						<td style="vertical-align: middle">hong123</td>
						<td style="vertical-align: middle"><a href="adminReportUserList" onClick="window.open(this.href, '', 'width=600, height=580'); return false;"><font color="blue">����</font></a></td>
						<td style="vertical-align: middle">1</td>
						<td style="vertical-align: middle">
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>��ۻ���</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>�Ű����</b>
							</button>
						</td>
					</tr>    
					
				</table>
				
			</div>
		</div>
	</div>
</div>

</div>
</div>
</div>


<script>
$(document).ready(function() {   
	$("#site").attr("class","nav-item ng-star-inserted active");
	$("#maps").attr("class","collapse show");
	$("#site3").attr("class","cnav-item ng-star-inserted active");
	
});
</script>