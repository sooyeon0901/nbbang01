<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</div>
</header>

<style>
	.row{
		margin-top: 80px;
		font-size: 15px;
		color: black;
	}
	
	th, td{
		height:40px;
	}
	.btns1{
		width:755px;
		display:inline-block;
		text-align:right;
		margin:auto;
	}
	
	th{
		background-color:#95e1d3;
		color:#FFF;
	}
	td{
		background-color:#fff;
	}
	.showComments{
		margin-left:200px;
		margin-bottom:200px;
		width:100%;
	}
	.textarea{
		width: 60%;
	    height: 6.25em;
	    resize: none;
	    border:1px solid #ddd;
	    margin-left:240px;
	    margin-bottom:100px;
	}
	.resultComment{
		margin-bottom:20px;
	}
	#pillMenu{
		width: 200px;
		margin-bottom: 10px;
		text-align: right;
	}
	
	/* 스크롤바 영역 : 스크롤바가 사용되는 영역의 클래스지정 */
	.scollDesign::-webkit-scrollbar {
	    width: 15px;
	}
	.scollDesign::-webkit-scrollbar-thumb {
	    background-color: #fff;
	    border-radius: 10px;
	    background-clip: padding-box;
	    border: 2px solid transparent;
	  }
	.scollDesign::-webkit-scrollbar-track {
	    background-color: #f38181;
	    border-radius: 10px;
	    box-shadow: inset 0px 0px 5px white;
	  }
	
	.update{
		cursor: pointer;
		margin-left:685px;
		font-size:12px;
	}
	.delete{
		cursor: pointer;
		font-size:12px;
	}	

	/* 광고 영역 */
	.ad_one, .ad_two{
		background-color:red;
		width: 188.5px;
		height:377px;
		display: inline-block;
		position: fixed;
		top:150px;
		background-size: cover;
		background-position: center;
		background-image: url("<%=request.getContextPath()%>/resources/account/ad_1.PNG");
		animation: ad_one_ani 16s infinite;
	}
	
	.ad_one{
		left:30px;
	}
	
	.ad_two{
		right:30px;
	}
	
	@keyframes ad_one_ani {
		33%{background-image: url("<%=request.getContextPath()%>/resources/account/ad_2.PNG")}
		66%{background-image: url("<%=request.getContextPath()%>/resources/account/ad_3.PNG")}
		100%{background-image: url("<%=request.getContextPath()%>/resources/account/ad_1.PNG")}
	}
</style>

<%String referer = request.getHeader("referer");%>

<!-- 광고 1 -->
<div class="ad_one">
	
</div>

<div class="container">
	<br/>
	<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;"><%if(referer.contains("recommand")){%> 추천게시판 <%} else{%> 자유게시판 <%}%></h1>
	<hr class="col-md-12" style="width:900px;margin-left:50px;"/>
	<div class="row">
		<!-- 버튼과 거리두기 스타일 -->
		<div class="col-md-offset-2 col-md-8" style="margin-bottom: 50px;">
			<!-- 제목 -->
			<div style="font-size: 30px; font-weight: bold;">${record.ussrtitle}</div>
			<!-- 작성자 및 게시일 -->
			<div  style="text-align: right">${record.nickname}</div>
			<div style="float: right">${record.ussrpostdate}</div>
			<!-- 버튼 위치 스타일 -->
			<div class="btns1">
				<a href="<%if(referer.contains("recommand")){%>
						<c:url value='/recommandList.do?nowPage=${param.nowPage}'/>
					<%} else{%>
						<c:url value='/freeList.do?nowPage=${param.nowPage}'/>
					<%}%>">목록  |  </a>
				<a href="javascript:isReport();">신고</a>
			
				<c:if test="${sessionScope.email == record.email or sessionScope.email=='nbbang@nbbang.com'}">
					<a href="<c:url value='/ussrEdit.do?ussrno=${record.ussrno}'/>">  |  수정</a>
					<a href="javascript:isDelete();">  |  삭제</a>
				</c:if>
				<c:if test="${sessionScope.email=='nbbang@nbbang.com'}">
					<a href="javascript:setBlackMember();">  |  회원정지</a>
				</c:if>
			</div>
			<!-- 구분선  -->
			<hr class="col-md-offset-2 col-md-8" style="width: 725px; margin-left: 0px;" />
			<br/>
			<!-- 내용 -->
			<div class="scollDesign" style="font-size: 20px; height: 290px; overflow: auto; width: 770px;">${record.ussrcontent}</div>
		</div>

		<div class="form-group" style="height: 50px; line-height: 50px;">
			<div class="col-sm-offset-2 col-sm-4" style="text-align: right">
				<button type="button" class="btm_image" id="likeInsert">
					<img src="<%=request.getContextPath()%>/resources/images/recommend/Icon_recommend.png" alt="추천" style="height: 50px; width: 50px;">
				</button>
			</div>
			<div class="col-sm-4" style="color: black; text-align: left; line-height: 57px; font-size: 2em;" id="lcount">${record.likeCount}</div>
		</div>
		
		<br/>
		
		
	</div>
	
	<hr class="col-md-offset-2 col-md-8" style="width:725px"/>
		
	<!-- 코멘트 출력 폼-->
	<div class="row showComments">
		<c:if test="${not empty record.comments }">
			<c:forEach var="comment" items="${record.comments}">
				<div class="card mb-3 resultComment${comment.comno }">
					<h5 class="card-header">${record.nickname}</h5>
					<div class="card-body">
						<div>
							<span id="comcontentInput" title="${comment.comno}">${comment.comcontent}</span>
							<div style="margin-left:668px;">${comment.compostDate}</div>
						</div>
						<div>
							<c:if test="${sessionScope.email==comment.email}" var="isOwn">
								<span class='update' title='${comment.comno }'>수정</span> | 
								<span class='delete' title='${comment.comno }'>삭제</span>
							</c:if>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:if>
		<div class="card mb-3">
			<h5 class="card-header">Leave a Comment:</h5>
			<div class="card-body">
				<form name="comment-form" id="frm" action="<c:url value='/ussrView.do?ussrno=${record.ussrno}'/>" method="post" autocomplete="off">
					<input type="hidden" name="ussrno" value="${record.ussrno}" />
					<input type="hidden" name="comno"/>
					<textarea name="comcontent" id="comcontent" cols="97" rows="3"></textarea>
					</div>
					<input class="btn btn-primary" id="submit" type="button" value="등록" onclick="submit"/>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- 광고 2 -->
