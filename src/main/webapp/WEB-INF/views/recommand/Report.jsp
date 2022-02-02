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
		margin-left:100px;
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

<!-- 광고 1 -->
<div class="ad_one">
	
</div>

<div class="container">
	<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">신고</h1>
	<h4 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">불편사항을 신고해 주시면 빠르게 처리하겠습니다.</h4>
	<hr class="col-md-12" style="width:900px;margin-left:50px;"/>
	
   <div>
   <form id="myform" class="form-horizontal" method="post" action="<c:url value='/ussrReportOk.do'/>">
   		<div class="form-group">
            <label class="col-sm-2 control-label">신고글 NO</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="ussrno" value="${record.ussrno}" readonly>
            </div>
            <label class="col-sm-2 control-label">신고글 제목</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="ussrtitle" value="${record.ussrtitle}" readonly>
            </div>
            <label class="col-sm-2 control-label">신고글 날짜</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="ussrpostdate" value="${record.ussrpostdate}" readonly>
            </div>
            <label class="col-sm-2 control-label">신고글 작성자</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="emailwriter" value="${record.email}" readonly>
            </div>
            <label class="col-sm-2 control-label">신고글 내용</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="ussrcontent" value="${record.ussrcontent}" readonly>
            </div>
    	</div>
   
      	<hr class="col-md-12" style="width:900px;margin-left:50px;">
         <div class="form-group">
            <label class="col-sm-2 control-label">신고자 ID</label>
            
            <div class="col-sm-4">
               <input type="text" class="form-control" name="email" value="${sessionScope.email}" readonly>
               <input type="hidden" class="form-control" name="inqno" value="${record.ussrno}">
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">카테고리</label>
            <div class="col-sm-4">
               <select class="form-control" name="reportbbs">
               	   <option value="채팅" <c:if test="${fn:contains(reportbbs,'팅')}">selected</c:if>>채팅</option>
               	   <option value="MY구독" <c:if test="${fn:contains(reportbbs,'독')}">selected</c:if>>MY구독</option>
               	   <option value="MY파티" <c:if test="${fn:contains(reportbbs,'파')}">selected</c:if>>MY파티</option>
               	   <option value="MY스케쥴" <c:if test="${fn:contains(reportbbs,'쥴')}">selected</c:if>>MY스케쥴</option>
               	   <option value="MY리포트" <c:if test="${fn:contains(reportbbs,'포')}">selected</c:if>>MY리포트</option>
	               <option value="파티원게시판" <c:if test="${fn:contains(reportbbs,'티')}">selected</c:if>>파티원게시판</option>
                   <option value="추천게시판" <c:if test="${fn:contains(reportbbs,'천')}">selected</c:if>>추천게시판</option>
                   <option value="자유게시판" <c:if test="${fn:contains(reportbbs,'유')}">selected</c:if>>자유게시판</option>
                   <option value="문의게시판" <c:if test="${fn:contains(reportbbs,'문')}">selected</c:if>>문의게시판</option>
                   <option value="기타" <c:if test="${fn:contains(reportbbs,'기')}">selected</c:if>>기타</option>
               </select>
            </div>
          </div>
          
         <div class="form-group">
            <label class="col-sm-2" style="padding-left:108px">신고사유</label>
            <div class="col-sm-4">
               <input type="radio" class="custom-radio" name="reporttype" value="광고" <c:if test="${reporttype=='광고'}"> checked</c:if>>광고
               <input type="radio" class="custom-radio" name="reporttype" value="비방" <c:if test="${reporttype=='비방'}"> checked</c:if>>비방
               <input type="radio" class="custom-radio" name="reporttype" value="기타" <c:if test="${reporttype=='기타'}"> checked</c:if>>기타
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">내용</label>
            <div class="col-sm-10">
               <div class="row">
                  <div class="col-sm-12">
                     <textarea class="summernote" id="summernote" name="reportcontent"></textarea>  
                  </div>
               </div>
            </div>
         </div>
         
         <div class="btns1">
               <button class="btn btn-warning" id="submit" onclick="submit()">신고하기</button>
               <button class="btn btn-secondary" onclick="location.href='recommandList.do?ussrcategoryname=recommand'">취소</button>
         </div>
      </form>
   </div>
</div>

<!-- 광고 2 -->
<div class="ad_two">
	
</div>

<script>
   $('.summernote').summernote({
      
        height: 250,
        lang: "ko-KR",
        placeholder: "신고 사유를 여기에 자세히 입력해 주세요.</br></br>[예시]</br>게시글 102번에 부적절한 욕설이 들어가 있습니다.",
        toolbar: [
                // [groupName, [list of button]]
                ['fontname', ['fontname']],
                ['fontsize', ['fontsize']],
                ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                ['color', ['forecolor','color']],
                ['table', ['table']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
                ['insert',['picture','link','video']]
                //['view', ['fullscreen', 'help']]
              ],
         fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
         fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
        
        
   });
   
 //유효성 체크
   $('#submit').on('click',function(){
	   var radioCheck = $('.custom-radio');
	   if($(':radio[name="reporttype"]:checked').length < 1){
		   alert('신고사유를 체크해 주세요.');
		   radioCheck.focus();
		   event.preventDefault();
	   }
	   
	   var textCheck = $('#summernote').val();
	   if( textCheck == ""  || textCheck == null || textCheck == '&nbsp;' || textCheck == '<p>&nbsp;</p>')  {
           alert("신고 내용을 입력하세요.");
           event.preventDefault();
       }
	   
   })
</script>
