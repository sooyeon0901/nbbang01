<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</div>
</header>

<style>
   div {
      color:black;
   }
   
   .container {
   	  width: 750px;
   }
   #btns {
	  text-align: right;
	  padding-right: 15px;
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
<script>
function categoryChange(e) {
  var partyAllotmentPrice_2 = ["12000"];
  var partyAllotmentPrice_3 = ["16000"];
  var partyAllotmentPrice_4 = ["16000"];
  var target = document.getElementById("partyAllotmentPrice");

  if(e.value == "2") var d = partyAllotmentPrice_2;
  else if(e.value == "3") var d = partyAllotmentPrice_3;
  else if(e.value == "4") var d = partyAllotmentPrice_4;

  target.options.length = 0;

  for (x in d) {
    var opt = document.createElement("option");
    opt.value = d[x];
    opt.innerHTML = d[x];
    target.appendChild(opt);
  } 
}
</script>

<div class="container">
   <h1 style="text-align:left; margin:10px;font-family: 'Jua', sans-serif;color:#BEBEBE;">파티 모집 게시판</h1>
   <h4 style="text-align:left; margin:10px;font-family: 'Jua', sans-serif;color:#BEBEBE;">파티 모집하여 구독료를 아껴보세요!</h4>
	
   <hr/>
   <div>
      <form id="myform" class="form-horizontal" method="post" action="<c:url value='/partyBbsWrite.do'/>">
      	 <input type="hidden" name="partyLeader" value="y" />
      	 <input type="hidden" name="partyMembership" value="normal" />
      	 <input type="hidden" name="pMMember" value="${email }" />
		 <input type="hidden" name="partyActivation" value="true" /> <!-- 파티활성화값 불러오기 -->
		 
         <div class="form-group">
            <label class="col-sm-2 control-label">서비스</label>
            <div class="col-sm-4">
				<select style="width: 595px;" class="form-control" required id="partyCategoryName" name="partyCategoryName">
	         		<option value="" disabled selected hidden>* 파티 모집할 서비스를 선택하세요</option>
		            <option value="netflix">넷플릭스</option>
	    	        <option value="watcha">왓챠</option>
	       	        <option value="disney">디즈니</option>
	       	  		<option value="laftel">라프텔</option>
	       		    <option value="tving">티빙</option>
	       		    <option value="wavve">웨이브</option>
				</select>
            </div>
          </div>
		 
         <div class="form-group">
            <label class="col-sm-2 control-label">파티 제목</label>
            <div class="col-sm-4">
               <input style="width: 595px;" type="text" class="form-control" required name="partyTitle" placeholder="제목을 입력하세요">
            </div>
         </div>

         <div class="form-group">
            <label class="col-sm-2 control-label">파티 인원</label>
            <div class="col-sm-4">
				<select style="width: 595px;" class="form-control" required name="partyMaxCapacity" onchange="categoryChange(this)">
	         		<option value="" disabled selected hidden>* 자신을 포함한 파티 인원을 선택하세요</option>
		            <option value="2">2</option>
		            <option value="3">3</option>
	       	        <option value="4">4</option>
				</select>
            </div>
          </div>
          
		  <div class="form-group">
			<label class="col-sm-2 control-label">결제 금액</label>
            <div class="col-sm-4">
            	<select style="width: 595px;" class="form-control" required id="partyAllotmentPrice" name="partyAllotmentPrice" onchange="categoryChange(this)">
	         		<option value="" disabled selected hidden>* 파티 인원을 먼저 선택하세요</option>
				</select>
            </div>
          </div>
         
         <div class="form-group">
            <label class="col-sm-2 control-label">내용</label>
            <div class="col-sm-10">
               <div class="row">
                  <div class="col-sm-12">
                      <textarea cols="50" rows="10" style="width: 100%; resize:none;" class="form-control" name="partyContent" required placeholder="내용을 입력하세요"></textarea>  
				  </div>
               </div>
            </div>
         </div>
         
         <div class="form-group">
            <div id="btns">
               <button id="cancel" class="btn btn-secondary">취소</button>
               <button id="register" class="btn btn-primary">등록</button>
            </div>
         </div>
      </form>
   </div>
</div>
<!-- 광고 2 -->
<div class="ad_two">
	
</div>
<script>
	$(document).ready(function() {
		// 취소
		$("#cancel").on("click", function() {
			location.href = "/nbbang/partyBbs.do";
		})
	})
</script>