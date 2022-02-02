<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">
  <head>
  	<title>회원가입</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/signup/css/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<!-- font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gugi&family=Jua&family=Montserrat:wght@100&family=Nanum+Gothic&display=swap" rel="stylesheet">

	<!--  <link rel="stylesheet" href="/dist/mc-calendar.min.css" /> -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<script src="<c:url value='/resources/js/JQuery_js/jquery-3.6.0.min.js'/>"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	
</head>
<style>
	#my-btn-signup{
		padding:10px;
	}
	.ftco-section {
  		padding: 3em 0; 
  	}
  	#datepicker{
  		margin-top:10px;
  	}
</style>

	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrap d-md-flex">
						<div class="text-wrap p-4 p-lg-5 d-flex img" style="background-image: url(resources/login/images/bg2.jpg);">
							<div class="text w-100">
								<h2 class="mb-4">엔빵에 오신 걸 환영합니다 :-)</h2>
								<p>구독 서비스들을 편하게 관리하고, </br>OTT서비스를 나눠 볼 친구를 구하세요.</p>
							</div>
			      		</div>
						<div class="login-wrap p-4 p-md-5" id="signup-wrap">
				      	<div class="row justify-content-center py-md-5">
				      		<div class="col-lg-9">
				      		
				      		
				      			<!-- 회원가입 폼 -->
				      			<form id="joinform" class="signup-form" class="form-horizontal" method="post" onsubmit="fnJoinComplete();" 
				      			action="<c:url value='/join.do'/>">
										<div class="row">
											<!-- email -->
											<div class="col-md-10">
												<div class="input-group mb-3">
													<input type="text" id="id_email" class="form-control"
														name="email" placeholder="email@nbbang.com" value="${param.email}" <c:if test="${param.loginType == 'kakao' || param.loginType == 'google'}">readonly="readonly"</c:if>/>
														<span style="color: red; font-size: .8em">${emailError}
															<form:errors path="formCommand.email" />
														</span>
													<!--  
													<button class="btn btn-primary" type="button"
														id="button-addon2">인증</button>
													-->
												</div>
											</div>
											<!-- password -->
											<div class="col-md-10">
												<div class="input-group mb-3">
													<input type="password" id="id_password" class="form-control"
														name="password" value="${param.password}" <c:if test="${param.loginType == 'kakao' || param.loginType == 'google'}">readonly="readonly" placeholder="소셜로그인 시 비밀번호 미입력"</c:if><c:if test="${param.loginType != 'kakao' && param.loginType != 'google'}">placeholder="비밀번호"</c:if>/>
													<span style="color: red; font-size: .8em">${passwordError}
														<form:errors path="formCommand.password" />
													</span>
												</div>
											</div>
											<!-- name -->
											<div class="col-md-10">
												<div class="form-group">
													<input type="text" id="id_name" class="form-control" placeholder=이름 name="name" value="${param.name}" />
													<span style="color: red; font-size: .8em">${nameError}
															<form:errors path="formCommand.name" />
													</span>
												</div>
											</div>
											<!-- nickname -->
											<div class="col-md-10">
												<div class="input-group mb-3">
													<input type="text" id="id_nickname" class="form-control" placeholder="닉네임" name="nickname" value="${param.nickname}"/>
													<span style="color: red; font-size: .8em">${nicknameError}
														<form:errors path="formCommand.nickname" />
													</span>
													<!--  
													<button class="btn btn-primary" type="button"
														id="button-addon2">중복확인</button>
													-->
												</div>
											</div>
											<!-- birthdate -->
											<div class="col-md-9">
												<div class="form-group">
													<strong>생년월일</strong></br>
													<input type="text" id="id_birthdate" class="form-control" name="birthdate" placeholder="ex. 20220113" style="margin-top: 5px;"
													value="${param.birthdate}" />
													<span style="color: red; font-size: .8em">${birthdateError}
														<form:errors path="formCommand.birthdate" />
													</span>
												</div>
											</div>
											<!-- gender -->
											<div class="col-md-10">
												<div class="custom-radio-label">
													<strong>성별</strong></br>
													<!--  -->
													<label class="radio-inline" style="padding-right: 25px; padding-top: 5px;">
														<input type="radio" name="gender" id="inlineRadio1" value="남" 
															<c:if test="${param.gender=='남'}">checked</c:if> />남
													</label>
													<label class="radio-inline">
														<input type="radio" name="gender" id="inlineRadio2" value="여" 
														<c:if test="${param.gender=='여'}">checked</c:if> />여
													</label>
													<span style="color: red; font-size: .8em">${genderError}
														<form:errors path="formCommand.gender" />
													</span>
												</div>
											</div>
											<!-- tel -->
											<div class="col-md-10">
												<div class="form-group">
													<input type="text" class="form-control" placeholder="연락처 (ex. 01012345678)"
														name="tel" value="${param.tel}" />
													<span style="color: red; font-size: .8em">${telError}
														<form:errors path="formCommand.tel" />
													</span>
												</div>
											</div>
											<!-- (DB순서상)usertype -->
											
											<!-- preference -->
											<div class="col-md-10">
												<div class="form-group">
													<label class="label" for="name"><strong>관심있는 서비스 유형을 선택해주세요</strong></label></br>
													<div class="form-check">
												    	<input class="form-check-input" type="checkbox" name="preference" id="flexCheck1" value="Media"
												    	<c:if test='${fn:indexOf(requestScope.preference,"Media")!=-1}'>checked</c:if> />
												    	<label class="form-check-label" for="flexCheck1">
												          Media
												    	</label>
												    </div>
												    <div class="form-check">
												    	<input class="form-check-input" type="checkbox" name="preference" id="flexCheck2" value="Life" 
												    	<c:if test='${fn:indexOf(preference,"Life")!=-1}'>checked</c:if> />
												    	<label class="form-check-label" for="flexCheck2">
												          Life
												    	</label>
												    </div>
												    <div class="form-check">
												    	<input class="form-check-input" type="checkbox" name="preference" id="flexCheck3" value="Lecture" 
												    	<c:if test='${fn:indexOf(preference,"Lecture")!=-1}'>checked</c:if> />
												    	<label class="form-check-label" for="flexCheck3">
												          Lecture
												    	</label>
												    </div>
												    <span style="color: red; font-size: .8em">${preferenceError}
														<form:errors path="formCommand.preference" />
													</span>
												</div>
											</div>
											
											<input type="hidden" name="loginType" value="${loginType}">
											<input type="hidden" name="authority" value="normal" />
                          					<input type="hidden" name="oringinprofile" value="profile_image.png" />
											<!-- (DB순서상)usertype -->
											<!-- <div class="col-md-10" style="display: none;">
												<div class="form-group">
													<input type="text" class="form-control" name=authority value="normal" />
												</div>
											</div>
											
											
											<div class="col-md-10" style="display: none;">
												<div class="form-group">
													<input type="text" class="form-control" name="oringinprofile" value="profile_image.png" />
												</div>
											</div> -->
											
										<!--  
											<div class="col-md-12 my-4">
												<div class="form-group">
													<div class="w-100">
														<label class="checkbox-wrap checkbox-primary">회원가입 약관에 동의합니다. 
															<input type="checkbox" checked> 
															<span class="checkmark"></span>
														</label>
													</div>
												</div>
											</div>
										-->
											<!-- oringinprofile -->
											
											
											<div class="col-md-12">
												<div class="form-group" id="my-btn-signup">
													<button type="submit" id="btnJoinOk" class="btn btn-primary submit p-3"
															data-toggle="tooltip" data-placement="bottom" title="회원정보를 모두 입력해주세요"
													>가입하기
													</button>
												</div>
											</div>
										</div>
									</form>

					          <div class="w-100">
									<p class="mt-4">I'm already a member! <a href="<c:url value="/login.do"/>">로그인</a></p>
					          </div>
			      		</div>
			      	</div>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>
	
	
<!--  <script src="js/jquery.min.js"></script>-->
<!-- <script src="js/popper.js"></script>-->
<!-- <script src="js/bootstrap.min.js"></script>-->
<!-- <script src="js/main.js"></script>-->

	</body>
</html>

