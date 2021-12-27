<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	table{
		color:black;
	}
</style>

<div class="container">
	<div>
		<h1 class="col-md-offset-2">제목</h1>
	</div>
	<hr class="col-md-offset-2 col-md-8" style="width:725px"/>
	<div class="row">
		<div class="col-md-offset-2 col-md-8" align="right">
			<table class="table table-bordered" style="width:300px">
				<tr>
					<th class="text-center col-md-2">작성자</th>
					<td class="text-center col-md-2">Writer</td>
				</tr>
				<tr>
					<th class="text-center">등록일</th>
					<td class="text-center">PostDate</td>
				</tr>
				<tr>
					<th class="text-center">주제</th>
					<td class="text-center">Type</td>
				</tr>
			</table>
			<table class="table table-bordered">
				<tr>
					<th class="text-center" colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2">
						This is the first item's accordion body.
						It is shown by default, until the collapse plugin adds the appropriate
						classes that we use to style each element. These classes control
						the overall appearance, as well as the showing and hiding via CSS
						transitions. You can modify any of this with custom CSS or
						overriding our default variables. It's also worth noting that just
						about any HTML can go within the .accordion-body, though the
						transition does limit overflow.
					</td>
				</tr>
			</table>
			<br/>
			<table style="width:200px; height:60px; line-height:60px; margin-left:auto; margin-right:auto;">
				<tr>
					<th class="text-center col-md-2" style="line-height:60px;">
						<button type="button" class="btm_image">
							<img src="<%=request.getContextPath()%>/resources/images/recommend/Icon_recommend.png" alt="">
						</button>
					</th>
					<td class="text-center col-md-2" style="line-height:60px; font-size: 3em;">1</td>
				</tr>
			</table>
		</div>
	</div>
	<br/>
	<br/>
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<ul id="pillMenu" class="nav nav-pills center-block" style="width: 200px; margin-bottom: 10px">
				<li><a href="#" class="btn btn-success">수정</a></li>
				<li><a href="#" class="btn btn-success">삭제</a></li>
				<li><a href="#" class="btn btn-success">목록</a></li>
			</ul>
		</div>
	</div>
</div>