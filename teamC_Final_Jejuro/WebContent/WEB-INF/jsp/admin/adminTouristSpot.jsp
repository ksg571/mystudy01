<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="sidebar.jsp"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
<div class="col-md-12">
	<div class="card">
		<div class="card-header card-header-rose card-header-icon">
			<div class="card-icon">
				<i class="material-icons">terrain</i>
			</div>
			<h4 class="card-title">������ ����Ʈ</h4>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table style="vertical-align: middle;">  
					<tr>     			<td><select name="searchType">
					<option value="0">����</option>     
					<option value="1">��������</option>
					<option value="2">��ϳ�¥</option>
					<option value="3">��������</option>
					<option value="4">����</option>
				</select>
				</td>    
				<td style="width: 1450px"></td>
				<td><a href="adminTouristSpotWrite"><button class="w3-button w3-red">+</button></a></td></tr>
				</table>         
				<br>
				<table class="w3-table-all w3-hoverable w3-centered">
					<thead>
						<tr class="w3-light-grey">
							<th width="100px">��ȣ</th>
							<th width="100px">����������</th>
							<th>��������</th>
							<th>�ּ�</th>
							<th width="150px">��������</th>
						</tr>
					</thead>
					<tr>
						<td style="vertical-align: middle">1</td>
						<td style="vertical-align: middle">����</td>
						<td style="vertical-align: middle"><a href="#"><font color="blue">����������</font></a></td>
						<td style="vertical-align: middle">��������</td>
						<td style="vertical-align: middle">
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>����</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>�����</b>
							</button>
						</td>
					</tr>
					<tr>
						<td style="vertical-align: middle">1</td>
						<td style="vertical-align: middle">����</td>
						<td style="vertical-align: middle"><a href="#"><font color="blue">����������</font></a></td>
						<td style="vertical-align: middle">��������</td>
						<td style="vertical-align: middle">
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>����</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>�����</b>
							</button>
						</td>
					</tr>
					<tr>
						<td style="vertical-align: middle">1</td>
						<td style="vertical-align: middle">����</td>
						<td style="vertical-align: middle"><a href="#"><font color="blue">����������</font></a></td>
						<td style="vertical-align: middle">��������</td>
						<td style="vertical-align: middle">
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>����</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>�����</b>
							</button>
						</td>
					</tr>
					<tr>
						<td style="vertical-align: middle">1</td>
						<td style="vertical-align: middle">����</td>
						<td style="vertical-align: middle"><a href="#"><font color="blue">����������</font></a></td>
						<td style="vertical-align: middle">��������</td>
						<td style="vertical-align: middle">
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>����</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>�����</b>
							</button>
						</td>
					</tr>
					<tr>
						<td style="vertical-align: middle">1</td>
						<td style="vertical-align: middle">����</td>
						<td style="vertical-align: middle"><a href="#"><font color="blue">����������</font></a></td>
						<td style="vertical-align: middle">��������</td>
						<td style="vertical-align: middle">
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>����</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>�����</b>
							</button>
						</td>
					</tr>
				</table>
				<br><br>
				<form action="boardUplist" method="post">
				<table style="margin-left: auto; margin-right: auto;">
				<tr>            
					<th colspan="6" style="color: black;">
							<input type="hidden" name="page" value="${param.page}"> <select
								name="searchType">
								<option value="1">��������</option>
								<option value="2">����</option>
							</select>&nbsp; <input name="searchValue"> <input type="submit"
								value="�˻�" style="width: 50px">           
					</th>  
					</tr>   
				</table>
				</form>
				
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
	$("#site2").attr("class","cnav-item ng-star-inserted active");
});
</script>