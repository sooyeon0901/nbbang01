<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	</div>
</header>
<style>
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
	
	
	.containerAnalysis{
		margin:auto;
		width:80%;
		height:1000px;
		margin-bottom:60px;
	}
	#actorInfo, #filmography_title{
		padding-top:20px;
		padding-bottom:20px;
		width:80%;
		margin:auto;
		text-align:center;
		font-family: 'Jua', sans-serif;
		font-size:25px;
	}
	#filmography_title{
		padding-top:20px;
		padding-bottom:20px;
		width:50%;
		margin:auto;
		text-align:center;
		font-family: 'Jua', sans-serif;
		color:#f38181;
		font-size:23px;
	}
	#preview_image{
		display:block;
		margin:auto;
		width:300px;
		height:300px;
		border: 1px solid grey;
	}
	#test_image{
		margin:auto;
	}
	#btnCheck{
		display:inline-block;
	}
	.btnWrap{
		margin-top:20px;
		margin-bottom:20px;
		text-align: center;
	}
	#filmography_watcha{
		width:100%;
		text-align: center;
	}
	#filmography_netflix{
		text-align: center;
		width:100%;
	}
	#filmography_watcha_img{
		width:100%;
	}
	#filmography_netflix_img{
		width:100%;
	}
	.actorImg_watcha{
		width:160px;
		margin-bottom:10px;
	}
	.actorImg_netflix{
		width:250px;
		margin-bottom:10px;
	}
	#todo{
		padding-bottom:20px;
		font-family: 'Jua', sans-serif;
		width:70%;
		margin:auto;
		text-align:center;
		color:black;
	}
</style>

<!-- 광고 1 -->
<div class="ad_one">
	
</div>

<div class="container" >
	<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">당신의 취향을 추천해 드립니다.</h1>
	<h2 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">챗봇 엔빵이에게 오늘의 취향을 말해 보세요. 엔빵이를 클릭하시면 챗봇이 시작됩니다.</h2>
	<!-- 챗봇 적용 -->
	<div style="text-align:center;">
		<img id="nbbang_chatbot" src="<%=request.getContextPath()%>/resources/logo/Nbread_02_2_cut.png" style="width:80px;height:100px;cursor:pointer;"/>
	</div>
	<hr class="col-md-12" style="width:900px;margin-left:50px;"/>
	
	
	
   <div class="containerAnalysis">
	    <h1 id="todo">필모그라피가 궁금한 배우의 사진을 넣어주세요.</h1>
	    
		<img id="preview_image" src="<%=request.getContextPath()%>/resources/account/image_basic.png"/>
		<input type="file" id="test_image" accept=".png,.jpg,.jpeg" multiple/>
		<div class="btnWrap">
			<button class="btn btn-warning" id="btnCheck" type="button" onclick="predict()">확인하기</button>
			<a id="btnRe"><img src="<%=request.getContextPath()%>/resources/account/restart.png" style="width:30px;margin-left:10px;"/></a>
		</div>
		<h3 id="actorInfo"></h3>
		<h3 id="filmography_title"></h3>
		
		<div style="width:50%;float:left;text-align: center;margin-bottom:200px;">
			<img src="<%=request.getContextPath()%>/resources/images_sub/media/003_netflix.jpeg" style="width:80px;height:80px;"/>
			<h3 id="filmography_netflix" >NETFLIX Contents</h3>
			<div id="filmography_netflix_img" ></div>
		</div>
		<div style="width:50%;float:left;text-align: center;margin-bottom:200px;">
			<img src="<%=request.getContextPath()%>/resources/images_sub/media/004_watcha.png" style="width:80px;height:80px;"/>
			<h3 id="filmography_watcha" >WATCHA Contents</h3>
			<div id="filmography_watcha_img" ></div>
		</div>
		
		<div id="label-container"></div>
   </div>
</div>

<!-- 광고 2 -->
<div class="ad_two">
	
