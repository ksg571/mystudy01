<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    ������ ������
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="resources/assets/css/material-dashboard.css" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="resources/assets/demo/demo.css" rel="stylesheet" />       
</head>       

<body>
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white">
      <!--
      Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

      Tip 2: you can also add an image using data-image tag
  -->
      <div class="logo">
        <a href="adminMain" class="simple-text logo-mini">
          <small>���ֵ� �÷�</small>
        </a>
        <a href="adminMain" class="simple-text logo-normal">
	          ���� ������ ���� ������<br>
	     <small>�ڹ��� �����ڴ�</small>
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item" id="main">
            <a class="nav-link" href="bandbAdminMain">
              <i class="material-icons">home</i>
              <p>������ ����</p>
            </a>
          </li>
          
          	<li class="nav-item ng-star-inserted" routerlinkactive="active" id="site">
				<!---->
				<!---->
				<a class="nav-link ng-star-inserted" data-toggle="collapse"
				href="#maps"><i class="material-icons">list_alt</i><p>���� ���<b class="caret"></b></p></a>
			<!---->
				<div class="collapse ng-star-inserted" id="maps">
				<ul class="nav">    
              <!---->        
              <li class="nav-item ng-star-inserted" routerlinkactive="active">
              <a class="nav-link" href="bandbregisterform">
              <span class="sidebar-normal">���� ���</span></a></li>
              <li class="nav-item ng-star-inserted" routerlinkactive="active">
              <a class="nav-link" href="bandbroomregisterform">
              <span class="sidebar-normal">�� ���</span></a></li>
 
              </ul>
				</div>
			</li>
          
              
		      <li class="nav-item ng-star-inserted" routerlinkactive="active" id="hotels">
				<!---->
				<!---->
				<a class="nav-link ng-star-inserted" data-toggle="collapse"
				href="#forms"><i class="material-icons">hotel</i><p>��� ���� ����<b class="caret"></b></p></a>
			<!---->
				<div class="collapse ng-star-inserted" id="forms">
					              <ul class="nav">
		              <!---->
		              <li class="nav-item ng-star-inserted" routerlinkactive="active">
		              <a class="nav-link" href="bandbreservationList">
		              <span class="sidebar-normal">��ϵ� ���� ����Ʈ</span></a></li>
		              <li class="nav-item ng-star-inserted" routerlinkactive="active">
		              <a class="nav-link" href="bandbAllList">
		              <span class="sidebar-normal">���� ������</span></a></li>
		              </ul>
				</div>
			</li>
              
              
          <li class="nav-item ng-star-inserted" routerlinkactive="active">
				<!---->
				<!---->
				<a class="nav-link ng-star-inserted" data-toggle="collapse"
				href="#chart"><i class="material-icons">show_chart</i><p>����Ʈ ���<b class="caret"></b></p></a>
			<!---->
				<div class="collapse ng-star-inserted" id="chart">
              <ul class="nav">
              <!---->
              <li class="nav-item ng-star-inserted" routerlinkactive="active">
              <a class="nav-link" href="#/maps/google">
              <span class="sidebar-normal">ȸ���� ���</span></a></li>
              <li class="nav-item ng-star-inserted" routerlinkactive="active">
              <a class="nav-link" href="#/maps/fullscreen">
              <span class="sidebar-normal">���ھ��� ��Ȳ</span>
              </a>
              </li>
              <li class="nav-item ng-star-inserted" routerlinkactive="active">
              <a class="nav-link" href="#/maps/vector">
              <span class="sidebar-normal">�ܱ����� ��Ȳ</span>
              </a>
              </li>
              <li class="nav-item ng-star-inserted" routerlinkactive="active">
              <a class="nav-link" href="#/maps/vector">
              <span class="sidebar-normal">�˻� ���</span>
              </a>
              </li>
              </ul>
				</div>
			</li>

          <li class="nav-item" id="UserQuestion">
            <a class="nav-link" href="bandbadminUserQuestion">
              <i class="material-icons">local_post_office</i>
              <p>���ǻ��� Ȯ��</p>
            </a>
          </li>
              
          <li class="nav-item">
            <a class="nav-link" href="home">
              <i class="material-icons">input</i>
              <p>������</p>
            </a>
          </li>
          <!-- your sidebar here -->
        </ul>
      </div>
    </div>
    <div class="main-panel">
    <div class="container-fluid">
  <script src="https://demos.creative-tim.com/material-dashboard-pro-angular2/runtime.549c83cdd6595a97c6fa.js"></script>
  <script src="https://demos.creative-tim.com/material-dashboard-pro-angular2/polyfills-es5.169af151eb932b43c005.js" nomodule=""></script>
  <script src="https://demos.creative-tim.com/material-dashboard-pro-angular2/polyfills.9445db372b58d5cc8850.js"></script>
  <script src="https://demos.creative-tim.com/material-dashboard-pro-angular2/scripts.aa8db8cedfb8c62d70b1.js"></script>
  <script src="https://demos.creative-tim.com/material-dashboard-pro-angular2/main.455d86f979dcd693ad75.js"></script>