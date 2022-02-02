<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	</div>
</header>
<style>
	/* 광고영역 */
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
<div class="container" style="width: 750px; color: black">
	<h1 style="text-align:left; margin:10px;font-family: 'Jua', sans-serif;color:#BEBEBE;">My 파티</h1>
	<h4 style="text-align:left; margin:10px;font-family: 'Jua', sans-serif;color:#BEBEBE;">내가 현재 참여중인 파티</h4>
	<br>
	
	<!-- c:if 가입중인 파티가 있을때 -->
	<c:if test="${not empty partyBbsList}">
	<!-- 리스트 출력 -->
		<c:forEach var="item" items="${partyBbsList}" varStatus="loop">
			<div style="width: 100%; text-decoration: none; position: relative; float: left;">
				<div>
					<div style="display: inline-block; float: left; padding-left:10px;">
						<!-- c:if 카테고리 eq 'netflix 이면 nexflix 이미지 -->
						<c:choose>
							<c:when test="${item.partyCategoryName eq 'netflix'}"><img src="<%=request.getContextPath()%>/resources/party/001_icon_netflix.png" alt="" style="width: 70px; height: 70px;"></c:when>
							<c:when test="${item.partyCategoryName eq 'watcha'}"><img src="<%=request.getContextPath()%>/resources/party/002_icon_watcha.png" alt="" style="width: 70px; height: 70px;"></c:when>
							<c:when test="${item.partyCategoryName eq 'disney'}"><img src="<%=request.getContextPath()%>/resources/party/003_icon_disney.png" alt="" style="width: 70px; height: 70px;"></c:when>
							<c:when test="${item.partyCategoryName eq 'laftel'}"><img src="<%=request.getContextPath()%>/resources/party/004_icon_laftel.png" alt="" style="width: 70px; height: 70px;"></c:when>
							<c:when test="${item.partyCategoryName eq 'tving'}"><img src="<%=request.getContextPath()%>/resources/party/005_icon_tving.png" alt="" style="width: 70px; height: 70px;"></c:when>
							<c:when test="${item.partyCategoryName eq 'wavve'}"><img src="<%=request.getContextPath()%>/resources/party/006_icon_wavve.png" alt="" style="width: 70px; height: 70px;"></c:when>
						</c:choose>						
					</div>
					<div style="padding-left:3px; margin-top:10px; font-weight: bold; float: left;">
			   			<label>${item.partyTitle}<c:if test="${item.partyLeader eq 'y' }"><img src="<%=request.getContextPath()%>/resources/party/partyleader_crown.png" alt="" style="width: 22px; height: 22px; padding-bottom: 2px;"></c:if></label><br>
			   			<label style="color: gray;">
			   				<c:choose>
								<c:when test="${item.partyCategoryName eq 'netflix'}">넷플릭스</c:when>
								<c:when test="${item.partyCategoryName eq 'watcha'}">왓챠</c:when>
								<c:when test="${item.partyCategoryName eq 'disney'}">디즈니</c:when>
								<c:when test="${item.partyCategoryName eq 'laftel'}">라프텔</c:when>
								<c:when test="${item.partyCategoryName eq 'tving'}">티빙</c:when>
								<c:when test="${item.partyCategoryName eq 'wavve'}">웨이브</c:when>
							</c:choose>
						</label>
		   			</div>
				</div>
			</div>
			<div>
				<div style="display: inline-block; width: 270px; height: 55px; padding-left: 20px;">
					<label style="color: gray;">모집인원</label><br>
					<label>${item.count }/${item.partyMaxCapacity }</label>
				</div>
				
				<div style="display: inline-block; padding-left: 60px;">
					<label style="color: gray;">결제금액</label><br>
					<label>
					<fmt:formatNumber value="${item.partyAllotmentPrice }"
							pattern="#,###" /> 원 / 1인당 <fmt:parseNumber var="price"
							integerOnly="true"
							value="${item.partyAllotmentPrice / item.partyMaxCapacity }" /> <fmt:formatNumber
							value="${price }" pattern="#,###" /> 원
					</label>
				</div>
				
				<br>
				
				<div style="display: inline-block; width: 270px; height: 55px; padding-left: 20px;">
					<label style="color: gray;">파티 시작</label><br>
					<c:if test="${empty item.partyMatchdate }">
						<label>아직 파티 모집이 완료되지 않았습니다.</label>
					</c:if>
					<c:if test="${not empty item.partyMatchdate }">
						<label>${item.partyMatchdate}</label>
					</c:if>
				</div>
				<div style="display: inline-block; padding-left: 60px;">
					<label style="color: gray;">파티 종료</label><br>
					<c:if test="${empty item.partyMatchdate }">
						<label>아직 파티 모집이 완료되지 않았습니다.</label>
					</c:if>
					<c:if test="${not empty item.partyMatchdate }">
						<label>
							${item.endDate }
						</label>
					</c:if>
				</div>
				<br>
			</div>
			<br>
			<br>
		</c:forEach>
	</c:if>
	<!-- c:if 가입중인 파티가 없을때 partyBbsList -->
	<c:if test="${empty partyBbsList}">
	<div style="text-align: center;">
		<br>
		<img src="<%=request.getContextPath()%>/resources/party/no_party.png" alt=""><br>
		<h4 style="color: gray; font-weight: bold;">파티에 참여해보세요!</h4>
		<br>
		<br>
		<br>
	</div>
	</c:if>
</div>
<!-- 광고 2 -->
<div class="ad_two">
	
</div>