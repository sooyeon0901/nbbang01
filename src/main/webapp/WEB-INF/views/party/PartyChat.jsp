<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</div>
</header>
<script>
	$(function() {
		$('body').css('backgroundColor', '#F69E8F');
		$('footer').css('backgroundColor', '#F69E8F');
	});
</script>
<div class="container" style="height: 730px; padding-top: 25px;">

	<div class="page-header">
		<h1>
			스프링 <small>PartyMain.jsp</small>
		</h1>
	</div>
	<div class="row">
		<ul class="nav nav-pills nav-stacked col-sm-3" style="overflow: auto; height: 385px;">
			<li><a href="#">Home</a></li>
			<li><a href="#">Profile</a></li>
			<li><a href="#">Messages</a></li>
			<li><a href="#">Messages</a></li>
			<li><a href="#">Messages</a></li>
			<li><a href="#">Messages</a></li>
			<li><a href="#">Messages</a></li>
			<li><a href="#">Messages</a></li>
			<li><a href="#">Messages</a></li>
			<li><a href="#">Messages</a></li>
			<li><a href="#">Messages</a></li>
			<li><a href="#">Messages</a></li>
			<li><a href="#">Messages</a></li>
		</ul>
		<div class="col-sm-9 row">
			<div class="col-md-12" style="padding-bottom: 5px">
				<div class="col-md-2" style="padding-top: 5px;">
					<h4>대화내용</h4>
				</div>
				<div class="col-md-offset-10" style="padding-left: 10px;">
					<button type="button" class="btn btn-success">확정</button>
					<button type="button" class="btn btn-danger">나가기</button>
				</div>
			</div>
			<div class="col-md-12">
				<div id="chatArea">
					<div id="chatMessage"
						style="height: 300px; border: 1px gray solid; overflow: auto"></div>
				</div>
			</div>
			<div class="col-md-12" style="padding-top: 5px; padding-bottom: 5px;">
				<form class="form-inline">
					<div class="form-group">
						<input class="btn btn-info" type="button" id="sendImgBtn"
							value="이미지전송">
					</div>
					<div class="form-group"
						style="width: 80%; margin-left: 3px; margin-right: 3px;">
						<label class="sr-only" for="message">메시지</label> <input
							style="width: 100%;" class="form-control" type="text"
							id="message" placeholder="메시지를 입력해주세요" />
					</div>
					<div class="form-group">
						<input class="btn btn-success" type="button" id="sendBtn"
							value="전송">
					</div>
				</form>
			</div>
		</div>
	</div>

</div>
