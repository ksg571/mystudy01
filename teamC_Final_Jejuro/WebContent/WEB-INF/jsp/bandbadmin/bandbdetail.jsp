<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="sidebar.jsp"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="resources/lib/bootstrap/css/bootstrap.min2.css"
	rel="stylesheet">
	
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    
<div class="col-md-12">
	<div class="card">
            <div class="card-header card-header-primary card-header-icon">
              <div class="card-icon">
				<i class="material-icons">grade</i>
			</div>
			<h4 class="card-title">���� ���� �󼼺���</h4>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table style="width: 100%">
					
					<tr style="height: 40px;border-top: 1px solid #FF8C00; border-bottom: 1px solid #cccccc">
						<td style="background-color:  #ffddb3; width: 200px"><font color="#ff6666" style="font-weight: bold;">&nbsp;&nbsp;&nbsp;����</font></td>
						<td style="text-align: center" colspan="3">�̽õ��� ��</td>
					</tr>
					
					<tr style="height: 40px; border-bottom: 1px solid #cccccc;">
					
						<td style="background-color:  #ffddb3 "><font color="#ff6666" style="font-weight: bold;">&nbsp;&nbsp;&nbsp;�ۼ���</font></td>
						<td style="text-align: center;">
							<label>�ڹ���</label>
						</td>
					
						<td style="background-color:  #ffddb3 "><font color="#ff6666" style="font-weight: bold;">&nbsp;&nbsp;&nbsp;�ۼ�����</font></td>
						<td style="text-align: center">
						20/01/20 10:00
						</td>
					</tr>
					

					
					<tr style="height: 10px"><td></td></tr>    
					
					<tr>
						<td colspan="4" style="width: auto; height: 600px; border-top: 1px solid #cccccc; border-bottom: 1px solid #FF8C00; vertical-align: top;">
				        <br>
						<img src="resources/img/sample1.jpg">
						<p>
							�� �̽õ��� ����<br>
							�� �̽õ��� �� <br>
							�������� ��<br>
							����� ��<br>
							�� �ٷο��� ��<br>
								</p>
						</td>
					</tr>
					
					<tr><td style="height: 20px">&nbsp;</td></tr>  
					
					<tr>
						<td colspan="4" style="text-align: right">
						<input type="button" id="modify" value="����" style="width: 80px; height: 30px">
						&nbsp;
						<input type="button" id="delete" value="����" style="width: 80px; height: 30px">
						&nbsp;
						<input type="button" id="list" value="���" style="width: 80px; height: 30px">
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
	$("#notice").attr("class","nav-item active");         
	
});
</script>

<script>
$(function(){
    //����
    $('#modify').click(function(){
        location.href="adminNoticeModify"
    });
    //����
    $('#delete').click(function(){
        location.href="delete"
    });
    //���
    $('#list').click(function(){    
        location.href="adminNotice"
    });
});
</script>