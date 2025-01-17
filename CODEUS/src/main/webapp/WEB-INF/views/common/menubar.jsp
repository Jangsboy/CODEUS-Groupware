<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>CODEUS</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16" href="${contextPath}/assets/resources/images/favicon.png">
<!-- Custom Stylesheet -->
<link href="${contextPath}/resources/assets/css/style.css" rel="stylesheet">
<<<<<<< HEAD
=======
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<!-- Google fonts - Noto Sans Korean -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans+KR:wght@300;400&family=Open+Sans&display=swap" rel="stylesheet">
<style>
	 body, h1, h2, h3, h4, h5, h6, p, span {
   	 	font-family: 'Noto Sans KR', sans-serif;
  	 }
</style>
>>>>>>> d31304d0cad71859059cb6703cfe015ab24268ab
</head>

<body>

	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>

    <!--*******************
        Preloader start
    ********************--> 
    <div id="preloader">
        <div class="sk-three-bounce">
            <div class="sk-child sk-bounce1"></div>
            <div class="sk-child sk-bounce2"></div>
            <div class="sk-child sk-bounce3"></div>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************--> 

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <div class="brand-logo">
                <img class="logo-abbr" src="${contextPath}/resources/assets/images/logo.png" alt="" style="border-radius: 100%; width: 170px; height: 32px;">
               <%--  <img class="logo-compact" src="${contextPath}/resources/assets/images/logo-text.png" alt=""> --%>
               <%--  <img class="brand-title" src="${contextPath}/resources/assets/images/logo-text.png" alt="" style="width: 200px; height: 100px;"> --%>
               	<b class="logo-compact" style="font-size: x-large;">CODEUS</b>
               	<b class="brand-title" style="font-size: x-large;">CODEUS</b>
           </div>

            <div class="nav-control">
                <div class="hamburger">
                    <span class="line"></span><span class="line"></span><span class="line"></span>
                </div>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">
            <div class="header-content">
                <nav class="navbar navbar-expand">
                    <div class="collapse navbar-collapse justify-content-between">
                        <div class="header-left">
                        </div>
                        
                        <ul class="navbar-nav header-right">
                            <li class="nav-item dropdown notification_dropdown">
                                <a class="nav-link" href="#" role="button" data-toggle="dropdown">
                                    <i class="mdi mdi-bell"></i>
                                    <div class="pulse-css"></div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <ul class="list-unstyled">
                                        <li class="media dropdown-item">
                                            <span class="success"><i class="ti-user"></i></span>
                                            <div class="media-body">
                                                <a href="#">
                                                    <p><strong>Martin</strong> has added a <strong>customer</strong> Successfully
                                                    </p>
                                                </a>
                                            </div>
                                            <span class="notify-time">3:20 am</span>
                                        </li>
                                        <li class="media dropdown-item">
                                            <span class="primary"><i class="ti-shopping-cart"></i></span>
                                            <div class="media-body">
                                                <a href="#">
                                                    <p><strong>Jennifer</strong> purchased Light Dashboard 2.0.</p>
                                                </a>
                                            </div>
                                            <span class="notify-time">3:20 am</span>
                                        </li>
                                        <li class="media dropdown-item">
                                            <span class="danger"><i class="ti-bookmark"></i></span>
                                            <div class="media-body">
                                                <a href="#">
                                                    <p><strong>Robin</strong> marked a <strong>ticket</strong> as unsolved.
                                                    </p>
                                                </a>
                                            </div>
                                            <span class="notify-time">3:20 am</span>
                                        </li>
                                        <li class="media dropdown-item">
                                            <span class="primary"><i class="ti-heart"></i></span>
                                            <div class="media-body">
                                                <a href="#">
                                                    <p><strong>David</strong> purchased Light Dashboard 1.0.</p>
                                                </a>
                                            </div>
                                            <span class="notify-time">3:20 am</span>
                                        </li>
                                        <li class="media dropdown-item">
                                            <span class="success"><i class="ti-image"></i></span>
                                            <div class="media-body">
                                                <a href="#">
                                                    <p><strong> James.</strong> has added a<strong>customer</strong> Successfully
                                                    </p>
                                                </a>
                                            </div>
                                            <span class="notify-time">3:20 am</span>
                                        </li>
                                    </ul>
                                    <a class="all-notification" href="#">See all notifications <i
                                            class="ti-arrow-right"></i></a>
                                </div>
                            </li>
                            <li class="nav-item dropdown header-profile">
                                <a class="nav-link" href="#" role="button" data-toggle="dropdown">
                                    <i class="mdi mdi-account"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="myinfo.me" class="dropdown-item">
                                        <span class="ml-2">기본정보 </span>
                                    </a>
                                    <a href="./email-inbox.html" class="dropdown-item">
                                        <span class="ml-2">환경설정 </span>
                                    </a>
                                    <a href="./email-inbox.html" class="dropdown-item">
                                        <span class="ml-2">알림설정 </span>
                                    </a>
                                    <a href="./email-inbox.html" class="dropdown-item">
                                        <span class="ml-2">보안설정 </span>
                                    </a>
                                    <a href="./email-inbox.html" class="dropdown-item">
                                        <span class="ml-2">관리자페이지 </span>
                                    </a>
<<<<<<< HEAD
                                    <a href="logout.me" class="dropdown-item">
                                        <span class="ml-2">로그아웃 </span>
                                    </a>
