<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

</div>
</header>

	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>	
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.hoverdir.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/modernizr.custom.97074.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/unslider-min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/template.js"></script>
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<!--sortable()적용해보려고 가져왔-->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/first/style.css">
	
	<!-- font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=IBM+Plex+Sans+KR:wght@600&family=Jua&display=swap" rel="stylesheet">
	
	<!-- jQuery사용을 위한 라이브러리 임베딩-->
	<!-- 1]다운받은  .js파일 임베디드 -->
	<!--  
	<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
	-->
	<!-- 2]CDN(Content Deliver Network)주소 사용 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<!-- sortable()적용해보려고 가져왔는데 주석풀면 다른기능(호버, 수연님구현셀렉 안보임)
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	  -->
<!--  
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/popper.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
-->

<div class="container">
	<div class="row">
		<div class="col-sm-3">
			<div class="row">
				<div class="col-sm-12"></div>
				<div class="col-sm-10">
					<div class="list-group">
					   <a href="#" class="list-group-item active" style="background-color: #5BC0DE; border: none; font-family:'Jua', sans-serif; font-size: 16px;" ><span style="font-family: 'Jua', sans-serif; font-size: 17px;">'${sessionScope.nickname}${param.nickname}'</span>&nbsp 님의 폴더</a> <!-- ${folder.email} -->
					   
					   <a href="#" class="list-group-item">
					   
					   <form id="frmFldrName">
					   <input id="newinput" type="text" name="sfname" style="border: none; width: 110px;" placeholder="New" />
					   <span class="glyphicon glyphicon-plus" id="btnNwFldr" aria-hidden="true" style="padding-left: 40px"></span>
					   </form>
					   </a>
					   
					   <!-- 필수 폴더(수정/삭제 불가)--> 
					   <a href="<c:url value='/mySub.do' />" class="list-group-item" id="dFolder1">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span>${folderName.sfname}</span><span class="badge bg-primary rounded-pill">${badgeAll.count}</span></a>
					   
					   
					   <!-- 기본 폴더1(수정/삭제 가능)================================================================--> 
					   <a href="<c:url value='/secondFold.do' />" class="list-group-item" id="dFolder2">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="dfdn1" style="padding: 0px; margin: 0px;">Watch</span>
						   <form id="frmEditname1">
						   <input type="text" id="inp1" name="dfldrName2" style="width:90px; border: none; display: none;">
						   </form>
					   <span id="hvDotDFolder2" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">${mysubBadgeWatch.count}</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnDFolder2" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp1" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit1" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
					   <!-- 기본 폴더2(수정/삭제 가능)================================================================--> 
					   <a href="<c:url value='/thirdFold.do' />" class="list-group-item" id="dFolder3">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="dfdn2" style="padding: 0px; margin: 0px;">Life</span>
						   <form id="frmEditname2">
						   <input type="text" id="inp2" name="dfldrName3" style="width:90px; border: none; display: none;">
						   </form>
					   <span id="hvDotDFolder3" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">${mysubBadgeLife.count}</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnDFolder3" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp2" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit2" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
					   <!-- 생성 폴더1(수정/삭제 가능)================================================================--> 
					   <a href="#" class="list-group-item" id="hidFldr1" style="visibility: hidden;">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="firF" style="padding: 0px; margin: 0px;">new1</span>
					   		<form id="frmEditname3">
						   	<input type="text" id="inp3" name="hfldrName1" style="width:90px; border: none; display: none;">
						  	</form>
					   <span id="hvDotHFolder1" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">0</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnHidFldr1" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp3" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit3" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
 					   <!-- 생성 폴더2(수정/삭제 가능)================================================================--> 
					   <a href="#" class="list-group-item" id="hidFldr2" style="visibility: hidden;">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="secF" style="padding: 0px; margin: 0px;">new2$</span>
					   		<form id="frmEditname4">
						   	<input type="text" id="inp4" name="hfldrName2" style="width:90px; border: none; display: none;">
						  	</form>
					   <span id="hvDotHFolder2" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">0</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnHidFldr2" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp4" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit4" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
					   <!-- 생성 폴더3(수정/삭제 가능)================================================================-->
					   <a href="#" class="list-group-item" id="hidFldr3" style="visibility: hidden;">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="thrF" style="padding: 0px; margin: 0px;">new3</span>
					   		<form id="frmEditname5">
						   	<input type="text" id="inp5" name="hfldrName3" style="width:90px; border: none; display: none;">
						  	</form>
					   <span id="hvDotHFolder3" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">0</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnHidFldr3" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp5" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit5" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
					   <!-- 생성 폴더4(수정/삭제 가능)================================================================-->
					   <a href="#" class="list-group-item" id="hidFldr4" style="visibility: hidden;">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="forF" style="padding: 0px; margin: 0px;">new4</span>
					   		<form id="frmEditname6">
						   	<input type="text" id="inp6" name="hfldrName4" style="width:90px; border: none; display: none;">
						  	</form>
					   <span id="hvDotHFolder4" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">0</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnHidFldr4" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp6" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit6" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
					   <!-- 생성 폴더5(수정/삭제 가능)================================================================-->
					   <a href="#" class="list-group-item" id="hidFldr5" style="visibility: hidden;">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="fifF" style="padding: 0px; margin: 0px;">new5</span>
					   		<form id="frmEditname7">
						   	<input type="text" id="inp7" name="hfldrName5" style="width:90px; border: none; display: none;">
						  	</form>
					   <span id="hvDotHFolder5" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">0</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnHidFldr5" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp7" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit7" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
					   
					   <script>
							//function fnNwFldr() {
								//visible	
							//return console.log("ok");
							//}
							var input=document.getElementById('newinput');
							function noSpaceForm(input){
								var str_space = /\s/;               // 공백 체크
					            if(str_space.exec(input.value)) 
					            {     // 공백 체크
					                alert("공백을 사용할 수 없습니다.");
					                input.focus();
					                input.value = input.value.replace(' ',''); // 공백제거
					                return false;
					            }
					            else {
					            	return true;
					            }

							}
							
							var fCount=0;
							if(fCount<5){
								$('#btnNwFldr').click(function(){
									if(noSpaceForm(input)==true){
										$.ajax({
											url:"<c:url value='/mysub/Newfolder.do'/>",
											type:"post",
											dataType:"text",
											data:$('#frmFldrName').serialize(),
											success:function(data1){
												console.log('서버로부터 받은 데이터:',data1);
												switch(fCount){
												case 0:
													$('#hidFldr1').css('visibility','visible'); fCount++;
													$('#firF').text(data1);
													$('#hidFldr1').removeAttr('style');
													break;
												case 1:
													$('#hidFldr2').css('visibility','visible'); fCount++;
													$('#secF').text(data1);
													break;
												case 2:
													$('#hidFldr3').css('visibility','visible'); fCount++;
													$('#thrF').text(data1);
													break;
												case 3:
													$('#hidFldr4').css('visibility','visible'); fCount++;
													$('#forF').text(data1);
													break;
												case 4:
													$('#hidFldr5').css('visibility','visible'); fCount++;
													$('#fifF').text(data1);
													$('#newinput').prop('disabled','true');
													$('#newinput').val('New');
													alert( '폴더수가 최대입니다1' );
													break;
												default: 
													//$('#newinput').prop('disabled','true');
													alert( '폴더수가 최대입니다2' );
													
												}
											},
											error:function(){
												//console.log('에러:',error.responseText);
												if(fCount>4){
													alert('더이상 폴더를 생성할 수 없습니다');
												}
												else{
													alert("폴더명을 입력해주세요");
												}
												
											}
										});
									}//유효성체크 if
									
									
								});
							}
							else{
								$('#newinput').prop('disabled','true');
								 alert( '폴더수가 최대입니다' );
							}
						</script>

					</div>
				</div>
			</div>
		</div>
		<!-- 작업중 -->
		<div class="col-sm-9">
		 
		<!-- 목록 최상단 (폴더명 , 총합계) -->
		<div class="col-sm-11">
			<c:if test="${not empty allCost.allCost}">
			<h4><span class="label label-info" style="text-align: left; margin: 0px;">All</span>  <span Style="font-family: 'IBM Plex Sans KR', sans-serif;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 이번 달 정기지출 총액은 <span Style="font-family: 'Do Hyeon', sans-serif; color:#5BC0DE;">&nbsp ${allCost.allCost}</span>&nbsp 원 입니다</span>
			</h4>
			</c:if>
			<c:if test="${empty allCost.allCost}">
			<h4><span class="label label-info" style="text-align: left; margin: 0px;">All</span>  <span Style="font-family: 'IBM Plex Sans KR', sans-serif;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 이번 달 정기지출 총액은 <span Style="font-family: 'Do Hyeon', sans-serif; color:#5BC0DE;">&nbsp 0</span>&nbsp 원 입니다</span>
			</h4>
			</c:if>
			<hr>
			<div class="col-sm-12">
			
					<div class="row">
					<!-- sortable적용 
					<ul id="sortable">
					  <li class="ui-state-default"></li>
					  <li class="ui-state-default"></li>
					  <li class="ui-state-default"></li>
					  <li class="ui-state-default"></li>
					  <li class="ui-state-default"></li>
					  <li class="ui-state-default"></li>
					  <li class="ui-state-default"></li>
					</ul>
					-->
					
					
							
					<!-- 목록 -->
					<!-- 마이바티스 resultMap의 collection 태그사용 -->
					<c:if test="${not empty folder.mysubs}">
						<c:forEach items="${folder.mysubs}" var="mysub">
						
							<div class="col-md-3" style="padding-left: 0px;">
							
								<c:if test="${mysub.subservice eq '멜론'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/010_melon.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								    <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditSub" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditSub" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo" --><!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName2" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn2"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy2"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList2"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf2"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker2" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay2" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								     
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								
								<c:if test="${mysub.subservice eq '넷플릭스'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/003_netflix.jpeg" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								    <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditNetflix" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditNetflix" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel2" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel2">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName3" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn3"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy3"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList3"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf3"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker3" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay3" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								     
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								
								<c:if test="${mysub.subservice eq '웨이브'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/007_wave.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditWave" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditWave" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel3" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel3">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName4" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn4"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy4"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList4"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf4"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker4" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay4" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								 
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>   
								  </ul>
								</c:if> 
								
								<c:if test="${mysub.subservice eq '디즈니+'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/005_disney.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								    
								    <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditDisney" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditDisney" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel4" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel4">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName5" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn5"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy5"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList5"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf5"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker5" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay5" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
	
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if> 
								
								<c:if test="${mysub.subservice eq '월간과자'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/017_monthlysnack.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditWarganGuaza" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditWarganGuaza" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel5" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel5">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName6" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn6"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy6"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList6"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf6"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker6" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay6" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								
								<c:if test="${mysub.subservice eq '닌텐도스위치'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/014_nintendo.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditNintendoswitch" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditNintendoswitch" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel6" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel6">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName7" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn7"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy7"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList7"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf7"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker7" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay7" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '벅스'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/011_bugs.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditbucks" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditbucks" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel7" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel7">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName8" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn8"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy8"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList8"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf8"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker8" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay8" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '스포티비나우'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/001_spotvnow.jpg" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditspotvnow" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditspotvnow" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel8" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel8">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName9" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn9"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy9"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList9"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf9"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker9" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay9" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '아이클라우드'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/009_icloud.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditiclude" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditiclude" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel9" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel9">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName10" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn10"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy10"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList10"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf10"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker10" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay10" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '유튜브프리미엄'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/002_youtube.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEdityoutube" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEdityoutube" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel10" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel10">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName11" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn11"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy11"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList11"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf11"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker11" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay11" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '애플뮤직'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/013_apple_e.jpg" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditapplemusic" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditapplemusic" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel11" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel11">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName12" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn12"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy12"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList12"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf12"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker12" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay12" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '카카오이모티콘+'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/014_kakaoplus.jpg" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditkakaoimoticon" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditkakaoimoticon" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel12" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel12">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName13" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn13"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy13"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList13"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf13"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker13" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay13" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '꾸까'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/007_kukka.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditkokka" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditkokka" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel13" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel13">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName14" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn14"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy14"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList14"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf14"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker14" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay14" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '네이버+'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/008_naverplus.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditnaverplus" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditnaverplus" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel14" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel14">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName15" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn15"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy15"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList15"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf15"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker15" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay15" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '더반찬'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/016_thebanchan.jpg" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditthebanchan" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditthebanchan" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel15" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel15">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName16" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn16"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy16"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList16"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf16"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker16" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay16" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '런드리고'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/003_laundrygo.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditlaundrygo" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditlaundrygo" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel16" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel16">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName17" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn17"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy17"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList17"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf17"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker17" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay17" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq 'BBC사이언스'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/010_bbc_e.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditbbc" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditbbc" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel17" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel17">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName18" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn18"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy18"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList18"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf18"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker18" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay18" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '리디셀렉트'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/032_ridiselect_e.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditlidiselect" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditlidiselect" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel18" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel18">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName19" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn19"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy19"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList19"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf19"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker19" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay19" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '밀리의 서재'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/028_millie_e.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditmilly" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditmilly" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel19" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel19">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName20" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn20"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy20"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList20"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf20"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker20" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay20" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '매경e신문'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/008_meailnews_e.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditmegyung" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditmegyung" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel20" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel20">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName21" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn21"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy21"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList21"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf21"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker21" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay21" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '빅이슈'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/021_bigissue_e.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditbigisue" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditbigisue" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel21" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel21">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName22" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn22"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy22"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList22"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf22"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker22" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay22" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '예스24북클럽'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/020_yes24_e.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEdityes24" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEdityes24" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel22" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel22">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName23" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn23"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy23"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList23"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf23"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker23" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay23" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '왓챠'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/004_watcha.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditwatch" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditwatch" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel23" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel23">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName24" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn24"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy24"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList24"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf24"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker24" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay24" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '티빙'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/006_tving.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEdittiving" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEdittiving" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel24" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel24">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName25" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn25"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy25"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList25"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf25"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker25" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay25" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '플로'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/008_flo_e.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditflo" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditflo" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel25" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel25">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName26" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn26"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy26"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList26"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf26"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker26" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay26" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->

								<c:if test="${mysub.subservice eq '플레이스테이션'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/media/012_playstation.jpg" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditplaystation" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditplaystation" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel26" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel26">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName27" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn27"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy27"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList27"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf27"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker27" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay27" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '쏘카'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/009_socar.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditsocar" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditsocar" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel27" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel27">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName28" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn28"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy28"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList28"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf28"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker28" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay28" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '와이즐리'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/006_wisely.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditwisely" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditwisely" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel28" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel28">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName29" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn29"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy29"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList29"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf29"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker29" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay29" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '위클리 셔츠'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/011_weeklyshirts.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditweeklyshirts" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditweeklyshirts" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel29" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel29">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName30" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn30"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy30"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList30"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf30"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker30" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay30" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '잡플래닛'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/015_jobplanet.jpg" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditjobplanet" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditjobplanet" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel30" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel30">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName31" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn31"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy31"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList31"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf31"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker31" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay31" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '쿠팡 와우'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/018_coupang.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditcoupangwow" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditcoupangwow" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel31" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel31">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName32" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn32"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy32"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList32"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf32"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker32" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay32" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '필리'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/004_pilly2.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditpilly" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditpilly" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel32" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel32">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName33" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn33"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy33"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList33"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf33"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker33" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay33" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '하비인더박스'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/011_hobbyinthebox.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEdithobbyinthebox" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEdithobbyinthebox" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel33" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel33">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName34" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn34"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy34"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList34"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf34"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker34" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay34" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '해피문데이'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lifestyle/005_happymoonday.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEdithappymoonday" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEdithappymoonday" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel34" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel34">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName35" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn35"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy35"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList35"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf35"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker35" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay35" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '윌라'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/016_willa_e.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditwilla" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditwilla" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel35" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel35">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName36" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn36"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy36"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList36"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf36"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker36" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay36" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								<c:if test="${mysub.subservice eq '조인스 프라임'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/018_joinsprime_e.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditjoinsprime" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditjoinsprime" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel36" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel36">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName37" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn37"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy37"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList37"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf37"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker37" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay37" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '퍼블리'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/024_publy_e.png" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditpubly" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditpubly" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel37" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel37">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName38" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn38"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy38"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList38"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf38"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker38" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay38" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								<c:if test="${mysub.subservice eq '핀즐'}">
								  <div class="thumbnail" style="margin-bottom: 0px; border-bottom: hidden;"> <!-- dotted -->
									<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/033_pinzle.jpeg" alt="로고이미지">
								  </div>
								  <ul class="list-group list-group-flush" style="border-top: hidden;">
								  
								  <li class="list-group-item">${mysub.subservice}
								    <button class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalEditpinzle" aria-hidden="true" id="btnSubEdit"
								     style="background:none; border: none;"></button></li>
								     
								     <!-- modal -->
								     <div class="modal fade" id="modalEditpinzle" tabindex="-1" role="dialog" aria-labelledby="modalEditSubLabel38" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="modalEditSubLabel38">Edit   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h4>
									      </div>
									      <div class="modal-body">
									        <form action="<c:url value='/mysub/edit.do'/>" method="post">
									          <div class="form-group" style="padding-left: 165px;">
									            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- id="subLogo2" --> <!-- visibility: hidden; -->
									          </div>
									         
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">구독서비스명</label>
									            <input type="text" class="form-control" id="subName39" name="subservice" value="${mysub.subservice}" style="width:450px;display: inline-block;">
									            <!-- 구독 리스트 클릭 버튼 -->
									            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn39"/>
									            
									            
									            
									             <!-- 구독 리스트 -->
									            <div class="list-group" id="subListKsy39"> 
									            	<!-- 미디어 리스트 -->
									            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">넷플릭스</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">닌텐도스위치</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">디즈니+</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">멜론</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">벅스</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">스포티비나우</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">아이클라우드</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">유튜브프리미엄</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">애플뮤직</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">왓챠</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">웨이브</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">티빙</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">플로</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">플레이스테이션</span></a>
													<!-- 라이프 스타일 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">카카오이모티콘+</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">꾸까</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">네이버+</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">더반찬</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">런드리고</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">쏘카</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">와이즐리</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">월간과자</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">위클리 셔츠</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">잡플래닛</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">쿠팡 와우</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">필리</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">하비인더박스</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">해피문데이</span></a>
													<!-- 렉쳐 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">BBC사이언스</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">리디셀렉트</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">밀리의 서재</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">매경e신문</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">빅이슈</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">예스24북클럽</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">윌라</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">조인스 프라임</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">퍼블리</span></a>
													<a href="#" class="list-group-item subServiceList39"><span class="subListSpan">핀즐</span></a>
													<!-- 기타 리스트 -->
													<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
													<a href="#" class="list-group-item subServiceListSelf39"><span>직접 입력하기</span></a>
													
												</div> 
				
												
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">결제일</label>
									            <input type="text" class="form-control" id="datepicker39" name="paymentday">기존 결제일: ${mysub.paymentday}
									          </div>
									          <div class="form-group">
									            <label for="recipient-name" class="control-label">월 구독료</label>
									            <input type="text" class="form-control" id="subPay39" name="money" value="${mysub.money}">
									          </div>
									          
									          <div>
									          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
										          	<select class="form-control" name="folderSelect">
													  <option value="Watch">Watch</option>
													  <option value="Life">Life</option>
													</select>
									          </div>
									          <!-- 기존 데이터 넘기기(쿼리문때문에) -->
									          <input type="hidden" name="orisubname" value="${mysub.subservice}" />
									          <input type="hidden" name="oripayday" value="${mysub.paymentday}" />
									          <input type="hidden" name="orimoney" value="${mysub.money}" />
									          <input type="hidden" name="orisfno" value="${mysub.sfno}" />
									          <input type="hidden" name="subno" value="${mysub.subno}" />
									          
									          
									          <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="submit" class="btn btn-primary">수정</button>
										        <a href="<c:url value='/mysub/delete.do?subno=${mysub.subno}'/>"
													class="btn btn-danger">삭제</a>
										        
										      </div>
									          
									        </form>
									      </div>
									      
									    </div>
									  </div>
									</div>
								      <!-- modal 끝 -->
								  
								  
								    <li class="list-group-item">${mysub.paymentday}</li>
								    <li class="list-group-item">${mysub.money}원</li>
								  </ul>
								</c:if>
								<!-- 여기까지 -->
								
								
								
							</div>
							
						</c:forEach>
					</c:if>
					
					
					
					
					
					<!-- 실험중 -->
					
		<c:if test="${empty folder.mysubs}">
					<!-- lecture sub list -->
		<!-- <div class="container"> -->
		<h2 class="nino-sectionHeading"></h2>
			<h2 class="nino-sectionHeading">
			<p class="nino-sectionDesc">등록된 구독서비스가 없습니다</p>
				<span class="nino-subHeading">추천 구독서비스들을 먼저 만나보세요</span>
				
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
							<a class="overlay"  href="https://digital.mk.co.kr/intro/intro.php" target="_blank">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									매경e신문
								</span>
								<img src="<%=request.getContextPath()%>/resources/images_sub/lecture/008_meailnews.png" alt="">
							</a>
						</div>
					</div>
					
					
					
				</div>
			</div>		
		
					<!-- </div> -->
					
					</c:if>
			
					
					<!-- 실험중 -->
					
						
					</div>
				</div>
		</div>
		
		
		
		<div class="row col-sm-1">
			
				<div class="col-sm-3 col-md-offset-11">
				<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#mdlNwSub1" style="background-color:#5BC0DE; color: white; font-family: 'Gugi', sans-serif;"><strong>+ New</strong></button>
				<!-- 사용자 등록 Modal -->
				<div class="modal" id="mdlNwSub1" tabindex="-1" role="dialog" aria-labelledby="mdlNwSubLabel" aria-hidden="true">
				  	  <div class="modal-dialog">  
		<!--		    <div class="modal-content">   -->
						<div class="row modal-backdrop">
					        <button type="button" class=" mdlbtnAuto col-md-6 btn-lg" onclick = "location.href = 'myAccounts.do'" ><span class="glyphicon glyphicon-sunglasses" aria-hidden="true"></span>
					        <h3>Auto</h3></button>
					        <button type="button" class=" mdlbtnManual col-md-6 btn-lg" data-toggle="modal" data-dismiss="modal" data-target="#mdlNwSub2" ><span class="glyphicon glyphicon-grain" aria-hidden="true"></span>
					        <h3>Manual</h3></button>

				      	</div>
		<!--		    </div>-->						
					  </div>   
				</div>
				
				<!-- Modal -->
				<div class="modal" id="mdlNwSub2" tabindex="-1" role="dialog" aria-labelledby="mdlNwSubLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="mdlNwSubLabel">구독 서비스 등록</h4>
				      </div>
				      <div class="modal-body">
					      	<form name="insertForm" onsubmit="return checkAll()" action="<c:url value='/manual.do'/>" method="post" >
					          <div class="form-group" style="padding-left: 165px;">
					            <img src="..." alt="alt:로고이미지" class="img-thumbnail" style="display: none;"> <!-- visibility: hidden; --> <!-- id="subLogo" -->
					          </div>
					         
					          <div class="form-group">
					            <label for="recipient-name" class="control-label">구독서비스명</label>
					            <input type="text" class="form-control" id="subName" name="subservice" value="" style="width:450px;display: inline-block;">
					            
					            <!-- 구독 리스트 클릭 버튼 -->
					            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn"/>
					            
					            
					            
					             <!-- 구독 리스트 -->
					            <div class="list-group" id="subListKsy"> 
					            	<!-- 미디어 리스트 -->
					            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">넷플릭스</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">닌텐도스위치</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">디즈니+</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">멜론</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">벅스</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">스포티비나우</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">아이클라우드</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">유튜브프리미엄</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">애플뮤직</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">왓챠</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">웨이브</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">티빙</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">플로</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">플레이스테이션</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<!-- 라이프 스타일 리스트 -->
									<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">카카오이모티콘+</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">꾸까</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">네이버+</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">더반찬</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">런드리고</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">쏘카</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">와이즐리</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">월간과자</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">위클리 셔츠</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">잡플래닛</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">쿠팡 와우</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">필리</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">하비인더박스</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">해피문데이</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<!-- 렉쳐 리스트 -->
									<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">BBC사이언스</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">리디셀렉트</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">밀리의 서재</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">매경e신문</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">빅이슈</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">예스24북클럽</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">윌라</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">조인스 프라임</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">퍼블리</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">핀즐</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<!-- 기타 리스트 -->
									<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
									<a href="#" class="list-group-item subServiceListSelf"><span>직접 입력하기</span></a>
									
								</div> 

								
					          </div>
					          <div class="form-group">
					            <label for="recipient-name" class="control-label">결제일</label>
					            <input type="text" class="form-control" id="datepicker" name="paymentday">
					          </div>
					          <div class="form-group">
					            <label for="recipient-name" class="control-label">월 구독료</label>
					            <input type="text" class="form-control" id="subPay" name="money">
					          </div>
					          
					          <div>
					          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
						          	<select class="form-control" name="folderSelect">
									  <option value="Watch">Watch</option>
									  <option value="Life">Life</option>
									</select>
					          </div>
					          
					          <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
						        <button type="submit" class="btn btn-primary">등록</button>
						      </div>
					          
					        </form>
				      </div>
				      
				      
				    </div>
				  </div>
				</div>
				<!-- 모달끝 -->
				
				
				</div>
				
				
			</div>
		</div> <!-- row 꽉차면내려간다? -->
		
		<%-- <div class="row">
							  <div class="col-sm-6 col-md-4">
							    <div class="thumbnail">
							      <img src="<%=request.getContextPath()%>/resources/images_sub/media/010_melon.png" alt="로고이미지">
							      <div class="caption">
							        <h3>멜론</h3>
							        <p>...</p>
							        <p><a href="#" class="btn btn-primary" role="button">수정</a> <a href="#" class="btn btn-default" role="button">삭제</a></p>
							      </div>
							    </div>
							  </div>
						  </div>
						  <div class="row">
							  <div class="col-sm-6 col-md-4">
							    <div class="thumbnail">
							      <img src="<%=request.getContextPath()%>/resources/images_sub/logo_horizontal/kukka.png" alt="로고이미지">
							      <div class="caption">
							        <h3>Thumbnail label</h3>
							        <p>...</p>
							        <p><a href="#" class="btn btn-primary" role="button">수정</a> <a href="#" class="btn btn-default" role="button">삭제</a></p>
							      </div>
							    </div>
							  </div>
		</div> --%>
		
		
	</div>
</div>



<!-- 구독 서비스 상세보기 Modal(넷플릭스) -->
<div class="modal" id="modalSeeMore" tabindex="-1" role="dialog" aria-labelledby="mdlNwSubLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" id="modalSeeMoreClose" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="modalSeeMoreSubName"></h4>
			</div>
			<div class="modal-body" >
				<div id="modalSeeMoreImg">
					<img src="<%=request.getContextPath()%>/resources/images_sub/media/003_netflix.jpeg" alt="" id="modalSeeMoreInfoImg">
				</div>
				<div id="modalSeeMoreIntro">
					<div id="modalSeeMoreMoney">구독료</div><div id="modalSeeMoreInfoMoney"></div>
					<div id="modalSeeMoreExplain">소개</div><div id="modalSeeMoreInfoExplain"></div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="modalSeeMoreDefault" class="btn btn-default" data-dismiss="modal">돌아가기</button>
				<button type="button" id="modalSeeMorePrimary" class="btn btn-primary"><a href="https://www.netflix.com/kr/" target='_blank' id="modalSeeMoreInfoForward">구독하기</a></button>
			</div>
		</div>
	</div>
</div>




<script>
	//insert시 유효성검사
	// 공백확인 함수
    function checkExistData(value, dataName) {
        if (value == "") {
            alert(dataName + " 입력해주세요!");
            return false;
        }
        return true;
    }
	//form의 모든 내용을 각각의 형식(정규표현식)에 맞게 검사하는 유효성검사함수 호출
	function checkAll() {
        if (!checksubName(insertForm.subservice.value)) {
            return false;
        }
        if (!checkPayDay(insertForm.paymentday.value)) {
            return false;
        }
        if (!checkMoney(insertForm.money.value)) {
            return false;
        }
 
        return true;
    }//checkAll

    function checksubName(subNameValue) {
        //구독서비스명 유효성
        if (!checkExistData(subNameValue, "등록할 구독서비스명을"))
            return false;
 
        var subNameRegExp = /^[가-힣a-zA-z0-9\s_+.-]{2,12}$/; //구독서비스명 유효성 검사:	한글/영문/띄워쓰기/특수문자 가능, 2자~12자
        if (!subNameRegExp.test(subNameValue)) {
            alert("구독서비스명은 영문/한글/숫자 입력이 가능하며, 반드시 2~12자 이내로 입력하셔야 합니다");
            insertForm.subservice.value = "";
            insertForm.subservice.focus();
            return false;
        }
        return true; //확인이 완료되었을 때
    }
    function checkPayDay(payDayValue) {
        //결제일 유효성
        if (!checkExistData(payDayValue, "결제일을"))
            return false;
 
        var payDayRegExp = /^(((20\d{2})(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[0-1])))|((20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1]))$/; //결제일 유효성 검사: 20xx년~ (20\d{2}[0-9]{4})
        if (!payDayRegExp.test(payDayValue)) {
            alert("올바른 날짜 형식이 아닙니다 (ex. 20210101 혹은 2021-01-01의 형식으로 입력해주세요)");
            insertForm.paymentday.value = "";
            insertForm.paymentday.focus();
            return false;
        }
        return true; //확인이 완료되었을 때
    }
    function checkMoney(moneyValue) {
        //구독료 유효성
        if (!checkExistData(moneyValue, "구독료를"))
            return false;
 
        var moneyRegExp = /^[0-9]{2,7}$/; //구독료 유효성 검사: 숫자만
        if (!moneyRegExp.test(moneyValue)) {
            alert("숫자만 입력해주세요( (ex. 15000))");
            insertForm.money.value = "";
            insertForm.money.focus();
            return false;
        }
        return true; //확인이 완료되었을 때
    }

	//sortable 적용해보기
	$( "#sortable" ).sortable();

	//데이트피커
	$("#datepicker").datepicker();
	$("#datepicker").datepicker("option", "dateFormat", "yy-mm-dd");
	//멜론 데이트피커
	$("#datepicker2").datepicker();
	$("#datepicker2").datepicker("option", "dateFormat", "yy-mm-dd");
	//nextflix 데이트피커
	$("#datepicker3").datepicker();
	$("#datepicker3").datepicker("option", "dateFormat", "yy-mm-dd");
	//wave 데이트피커
	$("#datepicker4").datepicker();
	$("#datepicker4").datepicker("option", "dateFormat", "yy-mm-dd");
	//disney 데이트피커
	$("#datepicker5").datepicker();
	$("#datepicker5").datepicker("option", "dateFormat", "yy-mm-dd");
	//월간과자 데이트피커
	$("#datepicker6").datepicker();
	$("#datepicker6").datepicker("option", "dateFormat", "yy-mm-dd");
	//닌텐도스위치 데이트피커
	$("#datepicker7").datepicker();
	$("#datepicker7").datepicker("option", "dateFormat", "yy-mm-dd");
	//벅스 데이트피커
	$("#datepicker8").datepicker();
	$("#datepicker8").datepicker("option", "dateFormat", "yy-mm-dd");
	//스포티비나우 데이트피커
	$("#datepicker9").datepicker();
	$("#datepicker9").datepicker("option", "dateFormat", "yy-mm-dd");
	//아이클라우드 데이트피커
	$("#datepicker10").datepicker();
	$("#datepicker10").datepicker("option", "dateFormat", "yy-mm-dd");
	//유튜브프리미엄 데이트피커
	$("#datepicker11").datepicker();
	$("#datepicker11").datepicker("option", "dateFormat", "yy-mm-dd");
	//애플뮤직 데이트피커
	$("#datepicker12").datepicker();
	$("#datepicker12").datepicker("option", "dateFormat", "yy-mm-dd");
	//카카오이모티콘 데이트피커
	$("#datepicker13").datepicker();
	$("#datepicker13").datepicker("option", "dateFormat", "yy-mm-dd");
	//꾸까 데이트피커
	$("#datepicker14").datepicker();
	$("#datepicker14").datepicker("option", "dateFormat", "yy-mm-dd");
	//네이버 데이트피커
	$("#datepicker15").datepicker();
	$("#datepicker15").datepicker("option", "dateFormat", "yy-mm-dd");
	//더반찬 데이트피커
	$("#datepicker16").datepicker();
	$("#datepicker16").datepicker("option", "dateFormat", "yy-mm-dd");
	//런드릐고 데이트피커
	$("#datepicker17").datepicker();
	$("#datepicker17").datepicker("option", "dateFormat", "yy-mm-dd");
	//BBC사이언스 데이트피커
	$("#datepicker18").datepicker();
	$("#datepicker18").datepicker("option", "dateFormat", "yy-mm-dd");
	//리디셀렉트 데이트피커
	$("#datepicker19").datepicker();
	$("#datepicker19").datepicker("option", "dateFormat", "yy-mm-dd");
	//밀리의 서재 데이트피커
	$("#datepicker20").datepicker();
	$("#datepicker20").datepicker("option", "dateFormat", "yy-mm-dd");
	//매경e신문 데이트피커
	$("#datepicker21").datepicker();
	$("#datepicker21").datepicker("option", "dateFormat", "yy-mm-dd");	
	//빅이슈 데이트피커
	$("#datepicker22").datepicker();
	$("#datepicker22").datepicker("option", "dateFormat", "yy-mm-dd");	
	//예스24북클럽 데이트피커
	$("#datepicker23").datepicker();
	$("#datepicker23").datepicker("option", "dateFormat", "yy-mm-dd");
	//왓챠 데이트피커
	$("#datepicker24").datepicker();
	$("#datepicker24").datepicker("option", "dateFormat", "yy-mm-dd");
	//티빙 데이트피커
	$("#datepicker25").datepicker();
	$("#datepicker25").datepicker("option", "dateFormat", "yy-mm-dd");
	//플로 데이트피커
	$("#datepicker26").datepicker();
	$("#datepicker26").datepicker("option", "dateFormat", "yy-mm-dd");
	//플레이스테이션 데이트피커
	$("#datepicker27").datepicker();
	$("#datepicker27").datepicker("option", "dateFormat", "yy-mm-dd");
	//쏘카 데이트피커
	$("#datepicker28").datepicker();
	$("#datepicker28").datepicker("option", "dateFormat", "yy-mm-dd");
	//와이즐리 데이트피커
	$("#datepicker29").datepicker();
	$("#datepicker29").datepicker("option", "dateFormat", "yy-mm-dd");
	//위클리셔츠 데이트피커
	$("#datepicker30").datepicker();
	$("#datepicker30").datepicker("option", "dateFormat", "yy-mm-dd");
	//잡플래닛 데이트피커
	$("#datepicker31").datepicker();
	$("#datepicker31").datepicker("option", "dateFormat", "yy-mm-dd");
	//쿠팡와우 데이트피커
	$("#datepicker32").datepicker();
	$("#datepicker32").datepicker("option", "dateFormat", "yy-mm-dd");
	//필리 데이트피커
	$("#datepicker33").datepicker();
	$("#datepicker33").datepicker("option", "dateFormat", "yy-mm-dd");
	//하비인더박스 데이트피커
	$("#datepicker34").datepicker();
	$("#datepicker34").datepicker("option", "dateFormat", "yy-mm-dd");
	//해피문데이 데이트피커
	$("#datepicker35").datepicker();
	$("#datepicker35").datepicker("option", "dateFormat", "yy-mm-dd");
	//윌라 데이트피커
	$("#datepicker36").datepicker();
	$("#datepicker36").datepicker("option", "dateFormat", "yy-mm-dd");
	//조인스프라임 데이트피커
	$("#datepicker37").datepicker();
	$("#datepicker37").datepicker("option", "dateFormat", "yy-mm-dd");
	//퍼블리 데이트피커
	$("#datepicker38").datepicker();
	$("#datepicker38").datepicker("option", "dateFormat", "yy-mm-dd");
	//핀즐 데이트피커
	$("#datepicker39").datepicker();
	$("#datepicker39").datepicker("option", "dateFormat", "yy-mm-dd");
	
	
	
	// 생성폴더 옵션아이템 호버:보이기/숨기기
	$('#dFolder2').hover(function() {
		$('#hvDotDFolder2').css("visibility", "visible");

	}, function() {
		$('#hvDotDFolder2').css("visibility", "hidden");
	});
	$('#dFolder3').hover(function() {
		$('#hvDotDFolder3').css("visibility", "visible");
	}, function() {
		$('#hvDotDFolder3').css("visibility", "hidden");
	});
	$('#hidFldr1').hover(function() {
		$('#hvDotHFolder1').css("visibility", "visible");
	}, function() {
		$('#hvDotHFolder1').css("visibility", "hidden");
	});
	$('#hidFldr2').hover(function() {
		$('#hvDotHFolder2').css("visibility", "visible");
	}, function() {
		$('#hvDotHFolder2').css("visibility", "hidden");
	});
	$('#hidFldr3').hover(function() {
		$('#hvDotHFolder3').css("visibility", "visible");
	}, function() {
		$('#hvDotHFolder3').css("visibility", "hidden");
	});
	$('#hidFldr4').hover(function() {
		$('#hvDotHFolder4').css("visibility", "visible");
	}, function() {
		$('#hvDotHFolder4').css("visibility", "hidden");
	});
	$('#hidFldr5').hover(function() {
		$('#hvDotHFolder5').css("visibility", "visible");
	}, function() {
		$('#hvDotHFolder5').css("visibility", "hidden");
	});
	//
	$('#hvDotDFolder2').click(function() {
		$('#btnDFolder2').toggle();
	});
	$('#hvDotDFolder3').click(function() {
		$('#btnDFolder3').toggle();
	});
	$('#hvDotHFolder1').click(function() {
		$('#btnHidFldr1').toggle();
	});
	$('#hvDotHFolder2').click(function() {
		$('#btnHidFldr2').toggle();
	});
	$('#hvDotHFolder3').click(function() {
		$('#btnHidFldr3').toggle();
	});
	$('#hvDotHFolder4').click(function() {
		$('#btnHidFldr4').toggle();
	});
	$('#hvDotHFolder5').click(function() {
		$('#btnHidFldr5').toggle();
	});

	//1번 폴더명수정
	//2) span태그(기존이름)가 사라지고 input태그가 생긴다. (그와 동시에 커서도 input태그에)
	$('#btnEdit1').click(function() {
		$('#dfdn1').css("display", "none");
		$('#inp1').css("display", "inline");
		$('#inp1').focus();
	});//$('#btnEdit1').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp1')을 누르면
	$('#btnComp1').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder1.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname1').serialize(),
			success : function(data2) {
				// input태그는 사라진다.
				$('#inp1').css("display", "none");
				// span태그를 보인다
				$('#dfdn1').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력 
				console.log('서버로부터 받은 데이터:', data2);
				$('#dfdn1').html(data2);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//1번 폴더명 수정 끝
	//
	//2번 폴더명수정
	//2) span태그(기존이름)가 사라지고 input태그가 생긴다. (그와 동시에 커서도 input태그에)
	$('#btnEdit2').click(function() {
		$('#dfdn2').css("display", "none");
		$('#inp2').css("display", "inline");
		$('#inp2').focus();
	});//$('#btnEdit1').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp2')을 누르면
	$('#btnComp2').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder2.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname2').serialize(),
			success : function(data3) {
				// input태그는 사라진다.
				$('#inp2').css("display", "none");
				// span태그를 보인다
				$('#dfdn2').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력
				console.log('서버로부터 받은 데이터:', data3);
				$('#dfdn2').text(data3);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//2번 폴더명수정 끝
	//
	//3번 폴더명수정
	//2) span태그(기존이름)가 사라지고 input태그가 생긴다. (그와 동시에 커서도 input태그에)
	$('#btnEdit3').click(function() {
		$('#firF').css("display", "none");
		$('#inp3').css("display", "inline");
		$('#inp3').focus();
	});//$('#btnEdit3').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
	$('#btnComp3').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder3.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname3').serialize(),
			success : function(data4) {
				// input태그는 사라진다.
				$('#inp3').css("display", "none");
				// span태그를 보인다
				$('#firF').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력
				console.log('서버로부터 받은 데이터:', data4);
				$('#firF').text(data4);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//3번 폴더명수정 끝
	//
	//4번 폴더명수정
	$('#btnEdit4').click(function() {
		$('#secF').css("display", "none");
		$('#inp4').css("display", "inline");
		$('#inp4').focus();
	});//$('#btnEdit4').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
	$('#btnComp4').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder4.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname4').serialize(),
			success : function(data5) {
				// input태그는 사라진다.
				$('#inp4').css("display", "none");
				// span태그를 보인다
				$('#secF').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력
				console.log('서버로부터 받은 데이터:', data5);
				$('#secF').text(data5);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//4번 폴더명수정 끝
	//
	//5번 폴더명수정
	$('#btnEdit5').click(function() {
		$('#thrF').css("display", "none");
		$('#inp5').css("display", "inline");
		$('#inp5').focus();
	});//$('#btnEdit5').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
	$('#btnComp5').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder5.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname5').serialize(),
			success : function(data6) {
				// input태그는 사라진다.
				$('#inp5').css("display", "none");
				// span태그를 보인다
				$('#thrF').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력
				console.log('서버로부터 받은 데이터:', data6);
				$('#thrF').text(data6);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//5번 폴더명수정 끝
	//
	//6번 폴더명수정
	$('#btnEdit6').click(function() {
		$('#forF').css("display", "none");
		$('#inp6').css("display", "inline");
		$('#inp6').focus();
	});//$('#btnEdit6').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
	$('#btnComp6').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder6.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname6').serialize(),
			success : function(data7) {
				// input태그는 사라진다.
				$('#inp6').css("display", "none");
				// span태그를 보인다
				$('#forF').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력
				console.log('서버로부터 받은 데이터:', data7);
				$('#forF').text(data7);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//6번 폴더명수정 끝
	//
	//6번 폴더명수정
	$('#btnEdit7').click(function() {
		$('#fifF').css("display", "none");
		$('#inp7').css("display", "inline");
		$('#inp7').focus();
	});//$('#btnEdit7').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
	$('#btnComp7').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder7.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname7').serialize(),
			success : function(data8) {
				// input태그는 사라진다.
				$('#inp7').css("display", "none");
				// span태그를 보인다
				$('#fifF').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력
				console.log('서버로부터 받은 데이터:', data8);
				$('#fifF').text(data8);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//7번 폴더명수정 끝

	
	//구독 목록 버튼 클릭시 리스트 div 
	var subListbtn = false;
	
	$('#subListbtn').click(function() {
		if (!subListbtn) {
			$('#subListKsy').css("display", "block");
			subListbtn = true;
		} else{
			$('#subListKsy').css("display", "none");
			subListbtn = false;
		}
	});//
	//edit 멜론 동작
	var subListbtn2 = false;
	
	$('#subListbtn2').click(function() {
		if (!subListbtn2) {
			$('#subListKsy2').css("display", "block");
			subListbtn2 = true;
		} else{
			$('#subListKsy2').css("display", "none");
			subListbtn2 = false;
		}
	});//
	//edit 넷플릭스 동작
	var subListbtn3 = false;
	
	$('#subListbtn3').click(function() {
		if (!subListbtn3) {
			$('#subListKsy3').css("display", "block");
			subListbtn3 = true;
		} else{
			$('#subListKsy3').css("display", "none");
			subListbtn3 = false;
		}
	});//
	//edit 웨이브 동작
	var subListbtn4 = false;
	
	$('#subListbtn4').click(function() {
		if (!subListbtn4) {
			$('#subListKsy4').css("display", "block");
			subListbtn4 = true;
		} else{
			$('#subListKsy4').css("display", "none");
			subListbtn4 = false;
		}
	});//
	//edit 디즈니+ 동작
	var subListbtn5 = false;
	
	$('#subListbtn5').click(function() {
		if (!subListbtn5) {
			$('#subListKsy5').css("display", "block");
			subListbtn5 = true;
		} else{
			$('#subListKsy5').css("display", "none");
			subListbtn5 = false;
		}
	});//
	//edit 월간과자 동작
	var subListbtn6 = false;
	
	$('#subListbtn6').click(function() {
		if (!subListbtn6) {
			$('#subListKsy6').css("display", "block");
			subListbtn6 = true;
		} else{
			$('#subListKsy6').css("display", "none");
			subListbtn6 = false;
		}
	});//
	//edit 닌텐도스위치 동작
	var subListbtn7 = false;
	
	$('#subListbtn7').click(function() {
		if (!subListbtn7) {
			$('#subListKsy7').css("display", "block");
			subListbtn7 = true;
		} else{
			$('#subListKsy7').css("display", "none");
			subListbtn7 = false;
		}
	});//
	//edit 벅스 동작
	var subListbtn8 = false;
	
	$('#subListbtn8').click(function() {
		if (!subListbtn8) {
			$('#subListKsy8').css("display", "block");
			subListbtn8 = true;
		} else{
			$('#subListKsy8').css("display", "none");
			subListbtn8 = false;
		}
	});//
	//edit 스포티비나우 동작
	var subListbtn9 = false;
	
	$('#subListbtn9').click(function() {
		if (!subListbtn9) {
			$('#subListKsy9').css("display", "block");
			subListbtn9 = true;
		} else{
			$('#subListKsy9').css("display", "none");
			subListbtn9 = false;
		}
	});//
	//edit 아이클라우드 동작
	var subListbtn10 = false;
	
	$('#subListbtn10').click(function() {
		if (!subListbtn10) {
			$('#subListKsy10').css("display", "block");
			subListbtn10 = true;
		} else{
			$('#subListKsy10').css("display", "none");
			subListbtn10 = false;
		}
	});//
	//edit 유튜브프리미엄 동작
	var subListbtn11 = false;
	
	$('#subListbtn11').click(function() {
		if (!subListbtn11) {
			$('#subListKsy11').css("display", "block");
			subListbtn11 = true;
		} else{
			$('#subListKsy11').css("display", "none");
			subListbtn11 = false;
		}
	});//
	//edit 애플뮤직 동작
	var subListbtn12 = false;
	
	$('#subListbtn12').click(function() {
		if (!subListbtn12) {
			$('#subListKsy12').css("display", "block");
			subListbtn12 = true;
		} else{
			$('#subListKsy12').css("display", "none");
			subListbtn12 = false;
		}
	});//
	//edit 카카오이모티콘 동작
	var subListbtn13 = false;
	
	$('#subListbtn13').click(function() {
		if (!subListbtn13) {
			$('#subListKsy13').css("display", "block");
			subListbtn13 = true;
		} else{
			$('#subListKsy13').css("display", "none");
			subListbtn13 = false;
		}
	});//
	//edit 꾸까 동작
	var subListbtn14 = false;
	
	$('#subListbtn14').click(function() {
		if (!subListbtn14) {
			$('#subListKsy14').css("display", "block");
			subListbtn14 = true;
		} else{
			$('#subListKsy14').css("display", "none");
			subListbtn14 = false;
		}
	});//
	//edit 네이버플러스 동작
	var subListbtn15 = false;
	
	$('#subListbtn15').click(function() {
		if (!subListbtn15) {
			$('#subListKsy15').css("display", "block");
			subListbtn15 = true;
		} else{
			$('#subListKsy15').css("display", "none");
			subListbtn15 = false;
		}
	});//
	//edit 더반찬 동작
	var subListbtn16 = false;
	
	$('#subListbtn16').click(function() {
		if (!subListbtn16) {
			$('#subListKsy16').css("display", "block");
			subListbtn16 = true;
		} else{
			$('#subListKsy16').css("display", "none");
			subListbtn16 = false;
		}
	});//
	//edit 런드리고 동작
	var subListbtn16 = false;
	
	$('#subListbtn17').click(function() {
		if (!subListbtn17) {
			$('#subListKsy17').css("display", "block");
			subListbtn17 = true;
		} else{
			$('#subListKsy17').css("display", "none");
			subListbtn17 = false;
		}
	});//
	//edit BBC사이언스 동작
	var subListbtn17 = false;
	
	$('#subListbtn18').click(function() {
		if (!subListbtn18) {
			$('#subListKsy18').css("display", "block");
			subListbtn18 = true;
		} else{
			$('#subListKsy18').css("display", "none");
			subListbtn18 = false;
		}
	});//
	//edit 리디셀렉트 동작
	var subListbtn18 = false;
	
	$('#subListbtn19').click(function() {
		if (!subListbtn19) {
			$('#subListKsy19').css("display", "block");
			subListbtn19 = true;
		} else{
			$('#subListKsy19').css("display", "none");
			subListbtn19 = false;
		}
	});//
	//edit 밀리의서재 동작
	var subListbtn19 = false;
	
	$('#subListbtn20').click(function() {
		if (!subListbtn20) {
			$('#subListKsy20').css("display", "block");
			subListbtn20 = true;
		} else{
			$('#subListKsy20').css("display", "none");
			subListbtn20 = false;
		}
	});//
	//edit 매경e신문 동작
	var subListbtn20 = false;
	
	$('#subListbtn21').click(function() {
		if (!subListbtn21) {
			$('#subListKsy21').css("display", "block");
			subListbtn21 = true;
		} else{
			$('#subListKsy21').css("display", "none");
			subListbtn21 = false;
		}
	});//
	//edit 빅이슈 동작
	var subListbtn21 = false;
	
	$('#subListbtn22').click(function() {
		if (!subListbtn22) {
			$('#subListKsy22').css("display", "block");
			subListbtn22 = true;
		} else{
			$('#subListKsy22').css("display", "none");
			subListbtn22 = false;
		}
	});//
	//edit 예스24북클럽 동작
	var subListbtn22 = false;
	
	$('#subListbtn23').click(function() {
		if (!subListbtn23) {
			$('#subListKsy23').css("display", "block");
			subListbtn23 = true;
		} else{
			$('#subListKsy23').css("display", "none");
			subListbtn23 = false;
		}
	});//
	//edit 왓챠 동작
	var subListbtn23 = false;
	
	$('#subListbtn24').click(function() {
		if (!subListbtn24) {
			$('#subListKsy24').css("display", "block");
			subListbtn24 = true;
		} else{
			$('#subListKsy24').css("display", "none");
			subListbtn24 = false;
		}
	});//
	//edit 티빙 동작
	var subListbtn24 = false;

	$('#subListbtn25').click(function() {
		if (!subListbtn25) {
			$('#subListKsy25').css("display", "block");
			subListbtn25 = true;
		} else{
			$('#subListKsy25').css("display", "none");
			subListbtn25 = false;
		}
	});//
	//edit 플로 동작
	var subListbtn25 = false;

	$('#subListbtn26').click(function() {
		if (!subListbtn26) {
			$('#subListKsy26').css("display", "block");
			subListbtn26 = true;
		} else{
			$('#subListKsy26').css("display", "none");
			subListbtn26 = false;
		}
	});//
	//edit 플레이스테이션 동작
	var subListbtn26 = false;

	$('#subListbtn27').click(function() {
		if (!subListbtn27) {
			$('#subListKsy27').css("display", "block");
			subListbtn27 = true;
		} else{
			$('#subListKsy27').css("display", "none");
			subListbtn27 = false;
		}
	});//
	//edit 쏘카 동작
	var subListbtn27 = false;

	$('#subListbtn28').click(function() {
		if (!subListbtn28) {
			$('#subListKsy28').css("display", "block");
			subListbtn28 = true;
		} else{
			$('#subListKsy28').css("display", "none");
			subListbtn28 = false;
		}
	});//
	//edit 와이즐리 동작
	var subListbtn28 = false;

	$('#subListbtn29').click(function() {
		if (!subListbtn29) {
			$('#subListKsy29').css("display", "block");
			subListbtn29 = true;
		} else{
			$('#subListKsy29').css("display", "none");
			subListbtn29 = false;
		}
	});//
	//edit 위클리셔츠 동작
	var subListbtn29 = false;

	$('#subListbtn30').click(function() {
		if (!subListbtn30) {
			$('#subListKsy30').css("display", "block");
			subListbtn30 = true;
		} else{
			$('#subListKsy30').css("display", "none");
			subListbtn30 = false;
		}
	});//
	//edit 잡플래닛 동작
	var subListbtn30 = false;

	$('#subListbtn31').click(function() {
		if (!subListbtn31) {
			$('#subListKsy31').css("display", "block");
			subListbtn31 = true;
		} else{
			$('#subListKsy31').css("display", "none");
			subListbtn31 = false;
		}
	});//
	//edit 쿠팡와우 동작
	var subListbtn31 = false;

	$('#subListbtn32').click(function() {
		if (!subListbtn32) {
			$('#subListKsy32').css("display", "block");
			subListbtn32 = true;
		} else{
			$('#subListKsy32').css("display", "none");
			subListbtn32 = false;
		}
	});//
	//edit 필리 동작
	var subListbtn32 = false;

	$('#subListbtn33').click(function() {
		if (!subListbtn33) {
			$('#subListKsy33').css("display", "block");
			subListbtn33 = true;
		} else{
			$('#subListKsy33').css("display", "none");
			subListbtn33 = false;
		}
	});//
	//edit 하비인더박스 동작
	var subListbtn33 = false;

	$('#subListbtn34').click(function() {
		if (!subListbtn34) {
			$('#subListKsy34').css("display", "block");
			subListbtn34 = true;
		} else{
			$('#subListKsy34').css("display", "none");
			subListbtn34 = false;
		}
	});//
	//edit 해피문데이 동작
	var subListbtn34 = false;

	$('#subListbtn35').click(function() {
		if (!subListbtn35) {
			$('#subListKsy35').css("display", "block");
			subListbtn35 = true;
		} else{
			$('#subListKsy35').css("display", "none");
			subListbtn35 = false;
		}
	});//
	//edit 윌라 동작
	var subListbtn35 = false;

	$('#subListbtn36').click(function() {
		if (!subListbtn36) {
			$('#subListKsy36').css("display", "block");
			subListbtn36 = true;
		} else{
			$('#subListKsy36').css("display", "none");
			subListbtn36 = false;
		}
	});//
	//edit 조인스프라임 동작
	var subListbtn36 = false;

	$('#subListbtn37').click(function() {
		if (!subListbtn37) {
			$('#subListKsy37').css("display", "block");
			subListbtn37 = true;
		} else{
			$('#subListKsy37').css("display", "none");
			subListbtn37 = false;
		}
	});//
	//edit 퍼블리 동작
	var subListbtn37 = false;

	$('#subListbtn38').click(function() {
		if (!subListbtn38) {
			$('#subListKsy38').css("display", "block");
			subListbtn38 = true;
		} else{
			$('#subListKsy38').css("display", "none");
			subListbtn38 = false;
		}
	});//
	//edit 핀즐 동작
	var subListbtn38 = false;

	$('#subListbtn39').click(function() {
		if (!subListbtn39) {
			$('#subListKsy39').css("display", "block");
			subListbtn39 = true;
		} else{
			$('#subListKsy39').css("display", "none");
			subListbtn39 = false;
		}
	});//
	
	
	
	
	
	//상세페이지 모달
	/*
		
		ott서비스 인당 가격별로 나눠야하나?
		위클리셔츠 삭제 다른거 추가
	*/
	var modalSeeMorebtn = false;
	var subObjectInfo = [
			['Netflix','<%=request.getContextPath()%>/resources/images_sub/media/003_netflix.jpeg','16,000원','넷플릭스는 각종 수상 경력에 빛나는 시리즈, 영화, 애니메이션, 다큐멘터리 등 다양한 콘텐츠를 인터넷 연결이 가능한 수천 종의 디바이스에서 시청할 수 있는 스트리밍 서비스입니다. 저렴한 월 요금으로 일체의 광고 없이 원하는 시간에 원하는 만큼 즐길 수 있습니다. 무궁무진한 콘텐츠가 준비되어 있으며 매주 새로운 시리즈와 영화가 제공됩니다.','https://www.netflix.com/kr/'],
			['Nintendo Switch','<%=request.getContextPath()%>/resources/images_sub/media/014_nintendo.png','4,000원','닌텐도 스위치는 거치용 게임기 및 휴대용 게임기로 스위치 콘솔과 스위치 독, 그리고 탈착 가능한 컨트롤러인 조이콘으로 나뉘어져 있다. 플레이어는 스위치를 스위치 독과 결합 후, TV나 모니터에 연결하여 대형화면에서 여러 명이 함께 플레이할 수 있다.','https://www.nintendo.co.kr/hardware/'],
			['Disney+','<%=request.getContextPath()%>/resources/images_sub/media/005_disney.png','8,000원','디즈니, 픽사, 마블, 스타워즈, 내셔널지오그래픽, Star의 콘텐츠를 다 함께 즐겨보세요. 인기 영화, 몰아보기 시리즈, 디즈니+와 Star에서 독점 공개하는 오리지널까지, 원하는 만큼 볼 수 있습니다. 완결 시리즈는 물론 오리지널 신작과 최신 히트작도 언제든지 시청하세요.','https://www.disneyplus.com/ko-kr'],
			['Melon','<%=request.getContextPath()%>/resources/images_sub/media/010_melon.png','7,000원','멜론은 대한민국의 유료 디지털 음원 스트리밍 서비스 사이트이며, 카카오엔터테인먼트 멜론컴퍼니에서 운영한다. 음악 차트 서비스 또한 제공하고 있다.','https://www.melon.com/'],
			['Bugs','<%=request.getContextPath()%>/resources/images_sub/media/011_bugs.png','7,000원','Bugs! 국내 최대 규모의 음원을차별화된 고음질로 다양한 플랫폼을 통해장소에 제약 없이 제공합니다. 우수한 음원을 발굴하고,체계적인 투자와 관리 시스템으로사업파트너에게 안정적인 비즈니스 환경을 제공합니다.','https://music.bugs.co.kr/'],
			['SpoTV Now','<%=request.getContextPath()%>/resources/images_sub/media/001_spotvnow.jpg','9,000원','SPOTV NOW는 SPOTV의 OTT 서비스이다. 주로 스포츠 콘텐츠를 중심으로 제공하고 있으며 카카오, 네이버, 페이스북을 포함해서 회원가입을 해야 이용이 가능하다. 스포티비 중계를 실시간 생중계 시청을 할 수 있는 플랫폼이다.','https://www.spotv.net/main.asp'],
			['iCloud','<%=request.getContextPath()%>/resources/images_sub/media/009_icloud.png','1,000원','iCloud는 자동으로 사진, 파일, 메모, 암호 및 기타 데이터를 클라우드에 안전하게 저장하고 모든 기기에 최신 상태로 유지하는 Apple의 서비스입니다. iCloud를 사용하여 iPhone, iPad 또는 iPod touch를 백업할 수도 있습니다.','https://www.icloud.com/'],
			['Youtube Premium','<%=request.getContextPath()%>/resources/images_sub/media/002_youtube.png','10,000원','YouTube Premium에 가입하면 동영상 오버레이 광고를 포함해 동영상 재생 전과 중간에 나오는 광고로 끊기거나 방해받지 않고 수백만 개의 동영상을 감상할 수 있습니다. ... 동영상과 재생목록을 오프라인 저장하여 인터넷에 연결되어 있지 않아도 오프라인으로 시청할 수 있습니다.','https://www.youtube.com/premium'],
			['Apple Music','<%=request.getContextPath()%>/resources/images_sub/media/015_AppleMusic.png','9,000원','무손실 오디오로 스트리밍하는 8천5백만 곡 이상의 음악. 추가 비용은 제로. 즐겨 듣는 음악 다운로드. 오프라인에서 재생. 3개월 무료 체험으로 Apple Music을 시작해 보세요.','https://www.apple.com/kr/apple-music/'],
			['Watcha','<%=request.getContextPath()%>/resources/images_sub/media/004_watcha.png','8,000원','왓챠는 모두의 다름이 인정받고 개인의 취향이 존중받는, 더 다양한 세상을 만드는 회사입니다. 모든 영화, 드라마, 다큐멘터리, 애니메이션을 언제 어디서나 최고의 화질로 무제한 감상하세요.','https://watcha.com/'],
			['Wavve','<%=request.getContextPath()%>/resources/images_sub/media/007_wave.png','8,000원','웨이브 (wavve) 재미의 파도를타다! 웨이브(WAVVE)는 푹과 OKSUSU가 설립·통합되어 SK텔레콤과 지상파 방송3사가 합작 운영하는 인터넷 기반 OTT 서비스이다. 현재 JTBC 계열사 채널들에 한하여 실시간 방송을 중계하지 않는다.','https://www.wavve.com/index.html'],
			['Tving','<%=request.getContextPath()%>/resources/images_sub/media/006_tving.png','8,000원','티빙(TVING)은 CJ ENM으로부터 독립하여 2020년 10월 1일 설립된 CJ 계열의 OTT 회사이다. TVING은 CJ ENM, JTBC를 포함한 인기 채널의 실시간TV, 방송 다시보기,국내외 영화 및 디지털콘텐츠 뿐만 아니라 키즈, 커머스 등 다양한 콘텐츠를 제공하고 있습니다. 또한, 모바일, PC와 스마트TV까지 다양한 환경에서 서비스를 자유롭게 이용할 수 있습니다.','https://www.tving.com/'],
			['Flo','<%=request.getContextPath()%>/resources/images_sub/media/008_flo_e.png','7,000원','플로는 이용자가 인기 차트에서 탈피해 자신만의 음악 취향을 발견할 수 있도록 돕습니다. 이용자들의 감상 음악 리스트와 좋아요 이력 등을 바탕으로 새로운 음악을 끊임없이 추천합니다. 데이터가 축적돼 이용하면 할수록 내 취향에 맞는 음악을 발견할 확률이 높아집니다.','https://www.music-flo.com/'],
			['Playstation','<%=request.getContextPath()%>/resources/images_sub/media/012_playstation.jpg','4,000원','소니 인터랙티브 엔터테인먼트의 콘솔 게임기 브랜드이며, 저장된 게임 진행 내역이 모두 콘솔에 저장되어 언제든 게임을 재설치하면 그만둔 부분부터 다시 플레이할 수 있습니다. ','https://www.playstation.com/ko-kr/'],
			
			['카카오 이모티콘+','<%=request.getContextPath()%>/resources/images_sub/lifestyle/014_kakaoplus.jpg','2,500원','갖고 싶던 수많은 이모티콘을 마음껏 즐겨요! 인기 아이템부터 최신 아이템까지 다양한 이모티콘을 마음껏 톡 해보세요! 자동 추천기능으로 더 빠르게! 센스는 타이밍! 메시지를 톡에 입력하면 자동으로 이모티콘을 추천해드려요! 두근두근 랜덤 이모티콘 추천기능으로 즐거움까지!','https://e.kakao.com/plus_info'],
			['꾸까','<%=request.getContextPath()%>/resources/images_sub/lifestyle/007_kukka.png','18,000원','꾸까(kukka)는 꽃이 주는 행복을 누구나 누릴 수 있도록, 일상에서 쉽게 꽃을 즐기는 문화를 꿈꾸는 플라워테크 스타트업입니다. 플라워 커머스 "꾸까"는 국내 최초로 꽃 정기구독 서비스를 선보여 2주 간격으로 직접 디자인하고 생산한 꽃을 주기적으로 배송하고 있습니다. 꽃을 안정적이고 저렴하게 공급하고, 주기적인 수요를 통해 일상에서 쉽게 꽃을 즐기는 문화를 만들어가고 있습니다.','https://kukka.kr'],
			['네이버+','<%=request.getContextPath()%>/resources/images_sub/lifestyle/008_naverplus.png','5,000원','네이버플러스 멤버십은 네이버에서 2020년 6월 출시한 구독형 서비스입니다. 네이버 멤버십 회원에 가입하면 네이버페이 결제액의 최대 5%까지 적립받을 수 있고(My단골, 특가할인 등과 중복 적용) 또한 티빙 방송 무제한 이용권, 웹툰 49개, 영화 1편 할인 쿠폰, 시리즈온 영화 무제한 이용권, SPOTV NOW, 콘텐츠 체험팩 6종에서 하나를 선택하여 이용할 수 있습니다.','https://nid.naver.com/membership/join'],
			['더 반찬','<%=request.getContextPath()%>/resources/images_sub/lifestyle/016_thebanchan.jpg','28,000원','더 반찬은 매번 다른 메뉴를 정기 구독할 수 있는 서비스입니다. 넉넉하고 푸짐한 양, 한달 내 원하는 날짜에 무료배송, 셰프의 손으로 직접 요리, 깨끗한 위생의 원칙을 지켜 반찬 정기 구독 서비스를 시행하고 있습니다.','https://www.thebanchan.co.kr/main/initMain.action'],
			['런드리고','<%=request.getContextPath()%>/resources/images_sub/lifestyle/003_laundrygo.png','65,000원','런드리고는 자체 개발한 스마트 빨래 수거함(런드렛)에 세탁물을 담아 당일 밤 12시까지 맡기면, 익일 밤 12시까지 하루 만에 완료해 다시 문 앞에 배송해주는 모바일 세탁 서비스입니다. 천연 세제와 스마트팩토리로 완성하는 세탁퀄리티, 비대면 한밤배송 서비스와 합리적인 가격을 제공하고 있습니다.','https://www.laundrygo.com/brand'],
			['SOCAR','<%=request.getContextPath()%>/resources/images_sub/lifestyle/009_socar.png','3,000원','쏘카는 자동차라는 수단을 넘어 이동에 대한 사람들의 오랜 바람을 다시 떠올립니다. 내가 원할 때, 어디서나, 편리하고 안전하게 이동하고 싶다는 마음. 우리는 차를 소유하며 당연하게 여겨온 불편함과 비효율을 줄이고, 기술과 데이터로 더 나은 이동 방식을 제시하겠습니다.','https://www.socar.kr/company'],
			['Wisely','<%=request.getContextPath()%>/resources/images_sub/lifestyle/006_wisely.png','9,000원','국내 1위 면도기 구독 서비스! 와이즐리컴퍼니는 면도기 브랜드 "WISELY" 이후, 스킨케어 브랜드 "OPENWORK", 두피케어 브랜드 "HEADWORKS", 그리고 건강기능식품 브랜드 "HABITUAL" 을 출시하여 다양한 생활 소비재 시장에서 좋은 제품을 정직한 가격에 전하고 있습니다.','https://wisely.wiselycompany.com/'],
			['월간 과자','<%=request.getContextPath()%>/resources/images_sub/lifestyle/017_monthlysnack.png','10,000원','월간과자는 롯데제과가 지난해 6월 업계 최초로 선보인 과자 구독 서비스로, 월 9900원 또는 1만9800원을 내면 과자가 담긴 박스가 집으로 배송된다. 롯데제과 공식 온라인몰에서도 유통기한이 3개월여 남은 제품의 유통기한을 밝히고 최대 70%까지 할인 판매 중이다.','https://lottesweetmall.com/product/detail_subscribe.html?product_no=499'],
			['위클리 셔츠','<%=request.getContextPath()%>/resources/images_sub/lifestyle/011_weeklyshirts.png','50,000원','위클리셔츠는 지난 해 10월 “입기만 하면 되는 셔츠”라는 슬로건을 내걸고 야심차게 출범한 스타트업 기업이다. 위클리셔츠를 이용하는 방법은 간단하다. 원하는 셔츠 스타일과 일주일에 받고 싶은 셔츠의 양을 선택한 뒤, 주문을 하고 결제를 하면 지정한 장소로 셔츠를 배송해준다.',''],
			['잡플래닛','<%=request.getContextPath()%>/resources/images_sub/lifestyle/015_jobplanet.jpg','12,000원','대기업에서부터 스타트업까지! 기업의 복지 및 급여, 승진기회 및 가능성, 업무와 삶의 균형, 사내문화, 경영진, 총 만족도, 베스트 연봉정보 등 후기를 통한 살아있는 정보를 얻을 수 있는 서비스입니다. 월간 구독으로 모든 정보를 열람할 수 있습니다.','https://www.jobplanet.co.kr/welcome/index'],
			['쿠팡 와우','<%=request.getContextPath()%>/resources/images_sub/lifestyle/018_coupang.png','4,000원','와우 멤버십 회원은 쿠팡 내 무제한 무료 배송·반품과 자정까지 신선식품을 주문하면 다음날 새벽에 받아볼 수 있는 "로켓프레시", "로켓직구" 무료배송, 온라인동영상서비스(OTT) "쿠팡플레이" 등 서비스를 사용할 수 있다. 인상된 멤버십 가격은 지난달 30일부터 신규 회원에게 적용된다.','https://www.coupang.com/'],
			['Pilly','<%=request.getContextPath()%>/resources/images_sub/lifestyle/004_pilly2.png','14,000원','맞춤영양제 정기구독 서비스 필리를 운영중인 케어위드는 <모두가 건강한 삶을 유지하도록 돕는다.>는 비전을 가지고 출발한 헬스케어 스타트업입니다. 필리의 일은 "영양제 판매"가 아닌 올바른 영양성분 섭취를 통해 건강한 생활을 유지할 수 있도록 돕는 것입니다. 필리는 이런 어려움을 해소하기 위해 영양성분을 추천하고, 용량이 넘치거나 부족하지 않도록 믿을 수 있는 제품을 만들고, 섭취 관리 서비스 "필리케어"를 제공합니다.','https://pilly.kr/'],
			['Hobby in the Box','<%=request.getContextPath()%>/resources/images_sub/lifestyle/011_hobbyinthebox.png','40,000원','인터넷에 떠도는 수많은 취미들,나도 한 번쯤 해보고 싶은데 배워보기에도, 재료를 사러가기에도 시간이 부담된다면,혹은 아직 내가 어떤걸 좋아하는 지 몰라 찾고싶다면,취미 정기배송 와 함께 하세요.매월 새로운 취미가 집에서 바로 즐길 수 있도록 구성되어 배송됩니다.세상의 흥미로운 취미들을 연구하고 선별하고 소개하고 전달할게요.','https://hobbyinthebox.co.kr/'],
			['해피 문데이','<%=request.getContextPath()%>/resources/images_sub/lifestyle/005_happymoonday.png','7,000원','해피문데이는 여성건강을 생각한 유기농 생리대와 탐폰을 만들고 배송합니다.','https://happymoonday.com/'],
			
			['BBC Science','<%=request.getContextPath()%>/resources/images_sub/lecture/010_bbc.png','13,000원','과학이 재미없는 아이들에게, 과학이 지루하고 멀게만 느껴지는 사람들에게 BBC 사이언스는 흥미로운 기사, 기상천외한 질문과 답변으로 다가갑니다.','https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=283947105'],
			['리디 셀렉트','<%=request.getContextPath()%>/resources/images_sub/lecture/032_ridiselect.png','5,000원','리디셀렉트란 리디북스에서 진행하고 있는 월단위 이북 대여 서비스이며 매달 정기구독으로 리디북스에서 선정한 책들을 무료로 읽어볼 수 있는 서비스입니다.','https://select.ridibooks.com/home'],
			['밀리의 서재','<%=request.getContextPath()%>/resources/images_sub/lecture/028_millie.png','10,000원','밀리의 서재는 독서로 더 가치 있는 일상을 만듭니다. 한 달 동안 읽는 책은 평균 7.78권! 모든 사람의 취향을 만족시킬 수 있는 도서를 제공합니다. 책을 끝까지 다 읽지 않아도 독서의 달콤함을 느낄 수 있도록 책이 보이는 오디오북, 챗북 등 다양한 독서 콘텐츠를 만듭니다.','https://www.millie.co.kr/company/company.html'],
			['매경e신문','<%=request.getContextPath()%>/resources/images_sub/lecture/008_meailnews.png','15,000원','매경e신문은 프리미엄뉴스, 레이더M, 매경회사연감 등 신문에 실리는 기사 이상의 정보를 회원들에게 제공합니다.','https://digital.mk.co.kr/intro/intro.php'],
			['빅이슈','<%=request.getContextPath()%>/resources/images_sub/lecture/021_bigissue.png','7,000원','《빅이슈》는 홈리스를 지원하기 위해 발행되는 스트리트페이퍼로, 잡지 판매대금의 절반 이상이 홈리스 출신의 판매사원(빅판)에게 돌아간다.','https://bigissue.kr/'],
			['예스24 북클럽','<%=request.getContextPath()%>/resources/images_sub/lecture/020_yes24.png','6,000원','YES24 북클럽은 다양한 취향을 가진 고객을 위해 폭 넓은 분야와 방대한 종 수를 고객 가치로 두고 있습니다. 일반 도서의 베스트셀러와 신간뿐 아니라 스테디셀러, 구간 명저, 그리고 만화, 장르문학까지 서비스 범위를 확대할 계획입니다.','http://m.yes24.com/BookClub/Main'],
			['윌라','<%=request.getContextPath()%>/resources/images_sub/lecture/016_willa.png','10,000원','전문 성우들의 목소리로 책을 들을 수 있는 구독 서비스. 정기 구독으로 다양한 오디오북을 즐길 수 있습니다.','https://www.welaaa.com/'],
			['조인스 프라임','<%=request.getContextPath()%>/resources/images_sub/lecture/018_joinsprime.png','10,000원','저렴한 정액제 요금으로 신문과 잡지를 무제한 열람할 수 있는 서비스입니다.','https://www.joins.com/'],
			['퍼블리','<%=request.getContextPath()%>/resources/images_sub/lecture/024_publy.png','10,000원','퍼블리는 누구나 쉽게 커리어를 학습하고 관리할 수 있도록 돕고, 더 많은 기회와 더 좋은 네트워크를 경험하는 "커리어 풀솔루션" 서비스를 제공하는 플랫폼입니다.','https://publy.co/'],
			['핀즐','<%=request.getContextPath()%>/resources/images_sub/lecture/033_pinzle.png','20,000원','핀즐은 국내 최다 해외 아티스트를 보유한 국내 유일 글로벌 아트 에이전시입니다. 삶과 예술에 대한 아티스트 인터뷰와 지면으로만 만날 수 있었던 콘텐츠까지, 바야흐로 그림을 정기구독하는 시대입니다.','https://pinzle.net/']
			
	];
	//로고 뿌려주기
	$('.subServiceList').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 멜론 로고 뿌려주기
	$('.subServiceList2').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList2');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 넷플릭스 로고 뿌려주기
	$('.subServiceList3').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList3');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 웨이브 로고 뿌려주기
	$('.subServiceList4').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList4');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 디즈니+ 로고 뿌려주기
	$('.subServiceList5').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList5');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 월간과자 로고 뿌려주기
	$('.subServiceList6').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList6');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 닌텐도스위치 로고 뿌려주기
	$('.subServiceList7').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList7');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 벅스 로고 뿌려주기
	$('.subServiceList8').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList8');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 스포티비나우 로고 뿌려주기
	$('.subServiceList9').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList9');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 아이클라우드 로고 뿌려주기
	$('.subServiceList10').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList10');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 유튜브프리미엄 로고 뿌려주기
	$('.subServiceList11').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList11');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 애플뮤직 로고 뿌려주기
	$('.subServiceList12').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList12');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 카카오이모티콘 로고 뿌려주기
	$('.subServiceList13').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList13');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 꾸까 로고 뿌려주기
	$('.subServiceList14').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList14');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 네이버+ 로고 뿌려주기
	$('.subServiceList15').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList15');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 더반찬 로고 뿌려주기
	$('.subServiceList16').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList16');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 런드리고 로고 뿌려주기
	$('.subServiceList17').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList17');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit BBC사이언스 로고 뿌려주기
	$('.subServiceList18').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList18');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 리디셀렉트 로고 뿌려주기
	$('.subServiceList19').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList19');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 밀리의서재 로고 뿌려주기
	$('.subServiceList20').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList20');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 매경e신문 로고 뿌려주기
	$('.subServiceList21').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList21');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 빅이슈 로고 뿌려주기
	$('.subServiceList22').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList22');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 예스24북클럽 로고 뿌려주기
	$('.subServiceList23').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList23');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 왓챠 로고 뿌려주기
	$('.subServiceList24').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList24');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 티빙 로고 뿌려주기
	$('.subServiceList25').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList25');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 플로 로고 뿌려주기
	$('.subServiceList26').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList26');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 플레이스테이션 로고 뿌려주기
	$('.subServiceList27').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList27');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 쏘카 로고 뿌려주기
	$('.subServiceList28').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList28');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 와이즐리 로고 뿌려주기
	$('.subServiceList29').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList29');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 위클리셔츠 로고 뿌려주기
	$('.subServiceList30').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList30');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 잡플래닛 로고 뿌려주기
	$('.subServiceList31').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList31');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 쿠팡와우 로고 뿌려주기
	$('.subServiceList32').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList32');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 필리 로고 뿌려주기
	$('.subServiceList33').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList33');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 하비인더박스 로고 뿌려주기
	$('.subServiceList34').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList34');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 해피문데이 로고 뿌려주기
	$('.subServiceList35').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList35');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 윌라 로고 뿌려주기
	$('.subServiceList36').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList36');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 조인스프라임 로고 뿌려주기
	$('.subServiceList37').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList37');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 퍼블리 로고 뿌려주기
	$('.subServiceList38').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList38');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	//edit 핀즐 로고 뿌려주기
	$('.subServiceList39').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList39');
		
		$.each(eachService, function(index_3, item_3){	

			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('.img-thumbnail').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	
	
	
	
	
	//구독 리스트 선택값 넘기기
	
	$('.btnSeeMore').click(function(e){
		var btnSeeMore = document.getElementsByClassName('btnSeeMore');
		
		$.each(btnSeeMore, function(index_1, item_1){
			if(e.target == item_1){
				$.each(subObjectInfo, function(index, item){
					
					if(index_1 == index){
						$('#modalSeeMoreSubName').html(item[0]);
						$('#modalSeeMoreInfoImg').attr("src",item[1]);
						$('#modalSeeMoreInfoMoney').html(item[2]);
						$('#modalSeeMoreInfoExplain').html(item[3]);
						$('#modalSeeMoreInfoForward').attr("href",item[4]);
					}
				});
			}

			
		});
		if(!modalSeeMorebtn){
			$('#modalSeeMore').css("display", "block");
			modalSeeMorebtn = true;
		}
	});
	
	$('#modalSeeMoreDefault').click(function(){
		if(modalSeeMorebtn){
			$('#modalSeeMore').css("display", "none");
			modalSeeMorebtn = false;
		}
	});
	$('#modalSeeMorePrimary').click(function(){
		if(modalSeeMorebtn){
			$('#modalSeeMore').css("display", "block");
			modalSeeMorebtn = true;
		}
	});
	$('#modalSeeMoreClose').click(function(){
		if(modalSeeMorebtn){
			$('#modalSeeMore').css("display", "none");
			modalSeeMorebtn = false;
		}
	});
	
	//직접입력하기 클릭시, 데이터 넘지기 않고 모달창만 닫히도록
	//subServiceListSelf
	$('.subServiceListSelf').click(function(){
		$('#subListKsy').css("display", "none");
	});
	//멜론
	$('.subServiceListSelf2').click(function(){
		$('#subListKsy2').css("display", "none");
	});
	//넷플릭스
	$('.subServiceListSelf3').click(function(){
		$('#subListKsy3').css("display", "none");
	});
	//웨이브
	$('.subServiceListSelf4').click(function(){
		$('#subListKsy4').css("display", "none");
	});
	//디즈니
	$('.subServiceListSelf5').click(function(){
		$('#subListKsy5').css("display", "none");
	});
	//월간과자
	$('.subServiceListSelf6').click(function(){
		$('#subListKsy6').css("display", "none");
	});
	//닌텐도스위치
	$('.subServiceListSelf7').click(function(){
		$('#subListKsy7').css("display", "none");
	});
	//벅스
	$('.subServiceListSelf8').click(function(){
		$('#subListKsy8').css("display", "none");
	});
	//스포티비나우
	$('.subServiceListSelf9').click(function(){
		$('#subListKsy9').css("display", "none");
	});
	//아이클라우드
	$('.subServiceListSelf10').click(function(){
		$('#subListKsy10').css("display", "none");
	});
	//유튜브프리미엄
	$('.subServiceListSelf11').click(function(){
		$('#subListKsy11').css("display", "none");
	});
	//애플뮤직
	$('.subServiceListSelf12').click(function(){
		$('#subListKsy12').css("display", "none");
	});
	//카카오이모티콘
	$('.subServiceListSelf13').click(function(){
		$('#subListKsy13').css("display", "none");
	});
	//꾸까
	$('.subServiceListSelf14').click(function(){
		$('#subListKsy14').css("display", "none");
	});
	//네이버+
	$('.subServiceListSelf15').click(function(){
		$('#subListKsy15').css("display", "none");
	});
	//더반찬
	$('.subServiceListSelf16').click(function(){
		$('#subListKsy16').css("display", "none");
	});
	//런드리고
	$('.subServiceListSelf17').click(function(){
		$('#subListKsy17').css("display", "none");
	});
	//BBC사이언스
	$('.subServiceListSelf18').click(function(){
		$('#subListKsy18').css("display", "none");
	});
	//리디셀렉트
	$('.subServiceListSelf19').click(function(){
		$('#subListKsy19').css("display", "none");
	});
	//밀리의서재
	$('.subServiceListSelf20').click(function(){
		$('#subListKsy20').css("display", "none");
	});
	//매경e신문
	$('.subServiceListSelf21').click(function(){
		$('#subListKsy21').css("display", "none");
	});
	//빅이슈
	$('.subServiceListSelf22').click(function(){
		$('#subListKsy22').css("display", "none");
	});
	//예스24북클럽
	$('.subServiceListSelf23').click(function(){
		$('#subListKsy23').css("display", "none");
	});
	//왓챠
	$('.subServiceListSelf24').click(function(){
		$('#subListKsy24').css("display", "none");
	});
	//티빙
	$('.subServiceListSelf25').click(function(){
		$('#subListKsy25').css("display", "none");
	});
	//플로
	$('.subServiceListSelf26').click(function(){
		$('#subListKsy26').css("display", "none");
	});
	//플레이스테이션
	$('.subServiceListSelf27').click(function(){
		$('#subListKsy27').css("display", "none");
	});
	//쏘카
	$('.subServiceListSelf28').click(function(){
		$('#subListKsy28').css("display", "none");
	});
	//와이즐리
	$('.subServiceListSelf29').click(function(){
		$('#subListKsy29').css("display", "none");
	});
	//위클리셔츠
	$('.subServiceListSelf30').click(function(){
		$('#subListKsy30').css("display", "none");
	});
	//잡플래닛
	$('.subServiceListSelf31').click(function(){
		$('#subListKsy31').css("display", "none");
	});
	//쿠팡와우
	$('.subServiceListSelf32').click(function(){
		$('#subListKsy32').css("display", "none");
	});
	//필리
	$('.subServiceListSelf33').click(function(){
		$('#subListKsy33').css("display", "none");
	});
	//하비인더박스
	$('.subServiceListSelf34').click(function(){
		$('#subListKsy34').css("display", "none");
	});
	//해피문데이
	$('.subServiceListSelf35').click(function(){
		$('#subListKsy35').css("display", "none");
	});
	//윌라
	$('.subServiceListSelf36').click(function(){
		$('#subListKsy36').css("display", "none");
	});
	//조인스프라임
	$('.subServiceListSelf37').click(function(){
		$('#subListKsy37').css("display", "none");
	});
	//퍼블리
	$('.subServiceListSelf38').click(function(){
		$('#subListKsy38').css("display", "none");
	});
	//핀즐
	$('.subServiceListSelf39').click(function(){
		$('#subListKsy39').css("display", "none");
	});
	
	//구독 리스트 선택값 넘기기
	var subObject = {
			'넷플릭스' : '16000',
			'닌텐도스위치' : '4000',
			'디즈니+' : '8000',
			'멜론' : '7000',
			'벅스' : '7000',
			'스포티비나우' : '9000',
			'아이클라우드' : '1000',
			'유튜브프리미엄' : '10000',
			'애플뮤직' : '9000',
			'왓챠' : '8000',
			'웨이브' : '8000',
			'티빙' : '8000',
			'플로' : '7000',
			'플레이스테이션' : '4000',
			'카카오이모티콘+' : '2500',
			'꾸까' : '18000',
			'네이버+' : '5000',
			'더반찬' : '28000',
			'런드리고' : '65000',
			'쏘카' : '3000',
			'와이즐리' : '9000',
			'월간과자' : '10000',
			'위클리 셔츠' : '50000',
			'잡플래닛' : '12000',
			'쿠팡 와우' : '4000',
			'필리' : '14000',
			'하비인더박스' : '40000',
			'해피문데이' : '7000',
			'BBC사이언스' : '13000',
			'리디셀렉트' : '5000',
			'밀리의 서재' : '10000',
			'매경e신문' : '15000',
			'빅이슈' : '7000',
			'예스24북클럽' : '6000',
			'윌라' : '10000',
			'조인스 프라임' : '10000',
			'퍼블리' : '10000',
			'핀즐' : '20000'
	};
	
	$('.subServiceList').click(function(e){
		$('#subName').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay').val(item);
			}
		});
    	$('#subListKsy').css("display", "none");
    });
	//melon
	$('.subServiceList2').click(function(e){
		$('#subName2').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay2').val(item);
			}
		});
    	$('#subListKsy2').css("display", "none");
    });
	//netflix
	$('.subServiceList3').click(function(e){
		$('#subName3').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay3').val(item);
			}
		});
    	$('#subListKsy3').css("display", "none");
    });
	//wave
	$('.subServiceList4').click(function(e){
		$('#subName4').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay4').val(item);
			}
		});
    	$('#subListKsy4').css("display", "none");
    });
	//disney+
	$('.subServiceList5').click(function(e){
		$('#subName5').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay5').val(item);
			}
		});
    	$('#subListKsy5').css("display", "none");
    });
	//월간과자
	$('.subServiceList6').click(function(e){
		$('#subName6').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay6').val(item);
			}
		});
    	$('#subListKsy6').css("display", "none");
    });
	//닌텐도스위치
	$('.subServiceList7').click(function(e){
		$('#subName7').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay7').val(item);
			}
		});
    	$('#subListKsy7').css("display", "none");
    });
	//벅스
	$('.subServiceList8').click(function(e){
		$('#subName8').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay8').val(item);
			}
		});
    	$('#subListKsy8').css("display", "none");
    });
	//스포티비나우
	$('.subServiceList9').click(function(e){
		$('#subName9').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay9').val(item);
			}
		});
    	$('#subListKsy9').css("display", "none");
    });
	//아이클라우드
	$('.subServiceList10').click(function(e){
		$('#subName10').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay10').val(item);
			}
		});
    	$('#subListKsy10').css("display", "none");
    });
	//유튜브프리미엄
	$('.subServiceList11').click(function(e){
		$('#subName11').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay11').val(item);
			}
		});
    	$('#subListKsy11').css("display", "none");
    });
	//애플뮤직
	$('.subServiceList12').click(function(e){
		$('#subName12').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay12').val(item);
			}
		});
    	$('#subListKsy12').css("display", "none");
    });
	//카카오이모티콘
	$('.subServiceList13').click(function(e){
		$('#subName13').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay13').val(item);
			}
		});
    	$('#subListKsy13').css("display", "none");
    });
	//꾸까
	$('.subServiceList14').click(function(e){
		$('#subName14').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay14').val(item);
			}
		});
    	$('#subListKsy14').css("display", "none");
    });
	//네이버+
	$('.subServiceList15').click(function(e){
		$('#subName15').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay15').val(item);
			}
		});
    	$('#subListKsy15').css("display", "none");
    });
	//더반찬
	$('.subServiceList16').click(function(e){
		$('#subName16').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay16').val(item);
			}
		});
    	$('#subListKsy16').css("display", "none");
    });
	//런드리고
	$('.subServiceList17').click(function(e){
		$('#subName17').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay17').val(item);
			}
		});
    	$('#subListKsy17').css("display", "none");
    });
	//BBC사이언스
	$('.subServiceList18').click(function(e){
		$('#subName18').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay18').val(item);
			}
		});
    	$('#subListKsy18').css("display", "none");
    });
	//리디셀렉트
	$('.subServiceList19').click(function(e){
		$('#subName19').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay19').val(item);
			}
		});
    	$('#subListKsy19').css("display", "none");
    });
	//밀리의서재
	$('.subServiceList20').click(function(e){
		$('#subName20').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay20').val(item);
			}
		});
    	$('#subListKsy20').css("display", "none");
    });
	//매경e신문
	$('.subServiceList21').click(function(e){
		$('#subName21').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay21').val(item);
			}
		});
    	$('#subListKsy21').css("display", "none");
    });
	//빅이슈
	$('.subServiceList22').click(function(e){
		$('#subName22').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay22').val(item);
			}
		});
    	$('#subListKsy22').css("display", "none");
    });
	//예스24북클럽
	$('.subServiceList23').click(function(e){
		$('#subName23').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay23').val(item);
			}
		});
    	$('#subListKsy23').css("display", "none");
    });
	//왓챠
	$('.subServiceList24').click(function(e){
		$('#subName24').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay24').val(item);
			}
		});
    	$('#subListKsy24').css("display", "none");
    });
	//티빙
	$('.subServiceList25').click(function(e){
		$('#subName25').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay25').val(item);
			}
		});
		$('#subListKsy25').css("display", "none");
	});
	//플로
	$('.subServiceList26').click(function(e){
		$('#subName26').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay26').val(item);
			}
		});
		$('#subListKsy26').css("display", "none");
	});
	//플레이스테이션
	$('.subServiceList27').click(function(e){
		$('#subName27').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay27').val(item);
			}
		});
		$('#subListKsy27').css("display", "none");
	});
	//쏘카
	$('.subServiceList28').click(function(e){
		$('#subName28').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay28').val(item);
			}
		});
		$('#subListKsy28').css("display", "none");
	});//
	//와이즐리
	$('.subServiceList29').click(function(e){
		$('#subName29').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay29').val(item);
			}
		});
		$('#subListKsy29').css("display", "none");
	});//
	//위클리셔츠
	$('.subServiceList30').click(function(e){
		$('#subName30').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay30').val(item);
			}
		});
		$('#subListKsy30').css("display", "none");
	});//
	//잡플래닛
	$('.subServiceList31').click(function(e){
		$('#subName31').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay31').val(item);
			}
		});
		$('#subListKsy31').css("display", "none");
	});//
	//쿠팡와우
	$('.subServiceList32').click(function(e){
		$('#subName32').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay32').val(item);
			}
		});
		$('#subListKsy32').css("display", "none");
	});//
	//필리
	$('.subServiceList33').click(function(e){
		$('#subName33').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay33').val(item);
			}
		});
		$('#subListKsy33').css("display", "none");
	});//
	//하비인더박스
	$('.subServiceList34').click(function(e){
		$('#subName34').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay34').val(item);
			}
		});
		$('#subListKsy34').css("display", "none");
	});//
	//해피문데이
	$('.subServiceList35').click(function(e){
		$('#subName35').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay35').val(item);
			}
		});
		$('#subListKsy35').css("display", "none");
	});//
	//윌라
	$('.subServiceList36').click(function(e){
		$('#subName36').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay36').val(item);
			}
		});
		$('#subListKsy36').css("display", "none");
	});//
	//조인스프라임
	$('.subServiceList37').click(function(e){
		$('#subName37').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay37').val(item);
			}
		});
		$('#subListKsy37').css("display", "none");
	});//
	//퍼블리
	$('.subServiceList37').click(function(e){
		$('#subName37').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay37').val(item);
			}
		});
		$('#subListKsy37').css("display", "none");
	});//
	//핀즐
	$('.subServiceList38').click(function(e){
		$('#subName38').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay38').val(item);
			}
		});
		$('#subListKsy38').css("display", "none");
	});//
	
	
	
	
	/* console.log(${secondRecord.mysubs});
	console.log(${tmp}); */
