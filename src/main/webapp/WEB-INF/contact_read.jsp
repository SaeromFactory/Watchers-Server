<%--
  Created by IntelliJ IDEA.
  User: moonhyunji
  Date: 2018. 5. 14.
  Time: PM 11:56
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

    <title>Welcome to C-TROL</title>

    <!-- Bootstrap core CSS-->

    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->

    <link href="/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->

    <link href="/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->

    <link href="/css/sb-admin.css" rel="stylesheet">

</head>



<body class="fixed-nav sticky-footer bg-dark" id="page-top">

<!-- Navigation-->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">

    <a class="navbar-brand" href="/main">C-TROL </a>

    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">

        <span class="navbar-toggler-icon"></span>

    </button>

    <div class="collapse navbar-collapse" id="navbarResponsive">

        <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="강의실 조회">

                <a class="nav-link" href="/look_class" >

                    <i class="fa fa-fw fa-search" ></i>

                    <span class="nav-link-text">강의실 조회</span>

                </a>

            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="강의실 제어">

                <a class="nav-link" href="/control_class">

                    <i class="fa fa-fw fa-wrench"></i>

                    <span class="nav-link-text">강의실 제어</span>

                </a>

            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="통계 정보">

                <a class="nav-link" href="/chart_class">

                    <i class="fa fa-fw fa-bar-chart"></i>

                    <span class="nav-link-text">통계 정보</span>

                </a>

            </li>





            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="회원 정보">

                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">

                    <i class="fa fa-fw fa-user"></i>

                    <span class="nav-link-text">회원 정보</span>

                </a>

                <ul class="sidenav-second-level collapse" id="collapseComponents">

                    <li>

                        <a href="/look_inf">- 회원정보 조회</a>

                    </li>

                    <li>

                        <a href="/change_inf">- 회원정보 수정</a>

                    </li>

                    <li>

                        <a href="/delete_inf">- 회원 탈퇴</a>

                    </li>

                </ul>

            </li>



            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="문의게시판">

                <a class="nav-link" href="/contact_list" style="color:#fed136">

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

            <li class="nav-item">

                <a class="nav-link" data-toggle="modal" data-target="#exampleModal">

                    <i class="fa fa-fw fa-sign-out"></i> Logout</a>

            </li>

        </ul>

    </div>

</nav>





<div class="content-wrapper">

    <div class="container-fluid">

        <ol class="breadcrumb">

            <li class="breadcrumb-item">

                <a href="#">문의게시판</a>

            </li>

        </ol>



        <br/>

        <section id="contact">

            <div class="container">

                <div class="row">

                </div>

                <div class="row">

                    <div class="col-lg-12">

                        <form action="/contact_update" method="get">

                            <table class="table table-bordered">

                                <input type="hidden" name="idx" value="<%=row.idx%>"/>

                                <tr>

                                    <th width=90 style="background-color: #ededed; text-align: center;">작성자</th>

                                    <td ><%= row.creator_id %></td>

                                </tr>

                                <tr>

                                    <th style="background-color: #ededed; text-align: center;">제목</th>

                                    <td><%= row.title %></td>

                                </tr>

                                <tr>

                                    <th style="background-color: #ededed; text-align: center;">내용</th>

                                    <td><%= row.content %></td>

                                </tr>

                                <tr>

                                    <th style="background-color: #ededed; text-align: center;">변경일</th>

                                    <td><%= row.modidate %></td>

                                </tr>

                                <tr>

                                    <th style="background-color: #ededed; text-align: center;">이메일</th>

                                    <td><%= row.mail %></td>

                                </tr>

                            </table>



                            <br/>

                            <a class="btn btn-primary btn-l text-uppercase js-scroll-trigger find_id" href="/contact_update/<%=row.idx%>">글 수정하기</a>



                            <a href="/contact_delete?idx=<%=row.idx%>"><button type="button" class="btn btn-primary btn-xl text-uppercase">글 삭제하기</button></a>



                            <br><br>

                            <a href="/contact_list">리스트로 돌아가기</a> <br/>





                        </form>

                    </div>

                </div>

            </div>

        </section>





        <!-- /.container-fluid-->

        <!-- /.content-wrapper-->

        <footer class="sticky-footer">

            <div class="container">

                <div class="text-center">

                    <small>Copyright © Team number 6 .2017</small>

                </div>

            </div>

        </footer>

        <!-- Scroll to Top Button-->

        <a class="scroll-to-top rounded" href="#page-top">

            <i class="fa fa-angle-up"></i>

        </a>



        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">

            <div class="modal-dialog" role="document">

                <div class="modal-content">

                    <div class="modal-header">

                        <h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>

                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">

                            <span aria-hidden="true">×</span>

                        </button>

                    </div>

                    <div class="modal-body">"Logout" 클릭 시 로그아웃 됩니다.</div>

                    <div class="modal-footer">

                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>

                        <a class="btn btn-primary" href="/login">Logout</a>

                    </div>

                </div>

            </div>

        </div>



        <!-- Bootstrap core JavaScript-->

        <script src="/vendor/jquery/jquery.min.js"></script>

        <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->

        <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->

        <script src="/vendor/chart.js/Chart.min.js"></script>

        <script src="/vendor/datatables/jquery.dataTables.js"></script>

        <script src="/vendor/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->

        <script src="/js/sb-admin.min.js"></script>

        <!-- Custom scripts for this page-->

        <script src="/js/sb-admin-datatables.min.js"></script>

        <script src="/js/sb-admin-charts.min.js"></script>

    </div>

</div>

</body>



</html>
