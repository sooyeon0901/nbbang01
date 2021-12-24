<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<style>
	tr{
		color : black;
	}
</style>
<div class="container">
	<div>
		<h1>자유 게시판</h1>
	</div>
	<br/>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="collapse navbar-collapse">
	      <ul class="nav navbar-nav">
	        <li><a href="#">일반</a></li>
	        <li><a href="#">리뷰</a></li>
	        <li><a href="#">정보</a></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">정렬 <span class="caret"></span></a>
	          <ul class="dropdown-menu" role="menu">
	            <li><a href="#">최신순</a></li>
	            <li><a href="#">조회순</a></li>
	            <li><a href="#">추천순</a></li>
	          </ul>
	        </li>
	      </ul>
	      <form class="navbar-form navbar-right" role="search">
	        <div class="form-group">
	          <input type="text" class="form-control" placeholder="검색">
	        </div>
	        <button type="submit" class="btn btn-default">검색</button>
	      </form>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	<div class="table-responsive">
		<table class="table table-hover">
		  <thead>
		    <tr>
		      <th scope="col" class="col-md-1 text-center">No</th>
		      <th scope="col" class="col-md-2 text-center">Title</th>
		      <th scope="col" class="col-md-1 text-center">Writer</th>
		      <th scope="col" class="col-md-1 text-center">PostDate</th>
		      <th scope="col" class="col-md-1 text-center">ViewCount</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <td class="text-center">Free No</td>
		      <td><a href="<c:url value='/recommandView.do'/>" style="text-decoration:none; color:black">Free Title</a></td>
		      <td class="text-center">Free Writer</td>
		      <td class="text-center">Free PostDate</td>
		      <td class="text-center">Free ViewCount</td>
		    </tr>
		    <tr>
		      <td class="text-center">Free No</td>
		      <td><a href="<c:url value='/recommandView.do'/>" style="text-decoration:none; color:black">Free Title</a></td>
		      <td class="text-center">Free Writer</td>
		      <td class="text-center">Free PostDate</td>
		      <td class="text-center">Free ViewCount</td>
		    </tr>
		    <tr>
		      <td class="text-center">Free No</td>
		      <td><a href="<c:url value='/recommandView.do'/>" style="text-decoration:none; color:black">Free Title</a></td>
		      <td class="text-center">Free Writer</td>
		      <td class="text-center">Free PostDate</td>
		      <td class="text-center">Free ViewCount</td>
		    </tr>
		    <tr>
		      <td class="text-center">Free No</td>
		      <td><a href="<c:url value='/recommandView.do'/>" style="text-decoration:none; color:black">Free Title</a></td>
		      <td class="text-center">Free Writer</td>
		      <td class="text-center">Free PostDate</td>
		      <td class="text-center">Free ViewCount</td>
		    </tr>
		    <tr>
		      <td class="text-center">Free No</td>
		      <td><a href="<c:url value='/recommandView.do'/>" style="text-decoration:none; color:black">Free Title</a></td>
		      <td class="text-center">Free Writer</td>
		      <td class="text-center">Free PostDate</td>
		      <td class="text-center">Free ViewCount</td>
		    </tr>
		    <tr>
		      <td class="text-center">Free No</td>
		      <td><a href="<c:url value='/recommandView.do'/>" style="text-decoration:none; color:black">Free Title</a></td>
		      <td class="text-center">Free Writer</td>
		      <td class="text-center">Free PostDate</td>
		      <td class="text-center">Free ViewCount</td>
		    </tr>
		    <tr>
		      <td class="text-center">Free No</td>
		      <td><a href="<c:url value='/recommandView.do'/>" style="text-decoration:none; color:black">Free Title</a></td>
		      <td class="text-center">Free Writer</td>
		      <td class="text-center">Free PostDate</td>
		      <td class="text-center">Free ViewCount</td>
		    </tr>
		    <tr>
		      <td class="text-center">Free No</td>
		      <td><a href="<c:url value='/recommandView.do'/>" style="text-decoration:none; color:black">Free Title</a></td>
		      <td class="text-center">Free Writer</td>
		      <td class="text-center">Free PostDate</td>
		      <td class="text-center">Free ViewCount</td>
		    </tr>
		    <tr>
		      <td class="text-center">Free No</td>
		      <td><a href="<c:url value='/recommandView.do'/>" style="text-decoration:none; color:black">Free Title</a></td>
		      <td class="text-center">Free Writer</td>
		      <td class="text-center">Free PostDate</td>
		      <td class="text-center">Free ViewCount</td>
		    </tr>
		    <tr>
		      <td class="text-center">Free No</td>
		      <td><a href="<c:url value='/recommandView.do'/>" style="text-decoration:none; color:black">Free Title</a></td>
		      <td class="text-center">Free Writer</td>
		      <td class="text-center">Free PostDate</td>
		      <td class="text-center">Free ViewCount</td>
		    </tr>
		  </tbody>
		</table>
		
		<a class="btn btn-default pull-right" href="<c:url value='/recommandWrite.do'/>">글쓰기</a>
		
		<div class="text-center">
		  <ul class="pagination">
		    <li class="page-item disabled">
		      <a class="page-link" href="#">&laquo;</a>
		    </li>
		    <li class="page-item active">
		      <a class="page-link" href="#">1</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">2</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">3</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">4</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">5</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">&raquo;</a>
		    </li>
		  </ul>
		</div>
	</div>
</div>