</script>
<style>
	#mdlNwSub1{
		position: fixed;
		top: 50%;
		left: 50%;
		-webkit-transform: translate(-50%, -50%);
		-moz-transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		-o-transform: translate(-50%, -50%);
		transform: translate(-50%, -50%);
	}
	.mdlbtnAuto{
		width:300px;
		height:300px;
		font-style:black;
		background-color: white;
		border: none;
	}
	.mdlbtnManual{
		width:300px;
		height:300px;
		font-style:black;
		background-color: white;
		border: none;
	}
	.mdlbtnAuto:hover{
		background-color: #1CBFDB;
		color: red;
	}
	.mdlbtnManual:hover{
		background-color: gold;
		color: red;
	}
	.btnSeeMore{
		float: right;
		background-color:#95E1D3;
		border:none;
		color:#fff;
		padding:2px 10px;
		border-radius: 10px;
		z-index:1;
	}
	#modalSeeMore{
		z-index:1050;
		top: 140px;
	}
	#subListKsy,#subListKsy2, #subListKsy3,#subListKsy4,#subListKsy5,#subListKsy6,#subListKsy7,#subListKsy8,
	#subListKsy9,#subListKsy10,#subListKsy11,#subListKsy12,#subListKsy13,#subListKsy14,#subListKsy15,#subListKsy16,#subListKsy17,
	#subListKsy18,#subListKsy19,#subListKsy20,#subListKsy21,#subListKsy22,#subListKsy23,#subListKsy24,#subListKsy25,#subListKsy26,
	#subListKsy27,#subListKsy28,#subListKsy29,#subListKsy30,#subListKsy31,#subListKsy32,#subListKsy33,#subListKsy34,#subListKsy35,
	#subListKsy36,#subListKsy37,#subListKsy38,#subListKsy39{
		display:none; 
		position: absolute;
		width:560px;
		height:500px;
		overflow:auto;
	}
	#subListKsy > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy2 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy3 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy4 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy5 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy6 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy7 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy8 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy9 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy10 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy11 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy12 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy13 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy14 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy15 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy16 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy17 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy18 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy19 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy20 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy21 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy22 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy23 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy24 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy25 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy26 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy27 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy28 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy29 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy30 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy31 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy32 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy33 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy34 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy35 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy36 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy37 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy38 > a:hover{
		background-color:#fce38a; 
	}
	#subListKsy39 > a:hover{
		background-color:#fce38a; 
	}
	#subListbtn, #subListbtn2, #subListbtn3, #subListbtn4, #subListbtn5, #subListbtn6, #subListbtn7, #subListbtn8,
	#subListbtn9, #subListbtn10, #subListbtn11, #subListbtn12, #subListbtn13, #subListbtn14, #subListbtn15, #subListbtn16, #subListbtn17,
	#subListbtn18,#subListbtn19,#subListbtn20,#subListbtn21,#subListbtn22,#subListbtn23,#subListbtn24,#subListbtn25,#subListbtn26,
	#subListbtn27,#subListbtn28,#subListbtn29,#subListbtn30,#subListbtn31,#subListbtn32,#subListbtn33,#subListbtn34,#subListbtn35,
	#subListbtn36,#subListbtn37,#subListbtn38,#subListbtn39{
		width:30px;
		height:30px;
		display:inline-block;
		cursor:pointer;
	}
	
	#modalSeeMoreImg{
		display: flex;
		margin: 0 auto;
		width:30%;
	}
	#modalSeeMoreIntro{
		border:3px dashed grey;
		font-size:16px;
		font-family:'Nanum Gothic', sans-serif;
		text-align:center;
		margin-top:5px;
		padding:5px;
		border-radius: 20px;
	}
	#modalSeeMoreMoney, #modalSeeMoreExplain{
		background-color:#95E1D3;
		color:#fff;
		border-radius: 10px;
	}
	#btnSubEdit:hover{
		color:#fce38a;
	}
	
	/*	sortable 적용해보기	*/
	#sortable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
  	#sortable li { margin: 0 3px 3px 3px; padding: 0.4em; padding-left: 1.5em; font-size: 1.4em; height: 18px; }
  	#sortable li span { position: absolute; margin-left: -1.3em; }
</style>
