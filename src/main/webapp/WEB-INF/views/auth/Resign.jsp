<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	</div>
</header>

<!-- 신고 페이지 -->

<!-- 서머노트를 위해 추가해야할 부분 -->
<script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>

<style>
	.reportTitle{
		font-size:50px;
		font-family:'Nanum Gothic', sans-serif;
		padding-bottom:30px;
	}
	#myform{
		width:90%;
		padding-bottom:30px;
	}
	.btns1{
		width:100%;
		display:inline-block;
		text-align:center;
		margin-left:-280px;
	}
</style>

<div class="container">
	<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">회원탈퇴</h1>
	<h4 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">엔빵의 발전을 위해 탈퇴 사유를 체크해 주시면 감사드리겠습니다.</h4>
	<h4 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">제출하기를 누르면 자동으로 탈퇴처리가 진행됩니다.</h4>
	<hr class="col-md-12" style="width:900px;margin-left:50px;"/>
	
   <div>
   <form id="myform" class="form-horizontal" method="post" action="<c:url value='/resign.do'/>">
   		
   
         <div class="form-group" style="margin-top:100px;">
         <span>${errorMessage}</span>
            <label class="col-sm-2 control-label">회원 e-mail</label>
               <input type="text" class="form-control" name="email" style="width:400px;margin-bottom:20px;" value="${sessionScope.email}" readonly>
            <label class="col-sm-2 control-label">회원 password</label>
               <input type="password" class="form-control" name="password" style="width:400px">
         </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">카테고리</label>
            <div class="col-sm-4">
               <select class="form-control" name="resignreason">
               	   <option value="구독서비스가 다양하지 않아서" <c:if test="${fn:contains(resignreason,'양')}">selected</c:if>>구독서비스가 다양하지 않아서</option>
               	   <option value="더이상 구독서비스를 이용하지 않아서" <c:if test="${fn:contains(resignreason,'용')}">selected</c:if>>더이상 구독서비스를 이용하지 않아서</option>
               	   <option value="금전적인 손해를 당해서" <c:if test="${fn:contains(resignreason,'손')}">selected</c:if>>금전적인 손해를 당해서</option>
               	   <option value="게시판이 활발하지 않아서" <c:if test="${fn:contains(resignreason,'발')}">selected</c:if>>게시판이 활발하지 않아서</option>
               	   <option value="엔빵이 도움이 안돼서" <c:if test="${fn:contains(resignreason,'도')}">selected</c:if>>엔빵이 도움이 안돼서</option>
               </select>
            </div>
          </div>
         <div class="btns1" style="margin-top:20px;margin-bottom:100px;">
               <button class="btn btn-warning" id="submit" onclick="submit()">제출하기</button>
               <button class="btn btn-secondary" onclick="location.href='index.do'">취소</button>
         </div>
      </form>
   </div>
</div>

<script>
	$('#submit').on('click',function(){
		if(confirm('정말 회원탈퇴를 하시겠어요?') == true){
			alert('회원탈퇴 처리가 완료되었습니다. 다음에 다시 만나요.');	
		} else{
			return;
		}
		 
	})
</script>
