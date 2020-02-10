<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@include file="sidebar.jsp"%>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
          <div class="row">    
            <div class="col-lg-3 col-md-6 col-sm-6" >
              <div class="card card-stats" style="box-shadow : 0 4px 10px 0">
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">how_to_reg</i>
                  </div>
                  <p class="card-category" style="color:#fb8c00">�� ȸ����</p>
                  <h3 class="card-title">100,000   
                    <small>��</small>
                  </h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons text-danger">warning</i>
                    <a href="#pablo">Get More Space...</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats" style="box-shadow : 0 4px 10px 0">
                <div class="card-header card-header-success card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">local_post_office</i>
                  </div>
                  <p class="card-category" style="color:#43a047">���ǻ��� ���</p>
                  <h3 class="card-title">10
                  	<small>��</small>
                  </h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">date_range</i> Last 24 Hours
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats" style="box-shadow : 0 4px 10px 0">
                <div class="card-header card-header-danger card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">emoji_people</i>
                  </div>
                  <p class="card-category" style="color:#e53935">���ھ��� ���δ��</p>
                  <h3 class="card-title">5
                 	 <small>��</small>
                  </h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">local_offer</i> Tracked from Github
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats" style="box-shadow : 0 4px 10px 0">
                <div class="card-header card-header-info card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">hotel</i>
                  </div>
                  <p class="card-category" style="color:#00acc1">���ھ��� ���δ��</p>
                  <h3 class="card-title">24  
                  	<small>��</small>    
                  </h3>
                </div>    
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">update</i> Just Updated
                  </div>
                </div>
              </div>
            </div>
          </div>   
          
         <div class="card" style="width: 1000px; height: 600px; box-shadow : 0 4px 10px 0; float: left">
        	<div class="card-header card-header-icon card-header-primary">
        		<div class="card-icon">
        			<i class="material-icons">apartment</i>  
        		</div>    
        		<h4 class="card-title">��ϵ� ���ھ�ü
        			<small>- ���ֵ�</small>
        		</h4>  
        	</div>                    
        	<div class="card-body">    
				<div id="map" style="width:100%;height:100%; margin-top: 0px"></div>
        	</div>          
        </div>       
                         
       <div class="card" style="width: 582px; height: 600px; box-shadow : 0 4px 10px 0; margin-left: 1030px">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">���ھ�ü �󼼺���</h4>
                  <p class="card-category">������ ��Ŀ�� Ŭ���ϸ� �ش� ��ü�� �󼼺��Ⱑ �����մϴ�</p>
                </div>                       
        	<div class="card-body">    
<!-- AJAXó���Ұ�        	
                     <table class="table">
                      <tbody>
                      	<tr>
                          <td class="text-primary">����</td>
                          <td>����</td>    
                        </tr>
                        <tr>
                          <td class="text-primary">��ü�̸�</td>
                          <td>����Ʈ</td>    
                        </tr>
                        <tr>
                          <td class="text-primary">�����ھ��̵�</td>
                          <td>hong123</td> 
                        </tr>
                        <tr>
                          <td class="text-primary">�ּ�</td>
                          <td>����Ư����ġ��</td> 
                        </tr>
                        <tr>
                          <td class="text-primary">��ȭ��ȣ</td>
                          <td>010-9692-5209</td> 
                        </tr>
                      </tbody>    
                    </table> --> 
                    <p style="margin-top: 220px; margin-left: 190px; font-size: 15px">������ ��Ŀ�� Ŭ�����ּ���</p>       
        	</div>          
        </div>   
                      
		<div class="card" style="width: 1615px; height: 600px; box-shadow : 0 4px 10px 0; margin-top: 60px">
        	<div class="card-header card-header-icon card-header-rose">
        		<div class="card-icon">
        			<i class="material-icons">insert_chart</i>  
        		</div>    
        		<h4 class="card-title">Multiple Bars Chart
        			<small>- Bar Chart</small>     
        		</h4>  
        	</div>                                
        	<div class="card-body">    
        		<canvas id="myChart" height="100px" style="height: 100px"></canvas>
        	</div>          
        </div>            
		              
        </div>         
    </div>
  </div>
  
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script>
var ctx = document.getElementById('myChart').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'bar',

    // The data for our dataset
    data: {
        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
        datasets: [{
            label: 'My First dataset',
            backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: [0, 10, 5, 2, 20, 30, 45]
        }]
    },

    // Configuration options go here
    options: {}
});
</script>

<script>
$(document).ready(function() {   
	$("#main").attr("class","nav-item active");
});
</script>

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fccc5bbbd75f1eda68de2e11f848fb3c&libraries=services"></script>
<script>

var mapContainer = document.getElementById('map'), // ������ ǥ���� div  
mapOption = { 
    center: new kakao.maps.LatLng(33.378922, 126.534310), // ������ �߽���ǥ
    level: 10 // ������ Ȯ�� ����
};   
  
var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

//��Ŀ�� ǥ���� ��ġ�� ������ ������ �ִ� ��ü �迭�Դϴ� 
var positions = [
{
    content: '<div>���ֱ�������</div>', 
    latlng: new kakao.maps.LatLng(33.504724, 126.493655)
},
{
    content: '<div>��º�����</div>', 
    latlng: new kakao.maps.LatLng(33.341343, 126.278416)
},
{
    content: '<div>�Ѷ�� ��������</div>', 
    latlng: new kakao.maps.LatLng(33.392053, 126.494821)
},
{
    content: '<div>�쵵 119��������</div>',
    latlng: new kakao.maps.LatLng(33.502165, 126.953610)
},
{
    content: '<div>���� ����</div>', 
    latlng: new kakao.maps.LatLng(33.1157089,126.2670024)
}
];

for (var i = 0; i < positions.length; i ++) {
// ��Ŀ�� �����մϴ�
var marker = new kakao.maps.Marker({
    map: map, // ��Ŀ�� ǥ���� ����
    position: positions[i].latlng // ��Ŀ�� ��ġ
});

// ��Ŀ�� ǥ���� ���������츦 �����մϴ� 
var infowindow = new kakao.maps.InfoWindow({
    content: positions[i].content // ���������쿡 ǥ���� ����
});

// ��Ŀ�� mouseover �̺�Ʈ�� mouseout �̺�Ʈ�� ����մϴ�
// �̺�Ʈ �����ʷδ� Ŭ������ ����� ����մϴ� 
// for������ Ŭ������ ����� ���� ������ ������ ��Ŀ���� �̺�Ʈ�� ��ϵ˴ϴ�
kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
}

//���������츦 ǥ���ϴ� Ŭ������ ����� �Լ��Դϴ� 
function makeOverListener(map, marker, infowindow) {
return function() {
    infowindow.open(map, marker);
};
}

//���������츦 �ݴ� Ŭ������ ����� �Լ��Դϴ� 
function makeOutListener(infowindow) {
return function() {
    infowindow.close();
};
}
	
</script>