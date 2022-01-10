<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</div>
</header>
<div class="container" style="width: 750px; color: black">

	<form method="post" action='<c:url value='/partyBbsWrite.do'/>'>

	<input type="hidden" name="partyCategoryName" value="넷플릭스" />
	<input type="hidden" name="partyActivation" value="true" />
			<div style="width: 100%; text-decoration: none; padding-bottom: 23px; position: relative; float: left;">
		   		<div>
		   			<div style="display: inline-block; float: left; padding-left:10px;">
		   				<img src="<%=request.getContextPath()%>/resources/party/001_icon_netflix.png" alt="" style="width: 70px; height: 70px;">
		   			</div>
		   			<div style="margin-top:10px; font-weight: bold; float: left;">
   						<label style="color: gray;">서비스</label><br>
   						넷플릭스
   					</div>		
		   		</div>
			</div>
         	
			<div>
            	<label>파티 제목</label>
            	<div>
               		<input style="width: 100%;" type="text" name="partyTitle" placeholder=" 제목을 입력하세요">
            	</div>
         	</div>
         	
         	<div>
            	<label>파티 인원</label>
            	<div>
               		<select name="partyMaxCapacity" style="width: 100%">
	         			<option value="" disabled selected hidden> * 자신을 포함한 파티 인원을 선택하세요</option>
		                <option value="2">2</option>
	    	            <option value="3">3</option>
	       	        	<option value="4">4</option>
	       	  		    <option value="5">5</option>
	       		        <option value="6">6</option>
					</select>
            	</div>
         	</div>
         	
         	<div>
            	<label>결제 금액</label>
            	<div>
               		<input style="width: 100%;" type="text" name="partyAllotmentPrice" placeholder=" 결제 금액을 입력하세요">
            	</div>
         	</div>
         	
         	<div>
            	<label>멤버십 종류</label>
            	<div>
               		<input style="width: 100%;" type="text" name="partyMembership" placeholder=" 멤버십 종류를 입력하세요">
            	</div>
         	</div>
         	
         	<div>
            	<label>내용</label>
            	<div>
               		<textarea cols="50" rows="20" style="width: 100%; resize:none;" name="partyContent" placeholder=" 내용을 입력하세요"></textarea>
            	</div>
         	</div>
         	
         	<div class="button" style="text-align: right; padding-right: 15px;">
        		<button type="submit">완료</button>
   			</div>
	</form>
</div>