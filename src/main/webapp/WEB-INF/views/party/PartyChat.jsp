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
		<ul class="nav nav-pills nav-stacked col-sm-3"
			style="overflow: auto; height: 457px;">
			<c:if test="${not empty chatList}" var="emptyList">
				<c:forEach items="${chatList}" var="item">
					<li><a href="${item.partyno}">${nickname.get(item.chatpartnerid)}님과 채팅중입니다</a></li>
				</c:forEach>
			</c:if>
			<c:if test="${!emptyList}">
				<li><a href="#">채팅이 없습니다</a></li>
			</c:if>
		</ul>
		<div class="col-sm-9 row">
			<div class="col-md-12" style="padding-bottom: 5px">
				<div class="col-md-2" style="padding-top: 5px;">
					<h4>대화내용</h4>
				</div>
				<div class="col-md-offset-9" style="padding-left: 20px;">
					<button type="button" class="btn btn-danger">신고</button>
					<button type="button" class="btn btn-success">확정</button>
					<button type="button" class="btn btn-waring">나가기</button>
				</div>
			</div>
			<div class="col-md-12" style="padding-bottom: 5px">
				<div class="col-md-2">
					<a href="#"> <img alt="64x64"
						src="<c:url value="/resources/party/netflix.png"/>"
						style="width: 100%; height: 64px;">
					</a>
				</div>
				<div class="col-md-9">
					<h4>1. Middle aligned media</h4>					
					<h4>Middle aligned mediaa</h4>
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
