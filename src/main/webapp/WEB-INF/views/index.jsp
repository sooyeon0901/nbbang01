<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 상단메뉴 시작 -->	
<!--<jsp:include page="/WEB-INF/views/template/Top.jsp"/>-->
<!-- 상단메뉴 끝 -->
		
		<!-- carousel 영역 -->
			<section id="nino-slider" class="carousel slide container" data-ride="carousel">
				
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">한달에 구독료 얼마가 나가지?</span>
							궁금하다면 <br><span style="color:#40E0D0;">n빵</span> 하자!
						</h2>
						<a href="<c:url value='/schedule.do'/>" class="nino-btn">내 구독 보기</a>
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">다른 사람들은 어떤 걸 구독하지?</span>
							알고싶다면 <br><span style="color:#95e1d3;">n빵</span> 하자!
						</h2>
						<a href="<c:url value='/recommand.do'/>" class="nino-btn">추천게시판 보기</a>
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">구독료 공유할 사람은 없을까?</span>
							찾고싶다면 <br><span style="color:#00FFFF;">n빵</span> 하자!
						</h2>
						<a href="<c:url value='/party.do'/>" class="nino-btn">파티게시판 보기</a>
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">구독 일정이 너무 복잡해!</span>
							깔끔하게 <br><span style="color:#8B4513;">n빵</span> 하자!
						</h2>
						<a href="<c:url value='/schedule.do'/>" class="nino-btn">내 스케쥴 보기</a>
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
			<!-- <p class="nino-sectionDesc">세상의 많은 구독 서비스를 누려 보세요 </p> -->
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<a class="overlay" href="#">
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
				<span class="nino-subHeading">Lecture</span>
			</h2>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay" href="#">
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									업피티
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/013_uppity.png" alt="">
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
							<a class="overlay" href="#">
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									피렌체의 식탁
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/012_pirenze.png" alt="">
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
							<a class="overlay" href="#">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									스타벅스
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/001_starbucks.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay" >
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									청소연구소
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/002_cleaning.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="item">
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" href="#">
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									위클리셔츠
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/011_weeklyshirts.png" alt="">
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
							<a class="overlay" href="#">
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" href="#">
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
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
							<a class="overlay" >
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
    
    <section id="nino-uniqueDesign">
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
    </section><!--/#nino-uniqueDesign-->

    <!-- What We Do
    ================================================== -->
    
    <section id="nino-whatWeDo">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Service</span>
				what we do
			</h2>
			<p class="nino-sectionDesc">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
			</p>
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
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-camera nino-icon"></i> 
											Photography
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body">
										Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-owl nino-icon"></i> 
											creativity
										</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
									<div class="panel-body">
										Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-laptop-mac nino-icon"></i> 
											web design
										</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body">
										Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
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
								<p class="quote">"리뷰 1"</p>
								<span class="name">닉넴1</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-wechat nino-icon"></i>	
							</div>
							<div>
								<p class="quote">"리뷰 2"</p>
								<span class="name">닉넴2</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-message-text-outline nino-icon"></i>
							</div>
							<div>
								<p class="quote">"리뷰 3"</p>
								<span class="name">닉넴3</span>
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
				
				<div>
					<div class="col-md-3 col-sm-3">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
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
					<div class="col-md-3 col-sm-3">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
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
					<div class="col-md-3 col-sm-3">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
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
					<div class="col-md-3 col-sm-3">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
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
				</div>
					
				<span class="nino-subHeading" style="color:#fff;">줄간격..</span>
					
				<div>
					<div class="col-md-3 col-sm-3">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
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
					<div class="col-md-3 col-sm-3">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
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
					<div class="col-md-3 col-sm-3">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
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
					<div class="col-md-3 col-sm-3">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
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
	
	
<!-- 푸터 시작 -->
<!--<jsp:include page="/WEB-INF/views/template/Footer.jsp"/>-->
<!-- 푸터 끝 -->