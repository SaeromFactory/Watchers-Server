<%--
  Created by IntelliJ IDEA.
  User: moonhyunji
  Date: 2018. 5. 15.
  Time: AM 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>WATCHERS-실종자조회</title>
    <!-- Bootstrap core CSS-->
    <link href="../../../../../../../../Downloads/Front-master/TEST/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="../../../../../../../../Downloads/Front-master/TEST/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Page level plugin CSS-->
    <link href="../../../../../../../../Downloads/Front-master/TEST/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="../../../../../../../../Downloads/Front-master/TEST/css/sb-admin.css" rel="stylesheet">


</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav" style="background:white">
    <a href="index.html">
        <h2><span>W</span>ATCHERS</h2>
    </a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="실종자 찾기">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-user" style="color:#4B48AE"></i>
                    <span class="nav-link-text" style="color:#fff"> 실종자 찾기</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseComponents">
                    <li>
                        <a href="/add_walking" style="color:#fff;"> 걸음걸이 유사도 검사</a>
                    </li>
                    <li>
                        <a href="manage_walking"> 걸음걸이 영상 관리</a>
                    </li>
                    <li>
                        <a href="find_person.html"> 실종자 조회 (현황)</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="강의실 조회 및 현황">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents2" data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-search"></i>
                    <span class="nav-link-text" >회원 정보</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseComponents2">
                    <li>
                        <a href="/add_class"> 회원정보 조회</a>
                    </li>
                    <li>
                        <a href="/manager_look_class"> 회원정보 수정</a>
                    </li>
                    <li>
                        <a href="/manager_chart_class"> 회원 탈퇴</a>
                    </li>
                </ul>
            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="문의게시판">
                <a class="nav-link" href="/manager_contact_list">
                    <i class="fa fa-fw fa-question-circle-o"></i>
                    <span class="nav-link-text">문의게시판</span>
                </a>
            </li>
        </ul>

        <ul class="navbar-nav sidenav-toggler">
            <li class="nav-item">
                <a class="nav-link text-center" id="sidenavToggler">
                    <i class="fa fa-fw fa-angle-left"></i>
                </a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-fw fa-bell"></i>
                    <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">3 New</span>
            </span>
                    <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
                </a>
                <div class="dropdown-menu" aria-labelledby="alertsDropdown">
                    <h6 class="dropdown-header">New Alerts:</h6>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Data Update</strong>
              </span>
                        <span class="small float-right text-muted">05:37 PM</span>
                        <div class="dropdown-message small">실종자 공공데이터 추가</div>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
                        <span class="small float-right text-muted">10:40 PM</span>
                        <div class="dropdown-message small">검색 에러 수정 완료</div>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Data Update</strong>
              </span>
                        <span class="small float-right text-muted">11:21 AM</span>
                        <div class="dropdown-message small">걸음걸이 데이터 추가</div>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item small" href="#">View all alerts</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                    <i class="fa fa-fw fa-sign-out"></i>Logout</a>
            </li>
        </ul>
    </div>
</nav>
<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                실종자 찾기
            </li>
            <li class="breadcrumb-item active"><a href="#">걸음걸이 유사도 검사</a></li>
        </ol>

    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
        <div class="container">
            <div class="text-center">
                <small>Copyright © Your Website 2018</small>
            </div>
        </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">아래의 "Logout" 버튼 클릭 시 로그아웃 됩니다.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <!— Bootstrap core JavaScript—>
    <script src="../../../../../../../../Downloads/Front-master/TEST/vendor/jquery/jquery.min.js"></script>
    <script src="../../../../../../../../Downloads/Front-master/TEST/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!— Core plugin JavaScript—>
    <script src="../../../../../../../../Downloads/Front-master/TEST/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!— Page level plugin JavaScript—>
    <script src="../../../../../../../../Downloads/Front-master/TEST/vendor/chart.js/Chart.min.js"></script>
    <script src="../../../../../../../../Downloads/Front-master/TEST/vendor/datatables/jquery.dataTables.js"></script>
    <script src="../../../../../../../../Downloads/Front-master/TEST/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!— Custom scripts for all pages—>
    <script src="../../../../../../../../Downloads/Front-master/TEST/js/sb-admin.min.js"></script>
    <!— Custom scripts for this page—>
    <script src="../../../../../../../../Downloads/Front-master/TEST/js/sb-admin-datatables.min.js"></script>
    <script src="../../../../../../../../Downloads/Front-master/TEST/js/sb-admin-charts.min.js"></script>
</div>
</div>
</body>

</html>

