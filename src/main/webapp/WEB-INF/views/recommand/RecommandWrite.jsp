<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- RecommandWrite.jsp -->
   </div>
</header>

  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
  
<style>
   div{
      color:black;
   }
</style>

<div class="container">
   <div>
      <form id="myform" class="form-horizontal" method="post"   enctype="multipart/form-data" action="#">
         <div class="form-group">
            <label class="col-sm-2 control-label">작성자</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="name" placeholder="이름을 입력하세요">
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">게시판</label>
            <div class="col-sm-4">
               <select class="form-control">
                 <option>추천게시판</option>
                 <option>자유게시판</option>
               </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">주제</label>
            <div class="col-sm-4">
               <select class="form-control">
                 <option>구독서비스 추천</option>
                 <option>컨텐츠 추천</option>
                 <option>꿀팁 추천</option>
                 <option>일반</option>
                 <option>리뷰</option>
                 <option>정보</option>
               </select>
            </div>
          </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">제목</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="title" placeholder="제목을 입력하세요">
            </div>
         </div>
         
         <div class="form-group">
            <label class="col-sm-2 control-label">내용</label>
            <div class="col-sm-10">
               <div class="row">
                  <div class="col-sm-12">
                     <textarea class="summernote" name="editordata"></textarea>  
                  </div>
               </div>
            </div>
         </div>
         
         <div class="form-group">
            <div class="col-sm-offset-2 col-sm-4">
               <button class="btn btn-info">등록</button>
            </div>
         </div>
      </form>
   </div>
</div>

<script>
   $('.summernote').summernote({
      
        height: 250,
        lang: "ko-KR",
        placeholder: "여기에 입력하세요.",
        toolbar: [
                // [groupName, [list of button]]
                ['fontname', ['fontname']],
                ['fontsize', ['fontsize']],
                ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                ['color', ['forecolor','color']],
                ['table', ['table']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
                ['insert',['picture','link','video']],
                ['view', ['fullscreen', 'help']]
              ],
         fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
         fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
        
        
   });
</script>