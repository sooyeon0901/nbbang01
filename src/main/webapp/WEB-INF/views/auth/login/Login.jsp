<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
  	<title>로그인</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/login/css/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/first/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<!-- font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gugi&family=Jua&family=Montserrat:ital,wght@0,100;1,500&family=Nanum+Gothic&family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
	<!-- SocialLogin -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<meta name="google-signin-client_id" content="84685836012-liev1gs62jmnf58m5k4iq7bd04usemdd.apps.googleusercontent.com">
	<script src="<c:url value="/resources/js/socialLogin.js"/>"></script>
</head>
<style>
	body{
		font-family:'Nanum Gothic', sans-serif;
	}
	#first-navbar-logo {
	 	width:100px;
	 	height:50px;
	 	position: absolute;
	 	margin-left:80px;
	 	margin-top:15px;
	    font-size: 20px;
	    font-weight: bold;
	    text-align:center;
	 	background-color:rgba(241, 114, 114, 0.96); 
	 	border-radius: 40px;
	 	line-height: 50px;
	 	color:#fff;
		z-index: 1;
	 }
	 #first-navbar-login {
	 	width:100px;
	 	height:50px;
	 	position: absolute;
	 	margin-left:1300px;
	 	margin-top:15px;
	    font-size: 20px;
	    font-weight: bold;
	 	background-color:rgba(241, 114, 114, 0.96); 
	 	text-align:center;
	 	border-radius: 40px;
	 	line-height: 50px;
	 	z-index: 1;
	 	color:#fff;
	 }
	 .contents{
	 	position: relative;
	 }
	 .abcRioButton.abcRioButtonLightBlue {
	 	margin: 0 auto;
	 }
</style>


<body class="img js-fullheight" style="background-image: url(resources/login/images/bg.jpg);">
	<div class="contents">
		<div id="first-navbar-logo">
			<a href="<c:url value="/index.do"/>" style="color:white; ">Nbbang</a>
		</div>
		<div id="first-navbar-login">
			<a href="<c:url value='/signup.do'/>" style="color:white;">회원가입</a>
		</div>
	</div>	
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Login</h2>
				</div>
			</div>
			
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
					
					<c:if test="${! empty NotMember}">
						<span>${NotMember}</span>
					</c:if>	
						
						<!-- 로그인 영역 -->
						<form action="<c:url value='/memberlogin.do'/>" class="signin-form" method="post">
						
							<div class="form-group">
								<c:if test="${! empty sessionScope.email}" var="saveEmail">
									<input type="text" class="form-control" name="email" value="${sessionScope.email}"
										placeholder="example@google.com" required>
								</c:if>
								<c:if test="${not saveEmail}">
									<input type="text" class="form-control" name="email" value=""
										placeholder="example@google.com" required>
								</c:if>
								
								
							</div>
						
							<div class="form-group">
								<input id="password-field" type="password" class="form-control"
									name="password" placeholder="비밀번호" required> 
							</div>
							
							
							<div class="form-group">
								<button type="submit"
									class="form-control btn btn-primary submit px-3">로그인</button>
							</div>
							
							
							<div class="form-group d-md-flex">
								<div class="w-50">
									<label class="checkbox-wrap checkbox-primary">Save Id
										<input type="checkbox" name="checkbox" checked> <span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="<c:url value='/findmember.do'/>" style="color: #fff">이메일을 잊으셨나요?</a>
								</div>
							</div>
						</form>
						<form action="<c:url value='/sociallogin.do'/>" class="signin-form" method="post" id="form">
							<div style="text-align: center;">
								<!-- 소셜 로그인 영역 -->
								<p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>
								<a href="#" onclick="social.kakao.login()"><img src="<%=request.getContextPath()%>/resources/images/social_login_logo/kakao_login_btn.png" alt="카카오로그인"></a>
								<div class="g-signin2" data-onsuccess="onSignIn" id="googleBtn" data-width="300px" data-height="45px;" data-longtitle="true"></div>
								<input type="hidden" name="loginType" id="loginType">
								<input type="hidden" name="nickname" id="nickname">
								<input type="hidden" name="email" id="email">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script>
	$(function () {
		social.kakao.init();
		social.google.init("googleBtn");
	});
	
	function socialGetInfo(info) {
		console.log("info.type:",info.type);
		console.log("info.nm:",info.nm);
		console.log("info.email:",info.email);
		var loginType = info.type;
		var nickname = info.nm;
		var email = info.email;
		$('#loginType').val(loginType);
		$('#nickname').val(nickname);
		$('#email').val(email);
		setTimeout($('#form').submit(), 2000);
	}
	</script>
</body>
</html>