</div>



	<!-- JQuery CDN 추가 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@teachablemachine/image@0.8/dist/teachablemachine-image.min.js"></script>
	<script type="text/javascript">
	
		//챗봇 창 띄우기
		$('#nbbang_chatbot').on('click',function(){
			window.open("chatbot.do",'_blank','width=600,height=800,menubar=false');
	    })
    
	
	    const URL = "./my_model/";

	    let model, webcam, labelContainer, maxPredictions;
	    
	    async function init() {
	        const modelURL = URL + "model.json";
	        const metadataURL = URL + "metadata.json";
	        model = await tmImage.load(modelURL, metadataURL);
	        console.log('모델 타입:',typeof(model))
	        maxPredictions = model.getTotalClasses();
	        console.log('클래스 수:',maxPredictions)
			
	        /*
	        // Convenience function to setup a webcam
	        const flip = true; // whether to flip the webcam
	        webcam = new tmImage.Webcam(200, 200, flip); // width, height, flip
	        await webcam.setup(); // request access to the webcam
	        await webcam.play();
	        window.requestAnimationFrame(loop);
	
	        // append elements to the DOM
	        document.getElementById("webcam-container").appendChild(webcam.canvas);
	        */
	        
	        labelContainer = document.getElementById("label-container");
	        for (let i = 0; i < maxPredictions; i++) { // and class labels
	            labelContainer.appendChild(document.createElement("div"));
	        }
	    }
		
	    
	    /*
	    async function loop() {
	        webcam.update(); // update the webcam frame
	        await predict();
	        window.requestAnimationFrame(loop);
	    }
		*/
		
	    // run the webcam image through the image model
	    async function predict() {
			//빈값일 때 유효성 검증
	        if($('#test_image').val() == ""){
				alert('이미지 파일을 선택하세요.');
				return false;
			}
	        // predict can take in an image, video or canvas html element
	        //const prediction = await model.predict(webcam.canvas);
	        var image = document.getElementById('preview_image');
	        var prediction = await model.predict(image,false);
	        console.log('prediction',prediction);
	        
	      	//값추출을 위한 변수
        	var actorName = "";
        	var maxPercentage = 0;
	        
	        for (let i = 0; i < maxPredictions; i++) {
	        	
	        	//값추출을 위한 조건
	        	if(prediction[i].probability.toFixed(2)*100 > maxPercentage){
	        		maxPercentage = prediction[i].probability.toFixed(2)*100;
	        		actorName = prediction[i].className;
	        	}
	        	
	            const classPrediction =
	                prediction[i].className + ": " + prediction[i].probability.toFixed(2)*100+'%';
	            //labelContainer.childNodes[i].innerHTML = classPrediction;
	        }
	        
	        console.log(maxPercentage + "% 의 확률로 " + actorName + "(으)로 확인되었습니다.");
	        //view에 뿌리기
	        actorInfo = document.getElementById("actorInfo");
	        actorInfo.innerHTML = '이미지 분석 결과 ' + maxPercentage + "% 의 확률로 [ " + actorName + " ] (으)로 확인되었습니다.";
	        
	        //필모그라피 제목
	        filmography_title = document.getElementById("filmography_title");
	        filmography_title.innerHTML = '배우 [ '+ actorName + ' ] 의 필모그라피 결과를 찾았습니다.'+'<br/>'+'마음에 드는 ott로 감상하세요.';
	        
	        //넷플릭스 dom
	        filmography_netflix = document.getElementById("filmography_netflix");
	        filmography_netflix_img = document.getElementById("filmography_netflix_img");
	        filmography_netflix_title = document.getElementById("filmography_netflix_title");
	        filmography_watcha_img = document.getElementById("filmography_watcha_img");
	        
	        
	        
	        
	        
	        if(actorName == '김고은'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/KimGoEun/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=7; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/KimGoEun/'+i+'.jpeg"/>';
	        	}
	        	
	        } else if(actorName == '한효주'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/HanHyoJu/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=9; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/HanHyoJu/'+i+'.jpeg"/>';
	        	}
	        	
	        } else if(actorName == '한지민'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/HanJiMin/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=9; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/HanJiMin/'+i+'.jpeg"/>';
	        	}
	        	
	        } else if(actorName == '한소희'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/HanSoHee/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=5; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/HanSoHee/'+i+'.jpeg"/>';
	        	}
	        	
	        } else if(actorName == '아이유'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/Iu/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=7; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/Iu/'+i+'.jpeg"/>';
	        	}
	        	
	        } else if(actorName == '전지현'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/JeonJiHyun/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=7; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/JeonJiHyun/'+i+'.jpeg"/>';
	        	}
	        	
	        } else if(actorName == '정유미'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/JungYooMi/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=9; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/JungYooMi/'+i+'.jpeg"/>';
	        	}
	        	
	        } else if(actorName == '김혜수'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/KimHyeSoo/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=6; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/KimHyeSoo/'+i+'.jpeg"/>';
	        	}
	        	
	        } else if(actorName == '김유정'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/KimYooJung/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=9; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/KimYooJung/'+i+'.jpeg"/>';
	        	}
	        	
	        } else if(actorName == '공효진'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/KongHyoJin/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=9; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/KongHyoJin/'+i+'.jpeg"/>';
	        	}
	        	
	        } else if(actorName == '라미란'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/RaMiRan/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=8; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/RaMiRan/'+i+'.jpeg"/>';
	        	}
	        	
	        } else if(actorName == '송혜교'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/SongHyeKyo/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=9; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/SongHyeKyo/'+i+'.jpeg"/>';
	        	}
	        	
	        } else if(actorName == '수지'){
	        	for(var i=1; i<=9; i++) {
                    filmography_netflix_img.innerHTML += 
                    	'<img class="actorImg_netflix" src="<%=request.getContextPath()%>/resources/ott/netflix/Suji/'+i+'.jpg"/>';
	            }
		        for(var i=1; i<=8; i++) {
		        	filmography_watcha_img.innerHTML += 
	                	'<img class="actorImg_watcha" src="<%=request.getContextPath()%>/resources/ott/watcha/Suji/'+i+'.jpeg"/>';
	        	}
	        	
	        }
	        
	        
	        
	    }
		
		//페이지 로드시 모델 로드
	    init();
	    function previewImage(input){
	    	if(input.files && input.files[0]){
	    		console.log('input.files',input.files);
	    		console.log('input.files[0]',input.files[0]);
	    		
	    		var reader = new FileReader();
	    		//console.log(reader.readAsText(input.files[0],'UTF-8'));
	    		reader.readAsDataURL(input.files[0]); //이미지 파일을 URL로 읽기
	    		reader.onload = function(e){
	    			//읽기 동작이 완료 됐을 때 실행됨
	    			console.log('e.target:',e.target); //FileReader객체
	    			console.log('e.target.result:',e.target.result); //읽은 파일 내용 url
	    			$('#preview_image').prop("src",e.target.result); //미리보기 구현
	    		}
	    	}
	    }
	    
	    //이미지를 선택했을 때 위의 이미지 미리보기 함수 호출
	    $('#test_image').on('change',function(){
	    	previewImage(this);
	    })
	    
	    $('#btnRe').on('click',function(){
	    	location.reload();
	    })
	    
	    
	</script>
