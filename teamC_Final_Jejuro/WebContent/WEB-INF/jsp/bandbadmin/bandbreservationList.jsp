<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="sidebar.jsp"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
<div class="col-md-12">
	<div class="card">
            <div class="card-header card-header-danger card-header-icon">
              <div class="card-icon">
                <i class="material-icons">emoji_people</i>
			</div>
			<h4 class="card-title">��ϵ� ���� ����Ʈ</h4>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table style="vertical-align: middle;">  
					<tr>     			<td><select name="searchType">
					<option value="0">����</option>     
					<option value="1">���� �̸�</option>
					<option value="2">���� ��� �� </option>
					<option value="3">���� ��� ��ȣ</option>
				</select></td></tr>
				</table>         
				<br>
				<table class="w3-table-all w3-hoverable w3-centered">
					<thead>
						<tr class="w3-light-grey">
							<th>��ȣ</th>   
							<th>���� �̸�</th>   
							<th>������ �̸�</th> 
							<th>���� ��ȭ��ȣ</th>
							<th>���� �����</th>
						</tr>
					</thead>
					<tr>
						<td style="vertical-align: middle">1</td>
						<td style="vertical-align: middle"><a href="bandbdetail" );  style="color: blue">�̽õ��� ��</a></td><td style="vertical-align: middle">�ڹ���</td>
						<td style="vertical-align: middle">010-111-1234</td>
						<td style="vertical-align: middle">20-01-21 14:37</td>
					</tr> 
					<tr>
						<td style="vertical-align: middle">2</td>
						<td style="vertical-align: middle"><a href="bandbdetail" );  style="color: blue">���ָ���</a></td>
						<td style="vertical-align: middle">�ڰǿ�</td>
						<td style="vertical-align: middle">010-111-3333</td>
						<td style="vertical-align: middle">20-01-21 14:37</td>
					</tr> 
					<tr>
						<td style="vertical-align: middle">3</td>
						<td style="vertical-align: middle"><a href="bandbdetail" );  style="color: blue">�ٴٳ��</a></td>
						<td style="vertical-align: middle">������</td>
						<td style="vertical-align: middle">010-111-2222</td>
						<td style="vertical-align: middle">20-01-21 14:37</td>
					</tr> 
			
				</table>
				<br><br>
				<form action="boardUplist" method="post">
				<table style="margin-left: auto; margin-right: auto;">
				<tr>            
					<th colspan="6" style="color: black;">
							<input type="hidden" name="page" value="${param.page}"> <select
								name="searchType">
								
								<option value="0">�˻�</option>
								<option value="1">���� �̸�</option>
								<option value="2">���� ��ȭ��ȣ</option>
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
	$("#hotels").attr("class","nav-item ng-star-inserted active");         
	
});
</script>
</script>