=======
                                    <c:if test="${ loginUser.managerYn == 'Y' }">
	                                    <a href="${contextPath}/admin/mlist.ad" class="dropdown-item">
	                                        <i class="fa fa-mail-forward"></i>
	                                        <span class="ml-2">Admin Page </span>
	                                    </a>
                                    </c:if>
                                     <c:if test="${ loginUser != null }">
	                                    <a href="logout.me" class="dropdown-item">
	                                        <i class="icon-key"></i>
	                                        <span class="ml-2">Logout </span>
                                    	</a>
                                    </c:if>                                    
                                    <c:if test="${ loginUser == null }">
	                                    <a href="${ contextPath }" class="dropdown-item">
	                                        <i class="icon-key"></i>
	                                        <span class="ml-2">Login </span>
                                    	</a>
                                    </c:if>  
>>>>>>> d31304d0cad71859059cb6703cfe015ab24268ab
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="quixnav"  style="background: #292B48;">
            <div class="quixnav-scroll">
                <ul class="metismenu" id="menu">
                	<li class="nav-label first"></li>
<<<<<<< HEAD
                    <li><a href="${contextPath}" aria-expanded="false"><i
                                class="icon icon-app-store"></i><!-- <i class="fa fa-home"></i> --><!-- <i class="fa fa-dashboard"></i> --><span class="nav-text">대시보드</span></a>
                    </li>
                    
                   <!--  <li class="nav-label">Apps</li> -->
                    <li><a href="javascript:void()" aria-expanded="false">
                    		<i class="fa fa-comments"></i><span class="nav-text">채팅</span></a>
=======
                    <li><a href="home.do" aria-expanded="false">
                         <i class="fa fa-home"></i><span class="nav-text">대시보드</span></a>
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    		<i class="bi bi-chat-dots"></i><span class="nav-text">채팅</span></a>
						<ul aria-expanded="false">
		                    <li><a href="chetList.ch">채팅방 목록</a></li>
                            <li><a href="chetSearch.ch">채팅방 검색</a></li>
                       	</ul>
>>>>>>> d31304d0cad71859059cb6703cfe015ab24268ab
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    		<i class="fa fa-file-text"></i><span class="nav-text">전자결재</span></a>
                        <ul aria-expanded="false">
                            <li><a href="mydocView.dc">내 문서함</a></li>
                            <li><a href="teamdocView.dc">부서 문서함</a></li>
                            <li><a href="newApprovalView.dc">문서 기안</a></li>
                        </ul>
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    		<i class="icon icon-users-mm"></i><!-- <i class="fa fa-child"></i> --><span class="nav-text">커뮤니티</span></a>
                        <ul aria-expanded="false">
<<<<<<< HEAD
                            <li><a href="javascript:void()">자유게시판</a></li>
                            <li><a href="javascript:void()">중고장터</a></li>

                        </ul>
                    </li>
                    <li><a href="javascript:void()" aria-expanded="false"><i
                                class="fa fa-bullhorn"></i><span class="nav-text">공지사항</span></a>
                    </li>
                    <li><a href="widget-basic.html" aria-expanded="false"><i class="fa fa-folder-open-o"></i><span
                                class="nav-text">자료실</span></a>
=======
                            <li><a href="Commblist.bo">자유게시판</a></li>
                            <li><a href="marketblist.bo">중고장터</a></li>
                        </ul>
                    </li>
                    <li><a href="noticeBoardList.nb" aria-expanded="false">
                    	<i class="bi bi-megaphone-fill"></i><span class="nav-text">공지사항</span></a>
                    </li>
                    <li><a href="archive.arch" aria-expanded="false">
                    	<i class="bi bi-cloud-arrow-down"></i><span class="nav-text">자료실</span></a>
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    		<i class="fa fa-phone-square"></i><span class="nav-text">주소록</span></a>
                    	<ul aria-expanded="false">
		                    <li><a href="list.addr">주소록 목록</a></li>
                            <li><a href="search.addr">주소록 검색</a></li>
                       	</ul>
>>>>>>> d31304d0cad71859059cb6703cfe015ab24268ab
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fa fa-pencil-square-o"></i><span class="nav-text">회의실예약</span></a>
                        <ul aria-expanded="false">
                            <li><a href="javascript:void()">예약하기</a></li>
                            <li><a href="javascript:void()">회의실 목록</a></li>
                        </ul>
                    </li>
<<<<<<< HEAD
                   	<li><a href="javascript:void()" aria-expanded="false">
                    		<i class="fa fa-phone-square"></i><span class="nav-text">주소록</span></a>
                    </li>  
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fa fa-briefcase"></i><span class="nav-text">근태관리</span></a>
                        <ul aria-expanded="false">
                            <li><a href="javascript:void()">근태 현황</a></li>
                            <li><a href="javascript:void()">Datatable</a></li>
                        </ul>
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
=======
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fa fa-briefcase"></i><span class="nav-text">근태관리</span></a>
                        <ul aria-expanded="false">
                           <li><a href="empStatusMain.em">근태 현황</a></li>
                            <li><a href="annualLeaveMain.al">연차현황</a></li>
                        </ul>
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fa fa-calendar"></i><span class="nav-text">캘린더</span></a>
                        <ul aria-expanded="false">
                            <li><a href="calendar.ca">사내 일정 캘린더</a></li>
                            <li><a href="calendar2.ca">내 일정 캘린더</a></li>
                        </ul>
                    </li>                    
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
>>>>>>> d31304d0cad71859059cb6703cfe015ab24268ab
                                class="icon icon-single-04"></i><span class="nav-text">마이페이지</span></a>
                        <ul aria-expanded="false">
                            <li><a href="javascript:void()">내 정보</a></li>
                            <li><a href="javascript:void()">스크랩 관리</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->
 
	
	    <!--**********************************
	        Scripts
	    ***********************************-->
	    <!-- Required vendors -->
	    <script src="${contextPath}/resources/assets/vendor/global/global.min.js"></script>
	    <script src="${contextPath}/resources/assets/js/quixnav-init.js"></script>
	    <script src="${contextPath}/resources/assets/js/custom.min.js"></script>      
</body>
</html>