<div class="ad_two">
	
</div>

<script>
	//코멘트 등록/수정처리
	var action;
	$("#submit").click(function(){
		console.log("클릭 이벤트 발생:",$(this).val());
		console.log("파라미터값들:",$("#frm").serialize());
		if($(this).val()==='등록'){
			action="<c:url value="/commentWrite.do"/>";
		}
		else{
			action="<c:url value="/commentEdit.do"/>";
		}
		console.log("댓글 키값(comno):",$('input[name=comno]').val());
		$.ajax({
			url:action,
			data:$("#frm").serialize(),
			dataType:"text",
			type:"post",
			success:function(data){
				console.log("서버로부터 받은 데이타:",data);	
				if($('#submit').val()=='등록'){
					var comno = data.split(":")[0];
					var nickname = data.split(":")[1];
					var date = new Date();
					var compostdate = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDate();
					console.log(comno,name)
					var newComment ="<h5 class='card-header'>"+nickname+"</h5><div class='card-body'><div><span id='comcontentInput' title='"+comno+"'>"+$('#comcontent').val()+"</span><div style='margin-left:600px;'>"+compostdate+"</div></div><div><span class='update' title='"+comno+"'>수정</span> | <span class='delete' title='"+comno+"'>삭제</span></div></div>";
					$(".showComments").prepend(newComment);
				}
				else{
					$('#comcontentInput[title='+data+']').html($('#comcontent').val());
					$('#submit').val("등록");
				}
				$('#comcontent').val("");
			}
		});
	});
	
	//수정 클릭시 수정처리하기(UI변경)
	$(document).on('click','.update',function(){
		console.log('수정스크립트 진입');
		var comno = $(this).attr('title');
		$('#comcontent').focus();
		$('#comcontent').val($("#comcontentInput[title='"+comno+"']").html());
		$('#submit').val("수정");
		$('input[name=comno]').val(comno);
	});
	
	//삭제 클릭시 삭제처리하기	
	$(document).on('click','.delete',function(){
		var comno = $(this).attr('title').split(":")[0];
		if(confirm("정말로 삭제 하시겠습니까?")){
			$.ajax({
				url:"<c:url value="/commentDelete.do"/>",
				type:"post",
				data:"comno="+comno,
				dataType:"text"
			}).done(function(data){
				$('.resultComment'+comno).remove();
				location.replace("<c:url value='/ussrView.do?ussrno=${record.ussrno}'/>");
			}).fail(function(e){
				console.log(e)
			});
		}
	});
	
	function isReport(){
		if(confirm("정말로 신고하시겠습니까?")){
			location.replace("<c:url value='/ussrReport.do?ussrno=${record.ussrno}&ussrtitle=${record.ussrtitle}&email=${record.email}&ussrpostdate=${record.ussrpostdate}&ussrcontent=${record.ussrcontent}'/>");
		}
	}
	
	function setBlackMember(){
		if(confirm("정말로 회원 정지를 하시겠습니까?")){
			location.replace("<c:url value='/partyBlackMember.do?email=${record.email}'/>");
		}
	}
	
	function isDelete(){
		if(confirm("정말로 삭제 하시겠습니까?")){
			location.replace("<c:url value="/recommandDelete.do?ussrno=${record.ussrno}"/>");
		}
	}
	
	$("#likeInsert").on('click',function(){
		console.log("클릭 이벤트 발생:",$(this).val());
		$.ajax({
			url:'<c:url value="/likeInsert.do"/>',
			data:{"email":"${sessionScope.email}", 'ussrno':'${record.ussrno}'},
			dataType:"text",
			type:"post",
			success:function(data){
				if(data == "추천하셨습니다"){
					alert(data);
					location.replace("<c:url value='/ussrView.do?ussrno=${record.ussrno}'/>");
				}else{
					alert(data);					
				}
			}
		});
	});
</script>
