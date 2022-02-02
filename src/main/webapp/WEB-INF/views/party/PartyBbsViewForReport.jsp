<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	</div>
</header>

<style>
	div{
		color: black;
	}
	#bbs{
		width: 750px;
	}
	.selectOTT{
		padding: 20px 16px;
		text-align: center;
		box-shadow: 3px 3px 3px white;
		border: solid 1px white;
		border-radius: 8px;
	}
	.ottText{
		text-align: left;
		font-weight: bold;
	}
	.blankSpace{
		height: 26px;
	}
	.ottBox{
		display: flex;
		flex-wrap: wrap;
		gap: 9px;
		width: 100%;
		-webkit-box-pack: justify;
		justify-content: space-between;
	}
	.ottIcon{
		display: flex;
		flex-direction: column;
		flex: 1 0 28%;
		height: 120px;
		-webkit-box-align: center;
		align-items: center;
		padding-top: 5px;
		border-radius: 8px;
		cursor: pointer;
		border: none;
	}
	.ottImage{
		width: 75px;
		height: 75px;
	}
	.ottName{
		color: black;
		font-weight: bold;
	}
	.listCheck{
		display: flex;
		flex-direction: row;
		width: 100%;
		padding: 20px;
		animation: 0.3s ease-out 0s 1 normal none running jLXWcT;
		-webkit-box-align: center;
		align-items: center;
		cursor: pointer;
		position: relative;
	}
	.twoImage{
		display: inline-block;
		float: left;
		padding: 20px 5px 20px 25px;
	}
	.listCheckText{
		color: gray;
		font-weight: bold;
		padding-top: 10px;
	}
	.watchingCategory{
		display: flex;
		flex-direction: row;
		padding: 19px 20px 19px 14px;
		animation: 0.3s ease-out 0s 1 normal none running jLXWcT;
		-webkit-box-align: center;
		align-items: center;
	}
	.miniIcon{
		display: flex;
		width: 24px;
		height: 24px;
		margin-right: 6px;
		background-color: var(--gray-050);
		border-radius: 50%;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: center;
		justify-content: center;
	}
	.miniIconImage{
		width: 16px;
		height: 16px;
	}
	.watchingText{
		display: block;
		font-size: 16px;
		line-height: 22px;
		margin: 0px;
		font-weight: bold;
		color: var(--gray-600);
	}
	.watchingChange{
		font-weight: bold;
		color: var(--gray-600);
		cursor: pointer;
		position: absolute;
		right: 20px;
	}
	.partyEnd{
		position: absolute;
		padding-top: 60px;
		padding-left: 30px;
	}
	#bbsList{
		width: 600px;
		color: black
	}
	#addBt{
		position:fixed;
		right:400px;
		top:600px;
		z-index:10000;
	}
	.listBox{
		border: 1px solid gray;
		border-radius: 3px;
		padding-left: 20px;
		padding-right: 20px;
	}
	.profileBox{
		width: 100%;
		text-decoration: none;
		padding-bottom: 23px;
		position: relative;
		float: left;
	}
	.userProfile{
		display: inline-block;
		float: left;
		padding-left:10px;
		margin-right:10px;
	}
	.userProfileImg{
		width: 40px;
		height: 40px;
		border-radius: 50%;
	}
	.nickname{
		margin-top:10px;
		font-weight: bold;
		float: left;
	}
	.partyTitleNCapa{
		width: 100%;
		float: left;
	}
	.partyTitleText{
		padding-left:10px;
		float: left;
		font-weight: bold;
	}
	.partyMaxCapacity{
		float: right;
		color: orange;
		margin-right: 10px;
	}
	.partyCategoryNameNMem{
		padding-left:10px;
		width: 100%;
		float: left;
		font-weight: bold;
	}
	.partyPostdate{
		padding-left:10px;
		width: 100%;
		float: left;
		color: #868e96;
	}
	.price{
		padding-left:10px;
		width: 100%;
		float: left;
		font-weight: bold;
		font-size: 18px;
	}
	.detailBlank{
		width: 100%;
		float: left;
		height: 20px;
	}
	.partyContent{
		overflow: auto;
		padding-left:10px;
		width: 100%;
		height: 200px;
		float: left;
		font-size: 17px;
		line-height: 1.6;
		letter-spacing: -0.6px;
	}
	#buttonArea{
		padding-left: 10px;
		width: 100%;
		text-align: right;
	}
	.content_none{
		width: 308px;
		height: 156px;
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
<body>
	<!-- 광고 1 -->
	<div class="ad_one">
		
	</div>
		<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:300px;color:#BEBEBE;">파티원게시판 신고처리 페이지</h1>
		<hr class="col-md-12" style="width:900px;margin-left:300px;"/>
	
		<div id="bbs" class="container">
			
			<div id="bbsList" class="container">
				
				<div class="blankSpace"></div>
					<div class="listBox">
						<div class="blankSpace"></div>
						<div class="profileBox">
						<c:if test="${record.partyActivation eq 'false'}">
							<img class="partyEnd" alt="" src="<%=request.getContextPath()%>/resources/party/party_end.png">
						</c:if>
					   		<div>
					   			<div class="userProfile">
					   				<img class="userProfileImg" src="<%=request.getContextPath()%>/resources/images/profile/<c:choose><c:when test="${not empty record.profile }">${record.profile }</c:when><c:otherwise>${record.oringinProfile }</c:otherwise> </c:choose>" alt="">
					   			</div>
					   			<div class="nickname">
					   				${record.nickname }
					   			</div>
					   			<input type="hidden" name="email" value="${record.email}">
					   		</div>
						</div>
						
						<div class="partyTitleNCapa">
							<h1 class="partyTitleText">${record.partyTitle }</h1>
							<h2 class="partyMaxCapacity">(${nowPartyMemberReport }/${record.partyMaxCapacity })</h2>
						</div>
						<div class="partyCategoryNameNMem">
							<c:choose>
								<c:when test="${record.partyCategoryName eq 'netflix'}">
													넷플릭스
												</c:when>
								<c:when test="${record.partyCategoryName eq 'watcha'}">
													왓챠
												</c:when>
								<c:when test="${record.partyCategoryName eq 'disney'}">
													디즈니
												</c:when>
								<c:when test="${record.partyCategoryName eq 'laftel'}">
													라프텔
												</c:when>
								<c:when test="${record.partyCategoryName eq 'tving'}">
													티빙
												</c:when>
								<c:when test="${record.partyCategoryName eq 'wavve'}">
													웨이브
												</c:when>
							</c:choose>
						</div>
						<div class="partyPostdate">${record.partyPostdate }</div>
						<div class="price"><fmt:formatNumber value="${record.partyAllotmentPrice }" pattern="#,###" />원 / 1인당 <fmt:parseNumber var="price" integerOnly="true" value="${record.partyAllotmentPrice / record.partyMaxCapacity }" /><fmt:formatNumber value="${price }" pattern="#,###" />원</div>
						<div class="detailBlank"></div>
						<div class="partyContent">${record.partyContent }</div>
						<div class="blankSpace"></div>
						<div id="buttonArea" class="row">
							<div class="col-md-12 text-right">
							<div class="blankSpace"></div>
								<a href="javascript:isDelete(${record.partyNo });" class="btn btn-warning">삭제</a>
								<a href="<c:url value="#"/>" class="btn btn-primary" onclick="javascript:setClosedParty();">마감하기</a>
								<a href="#" class="btn btn-warning"  onclick="javascript:setBlackMember();">회원정지</a>
								<div class="blankSpace"></div>
							</div>
						</div>
					</div>
			</div>
		</div>
	
	<!-- 광고 2 -->
	<div class="ad_two">
		
	</div>
	
</body>

<script>
	function isDelete(partyNo) {
		if (confirm("정말로 삭제 하시겠습니까?")) {
			location.replace("<c:url value='/partyBbsDelete.do?partyNo='/>"
					+ partyNo);
		}
	}
	
	function setBlackMember(){
		if(confirm("정말로 회원 정지를 진행하시겠습니까?")){
			location.replace("<c:url value='/partyBlackMember.do?email=${record.email}'/>");
		}
	}
	
	function setClosedParty(){
		if(confirm("정말로 파티를 마감하시겠습니까?")){
			location.replace("<c:url value='/closedParty.do?partyNo=${record.partyNo}'/>");
		}
	}
</script>