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
			<h4 class="card-title">���ھ��� ����Ʈ</h4>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table style="vertical-align: middle;">  
					<tr>     			<td><select name="searchType">
					<option value="0">����</option>     
					<option value="1">���̵�</option>
					<option value="2">�̸�</option>
					<option value="3">��������</option>
					<option value="4">���λ���</option>
				</select></td></tr>
				</table>         
				<br>
				<table class="w3-table-all w3-hoverable w3-centered">
					<thead>
						<tr class="w3-light-grey">
							<th>��ȣ</th>   
							<th>���̵�</th>   
							<th>��й�ȣ</th>
							<th>�̸�</th> 
							<th>��ȭ��ȣ</th>
							<th>������</th> 
							<th>��������</th>
							<th>�۾�1</th>
							<th>�۾�2</th>
						</tr>
					</thead>
					<tr>
						<td style="vertical-align: middle">1</td>
						<td style="vertical-align: middle">Manager</td>
						<td style="vertical-align: middle"><input type="password" value="test11" style="width: 80px"></td>
						<td style="vertical-align: middle"><input type="text" value="ȫ�ι�" style="width: 70px"></td>
						<td style="vertical-align: middle"><input type="text" value="010-0000-0000" style="width: 120px"></td>
						<td style="vertical-align: middle">20-01-21 14:37</td>
						<td style="vertical-align: middle"><a href="adminManagerHotelList" onClick="window.open(this.href, '', 'width=600, height=580'); return false;" style="color: blue">����</a></td>
						<td style="vertical-align: middle">  
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>����</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>����</b>
							</button>
						</td>
						<td style="vertical-align: middle">
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>����</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>Ż��</b>
							</button>
						</td>
					</tr> 
					
					<tr>
						<td style="vertical-align: middle">2</td>
						<td style="vertical-align: middle">Manager22</td>
						<td style="vertical-align: middle"><input type="password" value="test11" style="width: 80px"></td>
						<td style="vertical-align: middle"><input type="text" value="���ȯ" style="width: 70px"></td>
						<td style="vertical-align: middle"><input type="text" value="010-9999-1111" style="width: 120px"></td>
						<td style="vertical-align: middle">20-01-21 14:37</td>
						<td style="vertical-align: middle"><a href="adminManagerHotelList" onClick="window.open(this.href, '', 'width=600, height=580'); return false;" style="color: blue">����</a></td>
						<td style="vertical-align: middle">  
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>����</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>����</b>
							</button>
						</td>
						<td style="vertical-align: middle">
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>����</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>Ż��</b>
							</button>
						</td>
					</tr>
					
					<tr>
						<td style="vertical-align: middle">3</td>
						<td style="vertical-align: middle">Manager33</td>
						<td style="vertical-align: middle"><input type="password" value="test11" style="width: 80px"></td>
						<td style="vertical-align: middle"><input type="text" value="������" style="width: 70px"></td>
						<td style="vertical-align: middle"><input type="text" value="010-0000-0000" style="width: 120px"></td>
						<td style="vertical-align: middle">20-01-21 14:37</td>
						<td style="vertical-align: middle"><a href="adminManagerHotelList" onClick="window.open(this.href, '', 'width=600, height=580'); return false;" style="color: blue">����</a></td>
						<td style="vertical-align: middle">  
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>����</b>
							</button> 
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>����</b>
							</button>
						</td>
						<td style="vertical-align: middle">
							<button class="w3-button w3-tiny w3-button w3-blue w3-hover-grey">
								<b>����</b>
							</button>
							<button class="w3-button w3-tiny w3-button w3-red w3-hover-grey">
								<b>Ż��</b>
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
								<option value="1">���̵�</option>
								<option value="2">�̸�</option>
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
	$("#forms").attr("class","collapse show");
	$("#hotels1").attr("class","cnav-item ng-star-inserted active");
});
</script>