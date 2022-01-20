<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Focus - Bootstrap Admin Dashboard </title>
    <!-- Datatable -->
    <link href="${contextPath}/resources/assets/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
</head>

<body>

    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">	

		<%@ include file="/WEB-INF/views/common/menubar.jsp" %>
    
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">
            <div class="container-fluid">
                <div class="row page-titles mx-0">
                    <div class="col-sm-12 p-md-0">
                        <div class="welcome-text">
                            <h4>주소록</h4>
                        </div>
                    </div>
                </div>
                
                <!-- row -->

                <div class="row">
                	<div class="col-xl-3 col-lg-2 col-xxl-2 col-md-2">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table student-data-table m-t-20" style="color : black; text-align: center;">
                                        <thead>
                                            <tr>
                                                <th>
                                                <div class="media-left">
                                            		<a href="#"><img src="/codeus/resources/assets/images/empty-profile.png" class="img-fluid rounded-circle" alt="" style="width: 150px"></a>
                                        		</div>
                                        		</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td id="mName">사원 이름<br></td>
                                            </tr>
                                            <tr>
                                                <td id="mJob">직급</td>
                                            </tr>
                                            <tr>
                                                <td id="mDept">부서</td>
                                            </tr>
                                            <tr>
                                                <td id="mPhone">연락처</td>
                                            </tr>
                                            <tr>
                                                <td id="mEmail">이메일</td>
                                            </tr>
                                            <tr>
                                                <td><button class="form-control input-default" style="background: #593bdb; color: white;">-</button></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                	
                    <div class="col-xl-9 col-lg-10 col-xxl-10 col-md-10">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="mList" class="table student-data-table m-t-20" style="color : black; text-align: center; border: none;">
                                        <thead>
                                            <tr>
                                            	<th></th>
                                                <th>이름</th>
                                                <th>직급</th>
                                                <th>부서</th>
                                                <th>연락처</th>
                                                <th>상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<tr>
                                        		<td></td>
	                                            <td id="name">강건강</td>
	                                            <td id="job">대리</td>
	                                            <td id="dept">영업1팀</td>
	                                            <td id="phone">010-1111-2222</td>
	                                            <td id="email">gang@com.kh</td>
	                                            <td><button id="addrMinus" class="form-control input-default" style="background: #593bdb; color: white;">&nbsp-&nbsp</button></td>
                                        	</tr>
                                            <tr>
                                            	<td></td>
                                                <td>강건강</td>
                                                <td>대리</td>
                                                <td>영업1팀</td>
                                                <td>010-1111-2222</td>
                                                <td>gang@com.kh</td>
                                                <td><button class="form-control input-default" style="background: #593bdb; color: white;">&nbsp-&nbsp</button></td>
                                            </tr>
                                            <tr>
                                            	<td></td>
                                                <td>강건강</td>
                                                <td>대리</td>
                                                <td>영업1팀</td>
                                                <td>010-1111-2222</td>
                                                <td>근무중</td>
                                                <td><button class="form-control input-default" style="background: #593bdb; color: white;">&nbsp-&nbsp</button></td>
                                            </tr>
                                            <tr>
                                            	<td></td>
                                                <td>강건강</td>
                                                <td>대리</td>
                                                <td>영업1팀</td>
                                                <td>010-1111-2222</td>
                                                <td>근무중</td>
                                                <td><button class="form-control input-default" style="background: #593bdb; color: white;">&nbsp-&nbsp</button></td>
                                            </tr>
                                            <tr>
                                            	<td></td>
                                                <td>강건강</td>
                                                <td>대리</td>
                                                <td>영업1팀</td>
                                                <td>010-1111-2222</td>
                                                <td>근무중</td>
                                                <td><button class="form-control input-default" style="background: #593bdb; color: white;">&nbsp-&nbsp</button></td>
                                            </tr>
                                            <tr>
                                            	<td></td>
                                                <td>강건강</td>
                                                <td>대리</td>
                                                <td>영업1팀</td>
                                                <td>010-1111-2222</td>
                                                <td>근무중</td>
                                                <td><button class="form-control input-default" style="background: #593bdb; color: white;">&nbsp-&nbsp</button></td>
                                            </tr>
                                            <tr>
                                            	<td></td>
                                                <td>강건강</td>
                                                <td>대리</td>
                                                <td>영업1팀</td>
                                                <td>010-1111-2222</td>
                                                <td>근무중</td>
                                                <td><button class="form-control input-default" style="background: #593bdb; color: white;">&nbsp-&nbsp</button></td>
                                            </tr>
                                            <tr>
                                            	<td></td>
                                                <td>강건강</td>
                                                <td>대리</td>
                                                <td>영업1팀</td>
                                                <td>010-1111-2222</td>
                                                <td>근무중</td>
                                                <td><button class="form-control input-default" style="background: #593bdb; color: white;">&nbsp-&nbsp</button></td>
                                            </tr>
                                            <tr>
                                        		<td style="text-align:center" colspan="7">
                                        			<div style="display:inline-block;">
					                                    <nav>
						                                    <ul class="pagination pagination-xs">
						                                    	
						                                    	<!-- 이전 -->
						                                        <li class="page-item page-indicator">
						                                        	<c:if test="${ pi.currentPage <= 1 }">
						                                        		<i class="icon-arrow-left"></i>
						                                        	</c:if>
						                                        	<c:if test="${ pi.currentPage > 1 }">
						                                        		<c:url var="before" value="list.addr">
																			<c:param name="page" value="${ pi.currentPage - 1 }"/>
																		</c:url>
						                                            	<a class="page-link" href="${ before }">
						                                                	<i class="icon-arrow-left"></i></a>
						                                            </c:if>
						                                        </li>
						                                        
						                                        <!-- 페이지 -->
						                                        <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
						                                        	<c:if test="${ p eq pi.currentPage }">
						                                        		<li class="page-item active"><a class="page-link" href="javascript:void()">${ p }</a>
						                                        		</li>
						                                        	</c:if>
						                                        	
						                                        	<c:if test="${ p ne pi.currentPage }">
						                                        		<c:url var="pagination" value="list.addr">
																			<c:param name="page" value="${ p }"/>
																		</c:url>
						                                        		<li class="page-item"><a class="page-link" href="${ pagination }">${ p }</a></li>
						                                        	</c:if>
						                                        </c:forEach>
						                                        
						                                        <!-- 다음 -->
						                                        <li class="page-item page-indicator">
						                                        	<c:if test="${ pi.currentPage >= pi.maxPage }">
						                                        		<i class="icon-arrow-right"></i>
						                                        	</c:if>
						                                        	<c:if test="${ pi.currentPage < pi.maxPage }">
						                                        		<c:url var="after" value="list.addr">
																			<c:param name="page" value="${ pi.currentPage + 1 }"/>
																		</c:url>
						                                            	<a class="page-link" href="${ after }">
						                                                	<i class="icon-arrow-right"></i></a>
						                                            </c:if>
						                                        </li>
						                                    </ul>
						                                </nav>
				                                    </div>
                                        		</td>
                                        	</tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div style="text-align: right">
                                	<button class="form-control input-default" style="background: #593bdb; color: white; display:inline-block; width: 150px;" onclick="location.href='search.addr'">주소록 검색</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!--**********************************
            Content body end
        ***********************************-->


        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
                <p>Copyright © Designed &amp; Developed by <a href="#" target="_blank">CODEUS</a> 2021</p>
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->      
          
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->
    
    
	    <!--**********************************
	        Scripts
	    ***********************************-->
	    <script>
	    $(function() {
			$('#mList td').mouseenter(function() {
				$(this).parent().css({'color':'purple', 'cursor':'pointer'});
			}).mouseout(function() {
				$(this).parent().css({'color':'black'});
			}).click(function() {
				var tdName = $(this).parent().children().eq(1).text();
				var tdJob = $(this).parent().children().eq(2).text();
				var tdDept = $(this).parent().children().eq(3).text();
				var tdPhone = $(this).parent().children().eq(4).text();
				var tdEmail = $(this).parent().children().eq(5).text();
				
				$("#mName").text(tdName);
				$("#mJob").html(tdJob);
				$("#mDept").html(tdDept);
				$("#mPhone").html(tdPhone);
				$("#mEmail").html(tdEmail);
				
			});
		});
	    </script>
    <!-- Datatable -->
    <script src="${contextPath}/resources/assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="${contextPath}/resources/assets/js/plugins-init/datatables.init.js"></script>

</body>

</html>