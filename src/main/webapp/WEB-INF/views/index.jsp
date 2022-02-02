<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:include page="/WEB-INF/views/template/Top.jsp"/>

	

			<section id="nino-slider" class="carousel slide container" data-ride="carousel">
				
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">한달에 구독료 얼마가 나가지?</span>
							궁금하다면 <br><span style="color:#FF69B4;">n빵</span> 하자!
						</h2>
						<a href="<c:url value='/mySub.do'/>" class="nino-btn">내 구독 관리 하기!</a>
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">다른 사람들은 어떤 걸 구독하지?</span>
							알고싶다면 <br><span style="color:#EBFF82;">n빵</span> 하자!
						</h2>
						<a href="<c:url value='/recommandList.do'/>" class="nino-btn">추천게시판 보기</a>
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">구독료 공유할 사람은 없을까?</span>
							찾고싶다면 <br><span style="color:#00FFFF;">n빵</span> 하자!
						</h2>
						<a href="<c:url value='/partyBbs.do'/>" class="nino-btn">파티게시판 보기</a>
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">구독 일정이 너무 복잡해!</span>
							깔끔하게 <br><span style="color:#8B4513;">n빵</span> 하자!
						</h2>
						<a href="<c:url value='/mySchedule.do'/>" class="nino-btn">내 스케쥴 보기</a>
					</div>
				</div>

				<!-- Indicators -->
				<ol class="carousel-indicators clearfix">
					<li data-target="#nino-slider" data-slide-to="0" class="active">
						<div class="inner">
							<span class="number">01</span> 구독	
						</div>
					</li>
					<li data-target="#nino-slider" data-slide-to="1">
						<div class="inner">
							<span class="number">02</span> 추천
						</div>
					</li>
					<li data-target="#nino-slider" data-slide-to="2">
						<div class="inner">
							<span class="number">03</span> 파티
						</div>
					</li>
					<li data-target="#nino-slider" data-slide-to="3">
						<div class="inner">
							<span class="number">04</span> 스케쥴
						</div>
					</li>
				</ol>
			</section>
		</div>
	</header>
	<!--/#header-->

	<!-- Story About Us
    ================================================== -->
	<section id="nino-story">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">What we do</span>
				세상의 많은 구독 서비스를 누려 보세요
			</h2>
			<p class="nino-sectionDesc">엔빵은 구독서비스들을 세 가지로 분류하여 관리합니다. </p>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<a class="overlay">
								<span class="content">
									<i class="mdi mdi-account-multiple nino-icon"></i>
									Lecture
								</span>
								
								<img src="<%=request.getContextPath()%>/resources/images/story/img-1.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<a class="overlay" >
								<span class="content">
									<i class="mdi mdi-image-filter-center-focus-weak nino-icon"></i>
									Life Style
								</span>
								<img src="<%=request.getContextPath()%>/resources/images/story/img-2.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<a class="overlay" >
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									Media
								</span>
								<img src="<%=request.getContextPath()%>/resources/images/story/img-3.jpg" alt="">
							</a>
						</div>
					</div>
					
				</div>
			</div>
		</div>		
	</section><!--/#nino-story-->
	<!-- lecture sub list -->
		<div class="container">
		<h2 class="nino-sectionHeading"></h2>
			<h2 class="nino-sectionHeading">
			<p class="nino-sectionDesc">이미지를 누르면 해당 사이트로 이동합니다.</p>
				<span class="nino-subHeading">Lecture</span>
				
			</h2>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay" href="https://www.millie.co.kr/company/company.html" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									밀리의 서재
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/028_millie.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay" href="https://publy.co/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									퍼블리
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/024_publy.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://publy.co/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									뉴닉
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/001_newneek.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.welaaa.com/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									윌라
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/016_willa.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay" href="https://bigissue.kr/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									빅이슈
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/021_bigissue.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay" href="http://m.yes24.com/BookClub/Main" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									예스24 북클럽
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/020_yes24.png" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>		
		<span class="nino-subHeading"></span>
		
		<div class="container">
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://select.ridibooks.com/home" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									리디셀렉트
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/032_ridiselect.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://digital.mk.co.kr/intro/intro.php" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									매경e신문
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/008_meailnews.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=283947105" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									BBC사이언스
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/010_bbc.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.joins.com/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									조인스프라임
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/018_joinsprime.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://pinzle.net/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									핀즐
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/033_pinzle.jpeg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay" >
								<span class="content" style="font-family: 'Jua', sans-serif;">
									<i class="mdi mdi-airplay nino-icon"></i>
									n빵에는 많은 교양 서비스들이 준비되어 있습니다.</br> 구경 가실래요?
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/000_etc.jpg" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<h2>   </h2>
		<!-- liftstyle sub list -->
		<span class="nino-subHeading"></span>
		<h2 class="nino-sectionHeading"></h2>
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Life Style</span>
			</h2>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.coupang.com/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									쿠팡 와우
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/018_coupang.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.jobplanet.co.kr/welcome/index" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									잡플래닛
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/015_jobplanet.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.laundrygo.com/brand" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									런드리고
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/003_laundrygo.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://pilly.kr/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									필리
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/004_pilly2.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://happymoonday.com/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									해피문데이
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/005_happymoonday.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://wisely.wiselycompany.com/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									와이즐리
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/006_wisely.png" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>		
		<span class="nino-subHeading"></span>
		
		<div class="container">
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://kukka.kr" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									꾸까
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/007_kukka.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://nid.naver.com/membership/join" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									네이버플러스
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/008_naverplus.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.socar.kr/company" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									쏘카
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/009_socar.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://hobbyinthebox.co.kr/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									하비인더박스
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/011_hobbyinthebox.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://e.kakao.com/plus_info" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									카카오 이모티콘+
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/014_kakaoplus.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay" >
								<span class="content" style="font-family: 'Jua', sans-serif;">
									<i class="mdi mdi-airplay nino-icon"></i>
									n빵에는 많은 라이프스타일 서비스들이 준비되어 있습니다.</br> 구경 가실래요?
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/000_etc.jpg" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>		
		
		<!-- media sub list -->
		<span class="nino-subHeading"></span>
		<h2 class="nino-sectionHeading"></h2>
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Media</span>
			</h2>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.spotv.net/main.asp" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									스포티비
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/media/001_spotvnow.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.youtube.com/premium" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									유튜브프리미엄
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/media/002_youtube.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.netflix.com/kr/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									넷플릭스
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/media/003_netflix.jpeg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.wavve.com/index.html" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									웨이브
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/media/007_wave.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.tving.com/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									티빙
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/media/006_tving.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.disneyplus.com/ko-kr" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									디즈니
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/media/005_disney.png" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>		
		<span class="nino-subHeading"></span>
		
		<div class="container">
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://watcha.com/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									왓챠
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/media/004_watcha.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.nintendo.co.kr/hardware/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									닌텐도
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/media/014_nintendo.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.melon.com/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									멜론
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/media/010_melon.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://music.bugs.co.kr/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									벅스
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/media/011_bugs.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay"  href="https://www.playstation.com/ko-kr/" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									플레이스테이션
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/media/012_playstation.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay">
								<span class="content" style="font-family: 'Jua', sans-serif;">
									<i class="mdi mdi-airplay nino-icon"></i>
									n빵에는 많은 미디어 서비스들이 준비되어 있습니다.</br> 구경 가실래요?
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/000_etc.jpg" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
			<h2 class="nino-sectionHeading"></h2>
		</div>		
	<!-- Counting
    ================================================== -->
    <section id="nino-counting">
    	<div class="container">
    		<div layout="row" class="verticalStretch">
    			<div class="item">
    				<div class="number">42</div>
    				<div class="text">구독 서비스수</div>
    			</div>
    			<div class="item">
    				<div class="number">123</div>
    				<div class="text">회원수</div>
    			</div>
    			<div class="item">
    				<div class="number">15</div>
    				<div class="text">파티 매칭수</div>
    			</div>
    			<!-- 
    			<div class="item">
    				<div class="number">99</div>
    				<div class="text">cup of coffee</div>
    			</div>
    			<div class="item">
    				<div class="number">24</div>
    				<div class="text">members</div>
    			</div>
    			-->
    		</div>
    	</div>
    </section><!--/#nino-counting-->

    <!-- Services
    ================================================== -->
    <!--
    <section id="nino-services">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">We work with</span>
				Amazing Services
			</h2>
			<div class="sectionContent">			
				<div class="fw" layout="row">
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-apple-keyboard-command nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">Photography</h4>
								<p>Photography is the science, art and practice of creating durable images by recording light or other electromagnetic radiation</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-blender nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">Web Design</h4>
								<p>Web design encompasses many different skills and disciplines in the production and maintenance of websites.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-bookmark-plus-outline nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">Creativity</h4>
								<p>Creativity is a phenomenon whereby something new and somehow valuable is formed. The created item may be intangible or a physical object.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-buffer nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">seo</h4>
								<p>Search engine optimization (SEO) is the process of affecting the visibility of a website or a web page in a web search engine's unpaid results.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-desktop-mac nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">Css/Html</h4>
								<p>HyperText Markup Language, commonly abbreviated as HTML, is the standard markup language used to create web pages. </p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-diamond nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">digital</h4>
								<p>With digital signals, system noise, provided it is not too great, will not change the quantification whereas with signals handled using analog processing.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
    	</div>
    </section>
    --><!--/#nino-services-->
	
    <!-- Unique Design
    ================================================== -->
    
    <!--<section id="nino-uniqueDesign">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">For all devices</span>
				Unique design
			</h2>
			<div class="sectionContent">
				<div class="nino-devices">
					<img class="tablet" src="<%=request.getContextPath()%>/resources/images/unique-design/img-1.png" alt="">
					<img class="mobile" src="<%=request.getContextPath()%>/resources/images/unique-design/img-2.png" alt="">
				</div>
			</div>
    	</div>
    </section>/#nino-uniqueDesign-->

    <!-- What We Do
    ================================================== -->
    
    <section id="nino-whatWeDo">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Guide</span>
				HOW TO USE
			</h2>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-6">
						<div class="text-center">
							<img src="<%=request.getContextPath()%>/resources/images/what-we-do/img-1.jpg" alt="">
						</div>
					</div>
					<div class="col-md-6">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-camera nino-icon"></i> 
											파티 매칭시 비용은 어떻게 송금되나요?
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body" style="font-style:normal; font-size:15px; font-weight:bold;">
										파티원은 매 달 귀찮게 송금하지 않아도 돼요.</br> 엔빵에 등록된 카드를 통해 요금이 매 달 자동 결제됩니다.</br>
										파티장은 매 달 귀찮게 송금해달라고 하지 않아도 돼요.</br> 피클플러스가 등록된 계좌로 매 달 자동 정산된 금액을 보내줍니다.
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-owl nino-icon"></i> 
											안심하고 계좌를 등록해도 되나요?
										</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
									<div class="panel-body" style="font-style:normal; font-size:15px; font-weight:bold;">
										네, 그럼요. 엔빵은 뛰어난 보안의 금융결제원과 함께합니다. </br>
										안전한 계정 공유 생활, 엔빵과 함께하세요.
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title">
										<a class="collapsed mainQnA" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-laptop-mac nino-icon"></i> 
											엔빵의 구독서비스 관리는 어떻게 진행되나요?
										</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body" style="font-style:normal; font-size:15px; font-weight:bold;">
										엔빵에는 사용자가 계좌 등록을 통해 본인 명의의 계좌를 등록하시면,</br> 구독 서비스와의 거래 내역을 자동으로 인식하는 기술이 있습니다.</br>
										이 기술을 통해 사용자의 구독 중인 서비스의 금액,</br> 날짜를 알 수 있고 스케쥴에 저장하며, 매달 잊지 않도록 알려 주는 시스템입니다.
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
    	</div>
    </section><!--/#nino-whatWeDo-->

    <!-- Testimonial
    ================================================== -->
    <!-- 리뷰나 후기 올리기 -->
    <section class="nino-testimonial">
    	<div class="container">
    		<div class="nino-testimonialSlider">
				<ul>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-comment-multiple-outline nino-icon"></i>
							</div>
							<div>
								<p class="quote">"엔빵을 이용하고 나서 정확한 나의 한 달 구독료를 알게 됐어요."</p>
								<span class="name">코딩천재</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-wechat nino-icon"></i>	
							</div>
							<div>
								<p class="quote">"엔빵 덕분에 쓸데없는 지출이 줄어서 여웃돈이 생겼어요.</br>구독 스케쥴러로 공과금까지 한번에 정리할 수 있어서 편리해요."</p>
								<span class="name">파주불주먹</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-message-text-outline nino-icon"></i>
							</div>
							<div>
								<p class="quote">"OTT서비스마다 색깔이 달라서 전부 이용해보고 싶었는데 비용이 고민이었어요.</br>엔빵 덕분에 저렴하게 모든 서비스를 이용중이에요."</p>
								<span class="name">1조귀요미</span>
							</div>
						</div>
					</li>
				</ul>
			</div>
    	</div>
    </section><!--/#nino-testimonial-->

    <!-- Our Team
    ================================================== -->
    
	<section id="nino-ourTeam">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Who we are</span>
				Meet our team
			</h2>
			<p class="nino-sectionDesc">
				우리는 더 나은 구독 관리 서비스를 지향합니다.
			</p>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
				
				
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="<%=request.getContextPath()%>/resources/images/our-team/team01.jpeg" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Kang</h4>
							<span class="regency"></span>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="<%=request.getContextPath()%>/resources/images/our-team/team03.png" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Jun</h4>
							<span class="regency"></span>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="<%=request.getContextPath()%>/resources/images/our-team/team04.png" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Hyung</h4>
							<span class="regency"></span>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="<%=request.getContextPath()%>/resources/images/our-team/team06.jpeg" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Jung</h4>
							<span class="regency"></span>
						</div>
						
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="<%=request.getContextPath()%>/resources/images/our-team/team07.jpeg" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Choi</h4>
							<span class="regency"></span>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="<%=request.getContextPath()%>/resources/images/our-team/team08.png" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Hwang</h4>
							<span class="regency"></span>
						</div>
					</div>
						
						
					<span class="nino-subHeading" style="color:#fff;">줄간격..</span>
				
					<div>
						<div class="col-md-2 col-sm-2" style="margin-left:297px;">
							<div class="item">
								<div class="overlay" href="#">
									<div class="content">
										<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
									</div>
									<img src="<%=request.getContextPath()%>/resources/images/our-team/team05.png" alt="">
								</div>
							</div>
							<div class="info">
								<h4 class="name">Park</h4>
								<span class="regency"></span>
							</div>
						</div>
						<div class="col-md-2 col-sm-2">
							<div class="item">
								<div class="overlay" href="#">
									<div class="content">
										<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
									</div>
									<img src="<%=request.getContextPath()%>/resources/images/our-team/team02.png" alt="">
								</div>
							</div>
							<div class="info">
								<h4 class="name">Soo</h4>
								<span class="regency"></span>
							</div>
						</div>
						<div class="col-md-2 col-sm-2">
							<div class="item">
								<div class="overlay" href="#">
									<div class="content">
										<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
									</div>
									<img src="<%=request.getContextPath()%>/resources/images/our-team/team09.png" alt="">
								</div>
							</div>
							<div class="info">
								<h4 class="name">Ran</h4>
								<span class="regency"></span>
							</div>
						</div>
					</div>
						
						
						
						
				
					
				</div>
					
				
				
				
				
				
				</div>
			</div>
	</section><!--/#nino-ourTeam-->

	<!-- Brand
    ================================================== -->
    <!--
    <section id="nino-brand">
    	<div class="container">
    		<div class="verticalCenter fw" layout="row">
    			<div class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img src="<%=request.getContextPath()%>/resources/images/brand/img-1.png" alt=""></a></div>
    			<div class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img src="<%=request.getContextPath()%>/resources/images/brand/img-2.png" alt=""></a></div>
    			<div class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img src="<%=request.getContextPath()%>/resources/images/brand/img-3.png" alt=""></a></div>
    			<div class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img src="<%=request.getContextPath()%>/resources/images/brand/img-4.png" alt=""></a></div>
    			<div class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img src="<%=request.getContextPath()%>/resources/images/brand/img-5.png" alt=""></a></div>
    			<div class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img src="<%=request.getContextPath()%>/resources/images/brand/img-6.png" alt=""></a></div>
    		</div>
    	</div>
    </section><!--/#nino-brand-->

	<!-- Portfolio
    ================================================== -->
    <!-- 
	<section id="nino-portfolio">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">What we do</span>
				some of our work
			</h2>
		</div>
		<div class="sectionContent">
			<ul class="nino-portfolioItems">
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" >
						<img src="<%=request.getContextPath()%>/resources/images/our-work/img-1.jpg" />
						
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile">
						<img src="<%=request.getContextPath()%>/resources/images/our-work/img-2.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-cube-outline nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" >
						<img src="<%=request.getContextPath()%>/resources/images/our-work/img-3.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-desktop-mac nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" >
						<img src="<%=request.getContextPath()%>/resources/images/our-work/img-4.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-flower nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile">
						<img src="<%=request.getContextPath()%>/resources/images/our-work/img-5.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-gamepad-variant nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" >
						<img src="<%=request.getContextPath()%>/resources/images/our-work/img-6.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-gnome nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" >
						<img src="<%=request.getContextPath()%>/resources/images/our-work/img-7.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-guitar-electric nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
			</ul>
		</div>
	</section><!--/#nino-portfolio-->

	<!-- Testimonial
    ================================================== -->
    <!--
    <section class="nino-testimonial bg-white">
    	<div class="container">
    		<div class="nino-testimonialSlider">
				<ul>
					<li>
						<div layout="row" class="verticalCenter">
							<div class="nino-avatar fsr">
								<img class="img-circle img-thumbnail" src="<%=request.getContextPath()%>/resources/images/testimonial/img-1.jpg" alt="">
							</div>
							<div>
								<p class="quote">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."</p>
								<span class="name">Joshua Earle</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row" class="verticalCenter">
							<div class="nino-avatar fsr">
								<img class="img-circle img-thumbnail" src="<%=request.getContextPath()%>/resources/images/testimonial/img-2.jpg" alt="">
							</div>
							<div>
								<p class="quote">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."</p>
								<span class="name">Jon Doe</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row" class="verticalCenter">
							<div class="nino-avatar fsr">
								<img class="img-circle img-thumbnail" src="<%=request.getContextPath()%>/resources/images/testimonial/img-3.jpg" alt="">
							</div>
							<div>
								<p class="quote">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."</p>
								<span class="name">Jon Doe</span>
							</div>
						</div>
					</li>
				</ul>
			</div>
    	</div>
    </section><!--/#nino-testimonial-->

    <!-- Happy Client
    ================================================== -->
    <!--
    <section id="nino-happyClient">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Happy Clients</span>
				What people say
			</h2>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="<%=request.getContextPath()%>/resources/images/happy-client/img-1.jpg" alt="">
							</div>
							<div class="info">
								<h4 class="name">Matthew Dix</h4>
								<span class="regency">Graphic Design</span>
								<p class="desc">
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo cupiditate temporibus sapiente, sint, voluptatibus tempora esse. Consectetur voluptate nihil quo nulla voluptatem dolorem harum nostrum
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="<%=request.getContextPath()%>/resources/images/happy-client/img-2.jpg" alt="">
							</div>
							<div class="info">
								<h4 class="name">Nick Karvounis</h4>
								<span class="regency">Graphic Design</span>
								<p class="desc">
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo cupiditate temporibus sapiente, sint, voluptatibus tempora esse. Consectetur voluptate nihil quo nulla voluptatem dolorem harum nostrum
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="<%=request.getContextPath()%>/resources/images/happy-client/img-3.jpg" alt="">
							</div>
							<div class="info">
								<h4 class="name">Jaelynn Castillo</h4>
								<span class="regency">Graphic Design</span>
								<p class="desc">
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo cupiditate temporibus sapiente, sint, voluptatibus tempora esse. Consectetur voluptate nihil quo nulla voluptatem dolorem harum nostrum
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="<%=request.getContextPath()%>/resources/images/happy-client/img-4.jpg" alt="">
							</div>
							<div class="info">
								<h4 class="name">Mike Petrucci</h4>
								<span class="regency">Graphic Design</span>
								<p class="desc">
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo cupiditate temporibus sapiente, sint, voluptatibus tempora esse. Consectetur voluptate nihil quo nulla voluptatem dolorem harum nostrum
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
    	</div>
    </section><!--/#nino-happyClient-->

    <!-- Latest Blog
    ================================================== -->
    <!--
    <section id="nino-latestBlog">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Our stories</span>
				Latest Blog
			</h2>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="<%=request.getContextPath()%>/resources/images/our-blog/img-1.jpg" alt=""></a>
								<div class="date">
									<span class="number">15</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">Lorem ipsum dolor sit amet</a></h3>
							<p class="articleDesc">
								Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 543</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 15</a>
							</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="<%=request.getContextPath()%>/resources/images/our-blog/img-2.jpg" alt=""></a>
								<div class="date">
									<span class="number">14</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">sed do eiusmod tempor</a></h3>
							<p class="articleDesc">
								Adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 995</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 42</a>
							</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="<%=request.getContextPath()%>/resources/images/our-blog/img-3.jpg" alt=""></a>
								<div class="date">
									<span class="number">12</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">incididunt ut labore et dolore</a></h3>
							<p class="articleDesc">
								Elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 1264</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 69</a>
							</div>
						</article>
					</div>
				</div>
			</div>
    	</div>
    </section><!--/#nino-latestBlog-->

    <!-- Map
    ================================================== -->
    <!--
    <section id="nino-map">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
    			<i class="mdi mdi-map-marker nino-icon"></i>
    			<span class="text">Open map</span>
    			<span class="text" style="display: none;">Close map</span>
    		</h2>
    		<div class="mapWrap">
	    		<iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d79466.26604960626!2d-0.19779784176715043!3d51.50733004537892!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C+UK!3m2!1d51.5073509!2d-0.1277583!5e0!3m2!1sen!2s!4v1469206441744" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
	    	</div>
    	</div>
    </section><!--/#nino-map-->
	
	
<jsp:include page="/WEB-INF/views/template/Footer.jsp"/>