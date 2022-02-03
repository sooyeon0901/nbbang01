<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 회원 관리 페이지 -->

<%@ include file="/WEB-INF/views/template/AdminTop.jsp"%>
<style>
.pagination {
	margin-left: 350px;
}
</style>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">


				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">회원 Overview</h1>
					<p class="mb-4">전체 회원의 기본 정보를 알 수 있습니다.</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">DataTables</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>E-mail</th>
											<th>Name</th>
											<th>NickName</th>
											<th>Birthdate</th>
											<th>Gender</th>
											<th>Tel</th>
											<th>UserType</th>
											<th>Preference</th>
											<th>Registdate</th>
											<th>Authority</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${! empty listPagingData.lists}" var="isEmpty">
											<c:forEach items="${listPagingData.lists}" var="dto">
												<tr>
													<td name="email" id="emailAdmin">${dto.email}</td>
													<td>${dto.name}</td>
													<td>${dto.nickname}</td>
													<td>${dto.birthdate}</td>
													<td>${dto.gender}</td>
													<td>${dto.tel}</td>
													<td>${dto.usertype}</td>
													<td>${dto.preference}</td>
													<td>${dto.registdate}</td>
													<td>${dto.authority}</td>
												</tr>
											</c:forEach>
										</c:if>
										<c:if test="${! isEmpty}">
											<tr>
												<td colspan="9">멤버를 불러오는데 실패했습니다</td>
											</tr>
										</c:if>
									</tbody>
								</table>
							</div>

							<c:if test="${listPagingData.lists.size() !=0 }">
								${listPagingData.pagingString}
							</c:if>
							<!-- 페이지네이션 끝 -->

						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->
	
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>-->
	
	<script>
	/*
	$(function(){
		$('.emailSubmit').click(function(){
			console.log("------------------");
			console.log("클릭 이벤트 발생:",$("#emailAdmin").val());
			console.log("파라미터값들:",$("#emailAdmin").html());
			
			//ajax로 요청]
			$.ajax({
				url:"<c:url value='/blackMember.do'/>",
				data:$("#emailAdmin").html(),
				dataType:"text",
				type:"post",
				success:function(data){
					console.log("서버로부터 받은 데이타:",data);
				}
			});
		});//click
		
		
		
	});
	*/
	
	
	</script>

	<%@ include file="/WEB-INF/views/template/AdminFooter.jsp"%>