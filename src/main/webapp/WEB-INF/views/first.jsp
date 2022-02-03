<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 원페이지 대문 -->

<!DOCTYPE html>
<html lang="ko">
 <head>
  <meta charset="UTF-8">
  <title>Nbbang | The new Wave of Subscription</title>
  
  	<!-- css -->
	<link href="<%=request.getContextPath()%>/resources/loginmodal/assets/css/bootstrap.css" rel="stylesheet" />
	<link href="<%=request.getContextPath()%>/resources/loginmodal/assets/css/login-register.css" rel="stylesheet" />
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/materialdesignicons.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/jquery.mCustomScrollbar.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/prettyPhoto.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/unslider.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/template.css" />
	<script src="<%=request.getContextPath()%>/resources/loginmodal/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/resources/loginmodal/assets/js/bootstrap.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/resources/loginmodal/assets/js/login-register.js" type="text/javascript"></script>

<!--스크립트끝-->
 </head>

<!--스타일 영역-->
<style type="text/css">
	 *{
	 	margin:0; padding:0;
	 }
	 ul li{
	 	list-style:none;
	 }
	 #wrap{
	 	width:100%; height:3900px; position:absolute;  margin:0 auto;
	 }
	 #first-navbar-logo {
	 	width:100px;
	 	height:50px;
	 	position: absolute;
	 	margin-left:80px;
	 	margin-top:15px;
	 	font-family: 'Montserrat', sans-serif;
	    font-size: 20px;
	    font-weight: 700;
	    text-align:center;
	 	background-color:rgba(241, 114, 114, 0.96); 
	 	border-radius: 40px;
	 	line-height: 50px;
		z-index: 1;
	 }
	 #first-navbar-login {
	 	width:100px;
	 	height:50px;
	 	position: absolute;
	 	margin-left:1300px;
	 	margin-top:15px;
	 	font-family: 'Montserrat', sans-serif;
	    font-size: 20px;
	    font-weight: 700;
	 	background-color:rgba(241, 114, 114, 0.96); 
	 	text-align:center;
	 	border-radius: 40px;
	 	line-height: 50px;
	 	z-index: 1;
	 }
	 #inner-word{
	 	position: absolute;
	 	z-index: 1;
	 	text-align:center;
	 	width:100%;
	 	display:block;
	 	top: 50%;
		left: 50%;
		transform: translate( -50%, -50% );
	 }
	 h3{
	 	color:#fff;
	 	font-size: 40px;
	 	font-weight:bold;
	 }
	 h4{
	 	color:#fff;
	 	font-size: 25px;
	 	font-weight:bold;
	 }
	 .contents{
	 	position: relative;
	 }
	 .contents > img{
	 	width:100%;
	 	height:800px; border:0;
	 }
	 .contents > img:hover {
	    opacity: 0.63;
     }
	/*button영역*/
	 .circle{
	 	position:fixed; 
	 	top:280px; 
	 	right:0; 
	 	margin-right:50px; 
	 	transition: all linear 0.1s;
	 	z-index:1;
	 }
	 #circle1{margin-top:0px;}
	 #circle2{margin-top:13px;}
	 #circle3{margin-top:13px;}
	 #circle4{margin-top:13px;}
	 #circle5{margin-top:13px;}
	
	#footer{ 
		background: #f8f8f8;
		color:#999999;
	}
</style>
<script type="text/javascript">
 
 $(function(){ //alert("ok");
 
	   $("nav a").click(function(){
           $.scrollTo(this.hash || 0,1000);
		   e.preventDefault();});
	   
 });
</script>

 <body>
  <div id ="wrap">
	<div class="onepage">
		<div id="contents1" class="contents">
			<div id="inner-word">
				<h3>세상의 수많은 구독 서비스들을 손쉽게 관리하세요.</h3>
				<h4>이체 일정 및 알림 설정으로 잊지말고 챙기세요.</h4>
			</div>
			<div id="first-navbar-logo" style="color:black;">
				Nbbang
			</div>
			<div id="first-navbar-login">
				<a href="<c:url value='/login.do'/>">로그인</a>
			</div>
			<img src="<%=request.getContextPath()%>/resources/images/firstpage/first06.jpg"/>
		</div>
		<div id="contents2" class="contents">
			<div id="inner-word">
				<h3>구독료가 부담이신가요? 엔빵에서 구독료를 나눠낼 친구를 찾으세요.</h3>
				<h4>매달 나가는 구독료를 아껴도 충분히 즐길 수 있습니다.</h4>
			</div>
			<img src="<%=request.getContextPath()%>/resources/images/firstpage/first02.jpg"/>
		</div>
		<div id="contents3" class="contents">
			<div id="inner-word">
				<h3>요즘 유행하는 드라마,영화가 궁금하시다고요? 추천 기능으로 정보를 얻으세요.</h3>
				<h4>엔빵 회원들이 추천하는 작품도 감상하세요.</h4>
			</div>
			<img src="<%=request.getContextPath()%>/resources/images/firstpage/first03.jpg"/>
		</div>
		<div id="contents4" class="contents">
			<div id="inner-word">
				<h3>세상의 수많은 구독 서비스들을 손쉽게 관리하세요.</h3>
				<h4>이체 일정 및 알림 설정으로 잊지말고 챙기세요.</h4>
			</div>
			<img src="<%=request.getContextPath()%>/resources/images/firstpage/first04.jpg"/>
		</div>
		<div id="contents5" class="contents">
			<div id="inner-word">
				<h3>구독료가 부담이신가요? 엔빵에서 구독료를 나눠낼 친구를 찾으세요.</h3>
				<h4>매달 나가는 구독료를 아껴도 충분히 즐길 수 있습니다.</h4>
			</div>
			<img src="<%=request.getContextPath()%>/resources/images/firstpage/first05.jpg"/>
		</div>
		
		<!--버튼영역-->
		<div class="circle">
			 <nav>
			     <div id="circle1">
				  <a href="#contents1">
				   <img src="<%=request.getContextPath()%>/resources/first/img/circle1.png" width="33" height="35" border="0" alt="#"></a>
				   </div>
				 <div id="circle2">
				  <a href="#contents2">
					<img src="<%=request.getContextPath()%>/resources/first/img/circle2.png" width="33" height="35" border="0" alt="#">
				  </a>
				  </div>
				 <div id="circle3">
				  <a href="#contents3">
					<img src="<%=request.getContextPath()%>/resources/first/img/circle3.png" width="33" height="35" border="0" alt="#">
				  </a>
				  </div>
				 <div id="circle4">
				  <a href="#contents4">
				  <img src="<%=request.getContextPath()%>/resources/first/img/circle4.png" width="33" height="35" border="0" alt="#"></a>
				  </div>
			     <div id="circle5">
				  <a href="#contents5"><img src="<%=request.getContextPath()%>/resources/first/img/circle5.png" width="33" height="35" border="0" alt="#"></a>
				  </div>
			  </nav>
		</div>
	</div>
	
		<!--footer-->
		<footer id="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6"></div>
				</div>
				<div class="nino-copyright">
					Copyright &copy; 2021 <a style="color:black;">Nbbang.com</a>.
					All Rights Reserved. <br /> by 강현수 | 김수연 | 김준형 | 김형태 | 박재현 | 정윤식 |
					최주원 | 황태환 | 김혜란
				</div>
			</div>
		</footer>
		<!--푸터수정버전-->

	</div>
 </body>
</html>
