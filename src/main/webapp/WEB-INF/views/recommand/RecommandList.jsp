<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<style>
tr {
	color: black;
}
</style>
<div class="container">
	<div>
		<h1>추천 게시판</h1>
	</div>
	<br />
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">구독서비스 추천</a></li>
					<li><a href="#">컨텐츠 추천</a></li>
					<li><a href="#">꿀팁 추천</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
							정렬<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">최신순</a></li>
							<li><a href="#">추천순</a></li>
						</ul>
					</li>
				</ul>
				<!-- 검색용 UI -->
				<div class="row"">
					<div class="text-right">
						<form class="form-inline" method="post"
							action="<c:url value='/recommand/recommandList.do'/>">
							<div class="form-group">
								<select name="searchColumn" class="form-control">
									<option value="title">제목</option>
									<option value="name">작성자</option>
									<option value="content">내용</option>
								</select>
							</div>
							<div class="form-group">
								<input type="text" name="searchWord" class="form-control" />
							</div>
							<button type="submit" class="btn btn-primary">검색</button>
						</form>
					</div>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col" class="col-md-1 text-center">No</th>
					<th scope="col" class="col-md-2 text-center">Title</th>
					<th scope="col" class="col-md-1 text-center">Writer</th>
					<th scope="col" class="col-md-1 text-center">PostDate</th>
					<th scope="col" class="col-md-1 text-center">LikeCount</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty listPagingData.lists }" var="isEmpty">
					<tr>
						<td colspan="4" style="text-align: center;">등록된 게시물이 없어요</td>
					</tr>
				</c:if>
				<c:if test="${not isEmpty }">
					<c:forEach var="item" items="${listPagingData.lists}"
						varStatus="loop">
						<tr>
							<td>${listPagingData.totalRecordCount - (((listPagingData.nowPage - 1) * listPagingData.pageSize) + loop.index)}</td>

							<td class="text-left"><a
								href="<c:url value="/recommand/recommandView.do?no=${item.no}&nowPage="/><c:out value="${param.nowPage }" default="1"/>">${item.title }</a>
								<span class="badge">${item.commentCount }</span></td>
							<td>${item.name }</td>
							<td>${item.postDate }</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>

		<a class="btn btn-default pull-right"
			href="<c:url value='/recommandWrite.do'/>">글쓰기</a>

		<div class="text-center">
			<!-- 페이징 -->
			<c:if test="${listPagingData.lists.size() !=0 }">
				<div class="row">
					<div class="col-md-12 text-center">${listPagingData.pagingString}</div>
				</div>
			</c:if>
		</div>
	</div>
</div>