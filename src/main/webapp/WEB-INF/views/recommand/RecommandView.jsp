<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	table{
		color:black;
	}
</style>

<div class="container">
	<div>
		<h1 class="col-md-offset-2">${record.ussrtitle}</h1>
	</div>
	<hr class="col-md-offset-2 col-md-8" style="width:725px"/>
	<div class="row">
		<div class="col-md-offset-2 col-md-8" align="right">
			<table class="table table-bordered" style="width:300px">
				<tr>
					<th class="text-center col-md-2">작성자</th>
					<td class="text-center col-md-2">${record.nickname}</td>
				</tr>
				<tr>
					<th class="text-center">등록일</th>
					<td class="text-center">${record.ussrpostate}</td>
				</tr>
				<tr>
					<th class="text-center">주제</th>
					<td class="text-center">${record.ussrcategoryname}</td>
				</tr>
			</table>
			<table class="table table-bordered">
				<tr>
					<th class="text-center" colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2">
						${record.ussrcontent}
					</td>
				</tr>
			</table>
			<br/>
			<table style="width:200px; height:60px; line-height:60px; margin-left:auto; margin-right:auto;">
				<tr>
					<th class="text-center col-md-2" style="line-height:60px;">
						<button type="button" class="btm_image">
							<img src="<%=request.getContextPath()%>/resources/images/recommend/Icon_recommend.png" alt="추천">
						</button>
					</th>
					<td class="text-center col-md-2" style="line-height:60px; font-size: 3em;">${record.likeno}</td>
				</tr>
			</table>
		</div>
	</div>
	<br/>
	<br/>
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<ul id="pillMenu" class="nav nav-pills center-block" style="width: 200px; margin-bottom: 10px">
				<c:if test="${sessionScope.email ==record.email}">
					<li><a href="<c:url value='/recommand/recommandEdit.do?no=${record.ussrno}'/>"
						class="btn btn-success">수정</a></li>
					<li><a href="javascript:isDelete();" class="btn btn-success">삭제</a></li>
				</c:if>
				<li><a href="<c:url value='/recommand/recommandList.do?nowPage=${param.nowPage}'/>" class="btn btn-success">목록</a></li>
			</ul>
		</div>
	</div>
	
	<!-- 한줄 코멘트 입력 폼-->
	<div class="row">
		<div class="col-md-12">
			<div class="text-center">
				<h2>댓글</h2>
				<form class="form-inline" id="frm">
					<!-- 씨큐리티 적용:csrf취약점 방어용 -->
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
					<input type="hidden" name="ussrno"	value="${record.ussrno}" />
					<input type="hidden" name="comno" /> 
					<input placeholder="댓글을 입력하세요" id="title" class="form-control" type="text" size="50" name="comcontent" /> 
					<input class="btn btn-success" id="submit" type="button" value="등록" />
				</form>
				<div class="row">
					<div id="comments" class="col-md-offset-3 col-md-6">
						<!-- 댓글 목록(ajax) -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	//ajax를 이용해서 페이지 로딩후 다시 서버에 현재 글번호에 대한 한줄 댓글 목록 요청
	showComments();
	
	function showComments(){
		$.ajax({
			url:'<c:url value="/recommand/commentList.do"/>',
			data:{"ussrno":"${record.ussrno}","${_csrf.parameterName}":"${_csrf.token}"},
			dataType:"json",
			type:"post",
			success:showComments_,
			error:function(e){console.log(e);}
		});
	}
	//실제 댓글 목록을 뿌려주는 함수]
	function showComments_(data){
		console.log("서버에서 전송받은 데이타(댓글 목록):",data);
		var comments ="<h2>한줄 댓글 목록</h2>";
		comments+="<table class='table table-bordered'>";
		comments+="<tr><th class='text-center col-md-2'>작성자</th><th class='text-center'>코멘트</th><th class='text-center col-md-2'>작성일</th><th class='text-center col-md-2'>삭제</th></tr>";
		comments+="<tbody class=\"comment-title\">";
		
		if(data.length ==0){
			comments+="<tr><td colspan='4'>등록한 한줄 댓글이 없어요</td></tr>"
		}
		
		$.each(data,function(index,element){
			comments+="<tr class='comment"+element["COMNO"]+"'><td>"+element["NAME"]+"</td>";
			comments+="<td style='cursor:pointer' class='title' title='"+element["COMNO"]+"'>"+element["COMCONTENT"]+"</td>";
			comments+="<td>"+element["COMPOSTDATE"]+"</td>";
			
			//씨큐리티 미 사용시
			if("${sessionScope.email}"==element['EMAIL'])
				comments+="<td><span href=\"#\" style='cursor:pointer' class='delete' title='"+element["COMNO"]+"'>삭제</span></td></tr>";
			else
				comments+="<td>삭제불가</td></tr>";
		});
		comments+="</tbody></table>";
		$('#comments').html(comments);
		
	}//////////

	//코멘트 입력 및 수정처리]
	var action;
	$("#submit").click(function(){
		console.log("클릭 이벤트 발생:",$(this).val());
		console.log("파라미터값들:",$("#frm").serialize());
		if($(this).val()==='등록'){
			action="<c:url value="/recommand/commentWrite.do"/>";
			
		}
		else{
			action="<c:url value="/recommand/commentEdit.do"/>";
			
		}
		//ajax로 요청]
		$.ajax({
			url:action,
			data:$("#frm").serialize(),
			dataType:"text",
			type:"post",
			success:function(data){
				console.log("서버로부터 받은 데이타:",data);				
				//showComments();이래도 된다. 하지만 서버에 또 현재글에 대한 댓글 전체목록 요청하게 된다
				
				if($('#submit').val()=='등록'){
					var comno = data.split(":")[0];
					var name = data.split(":")[1];
					var date = new Date();
					var compostdate = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDate();
					var newComment ="<tr class='comment"+comno+"'><td>"+name+"</td><td style='cursor:pointer' class='title' title='"+comno+"'>"+$("#title").val()+"</td><td>"+compostdate+"</td><td style='cursor:pointer' class='delete' title='"+data+"'>삭제</td></tr>";
					$(".comment-title").prepend(newComment);
				}
				else{
					//코멘트 제목 클릭시 설정한 lno값
					//$('.title[title='+$('input[name=lno]').val()+']').html($("#title").val());
					$('.title[title='+data+']').html($("#title").val());
					$('#submit').val("등록");
				}
				$('#title').val("");
				$('#title').focus();
			}
		});
	
	});//click
	
	//코멘트 제목 클릭시 수정처리하기(UI변경)
	$(document).on('click','.title',function(){
		console.log('클릭:',$(this).html());
		$('#title').val($(this).html());
		$('#submit').val("수정");
		$('input[name=comno]').val($(this).attr('title'));
	});
	//삭제 클릭시 삭제처리하기
	$(document).on('click','.delete',function(){
		var lno = $(this).attr('title').split(":")[0];
		if(confirm("정말로 삭제 하시겠습니까?")){
			//삭제 처리]
			$.ajax({
				url:"<c:url value="/recommand/commentDelete.do"/>",
				type:"post",
				data:"comno="+comno,
				dataType:"text"				
			}).done(function(data){
				$('.comment'+comno).remove();
			}).fail(function(e){
				console.log(e)
			});
		}		
	});
	
	function isDelete(){
		if(confirm("정말로 삭제 하시겠습니까?")){
			location.replace("<c:url value="/recommand/commentDelete.do?ussrno=${record.ussrno}"/>");
		}
	}
	
</script>
