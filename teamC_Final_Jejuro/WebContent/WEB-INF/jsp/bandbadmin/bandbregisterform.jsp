<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="sidebar.jsp"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<style>
.h4, h4 {
	font-size: 40px!important;
	margin: 1px 0;
	margin-top: 6px;    
}    
a{
color: #FF8C00
} 

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type="password"]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}


input[type=submit] {
  width: 100%;
  background-color: #FF8C00;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.bandbForm{ border-radius: 5px;
  background-color: #F5F5F5;
  padding: 10px;}

</style>   

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> 
    
<div class="col-md-12">
	<div class="card">
            <div class="card-header card-header-primary card-header-icon">
              <div class="card-icon">
				<i class="material-icons">grade</i>
			</div>
			<h4 class="card-title">���� ����ϱ�</h4>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				
			
<div class = "bandbForm">
			<form>  
				    <label for="name">���� �̸�</label>
				    <input type="text" id="name" name="name" placeholder="���� �̸��� �Է��ϼ���">
				    
				    <label for="kind">���� ����</label>
				    <select id="kind" name="kind">
					<option value="domitory">�����丮</option>
					<option value="guesthouse">�Խ�Ʈ�Ͽ콺</option>
					<option value="hotel">ȣ��</option>
					</select> 
					
					<br><label for="info">���� ����</label>
				    <input type="text" id="info" name="info" placeholder="���� ������ �Է��ϼ���">
				    
					<br><label for="info">���� �ּ�</label> <br>
					<input type="text" id="sample4_postcode" style="width: 40%" placeholder="�����ȣ" readonly="readonly">
					<input type="button" onclick="sample4_execDaumPostcode()" value="�����ȣ ã��" ><br>
					<input type="text" id="sample4_roadAddress" placeholder="���θ��ּ�">
					<input type="text" id="sample4_jibunAddress" placeholder="�����ּ�">
					<input type="text" id="detail" placeholder="�� �ּ�">
					<span id="guide" style="color:#999"></span>
				 
					<br><label for="name">���� ��ȭ��ȣ</label>
				    <input type="text" id="tel" name="tel" placeholder="��ȭ��ȣ�� ���ڸ� �Է��ϼ���">
				    
				    <br><label for="name">���� ��ǥ�� ��ȭ��ȣ</label>
				    <input type="text" id="admintel" name="admintel" placeholder="��ȭ��ȣ�� ���ڸ� �Է��ϼ���">
				    
				    <br><label for="name">���� �㰡 �����ڷ�</label>
				    <input type="file" id="name" name="name" placeholder="���� �̸��� �Է��ϼ���">
                    <br> 
					
				<input type="submit" value="����">
			</form>
		</div>
	


	<!-- end content -->

	<!-- end container -->

				</table>

			</div>
		</div>
	</div>
</div>

</div>
</div>
</div>

<script>
//�� ���������� ���θ� �ּ� ǥ�� ��Ŀ� ���� ���ɿ� ����, �������� �����͸� �����Ͽ� �ùٸ� �ּҸ� �����ϴ� ����� �����մϴ�.
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

            // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
            // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
            var fullRoadAddr = data.roadAddress; // ���θ� �ּ� ����
            var extraRoadAddr = ''; // ���θ� ������ �ּ� ����

            // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
            // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
            if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // ���θ�, ���� ������ �ּҰ� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // ���θ�, ���� �ּ��� ������ ���� �ش� ������ �ּҸ� �߰��Ѵ�.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
            document.getElementById('sample4_postcode').value = data.zonecode; //5�ڸ� �������ȣ ���
            document.getElementById('sample4_roadAddress').value = fullRoadAddr;
            document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

            // ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
            if(data.autoRoadAddress) {
                //����Ǵ� ���θ� �ּҿ� ������ �ּҸ� �߰��Ѵ�.
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                document.getElementById('guide').innerHTML = '(���� ���θ� �ּ� : ' + expRoadAddr + ')';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                document.getElementById('guide').innerHTML = '(���� ���� �ּ� : ' + expJibunAddr + ')';

            } else {
                document.getElementById('guide').innerHTML = '';
            }
        }
    }).open();
}
</script>

<script>
$(document).ready(function() {   
	$("#site").attr("class","nav-item ng-star-inserted active");         
	
});
</script>