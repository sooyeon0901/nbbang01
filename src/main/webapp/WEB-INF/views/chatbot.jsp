<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
      <!-- Required meta tags -->
    <meta charset="utf-8">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/chatbot/style.css">
    <title>엔빵 챗봇</title>
  </head>
<style>

  body,html {
  	height: 100%;
  }

  #nbbang{
  	display:inline-block;
  	top: 20px;
  	left: 40px;
  	border-radius:18px;
  	background-color:#548f66;
  }
  #nbbangImg{
  	width:35px;
  	display:inline-block;
  	top: 0px;
  	left: -40px;
  	position:absolute;
  	border: 1px solid grey;
  	border-radius: 25px;
  	background-color:#fff;
  }
  #customer{
  	border-radius:18px;
  	background-color:#fff;
  	color:black;
  }
  #query{
  	
  	width: 500px;
  	height:36px;
    margin-right: 15%;
    border: 1px solid grey;
  }
  #top{
  	width: 500px;
  	height:42px;
    border: 1px solid none;
    text-align:center;
    font-size:20px;
    background-color:#548f66;
  }
  /* 스크롤바 영역 : 스크롤바가 사용되는 영역의 클래스지정 */
	.chat-container{
		overflow: auto;
		max-height: 80vh; 
		/*margin-bottom: 20px;*/ 
		position:relative;
		background-color:#bdecb6;
		/*margin: 0px;*/
	  padding: 0px;
	  width: 500px;
	  /*margin: 35px 0px;*/
	  margin-right: 15%;
	}
	
	.chat-container::-webkit-scrollbar {
	    width: 15px;
	}
	.chat-container::-webkit-scrollbar-thumb {
	    background-color: #fff;
	    border-radius: 10px;
	    background-clip: padding-box;
	    border: 2px solid transparent;
	  }
	.chat-container::-webkit-scrollbar-track {
	    background-color: #548f66;
	    border-radius: 10px;
	    box-shadow: inset 0px 0px 5px white;
	  }
  </style>
  <body>
      <div class="container h-100">
        <div class="row align-items-center h-100">
            <div class="col-md-8 col-sm-12 mx-auto">
                <div class="h-100 justify-content-center">
                	<div id="top">엔빵이와 대화해 보세요.</div>
                    <div class="chat-container" >
                        <div id="nbbang" class="chat-message col-md-5 bot-message" style="margin-bottom:50px">
                        <img src="<%=request.getContextPath()%>/resources/logo/bread_cut.png" id="nbbangImg"/>
                          안녕하세요.<br/>챗봇 '엔빵이' 입니다!
                        </div>
                    </div>
                    <input class="input" type="text" placeholder="대답을 입력하세요." id="query"/>

                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <!--<script src="/ChatbotApp/static/chatbot.js"></script>-->
	<script>
	function sendMessage(message) {
        console.log('입력메시지:',message)


        $.ajax({url:"http://192.168.0.17:10001/message",data:{'message': message,'session_id':'<%=session.getId()%>'},type:'post',success:receiveResponse})

        //flask서버로부터 응답을 받으면 receiveResponse콜백함수가 호출됨
        function receiveResponse(data) {//data는 flask로부터 받은 응답 {'message':'다이얼로그플로우가 보내준값'}
          //chat-container에 bot의 응답 추가
          $('.chat-container').append('<div id="nbbang" class="chat-message col-md-5 bot-message"><img src="<%=request.getContextPath()%>/resources/logo/bread_cut.png" id="nbbangImg"/>'+data.message+'</div>');
          //스크롤바 아래로
          $(".chat-container").scrollTop($(".chat-container")[0].scrollHeight);

             console.log('받은 메시지:',data)
        }
    }
	$("#query").on('keypress',function(e) {

	    if (e.keyCode == 13){
	        //e.preventDefault();
	        var query = $(this).val()
	        console.log(query)
	        if (!query) {//텍스트를 입력하지 않는 경우
	          return
	        }
	        //chat-container에 사용자의 응답 추가
	        $('.chat-container').append('<div id="customer" class="chat-message col-md-5 offset-md-7 human-message">'+query+'</div>')
	        // 입력창 클리어
	        $('#query').val('')
	        //스크롤바 아래로
	        $(".chat-container").scrollTop($(".chat-container")[0].scrollHeight);
	        //메시지 전송
	        sendMessage(query)
	    }
	});
	
	function crawling(genre){
		 $.ajax(
				 {
					 url:"http://192.168.0.17:10001/crawling",				 
				     data:{'genre':genre}
				 }
				 ).done(function(data){
					 console.log('클로링 데이타:',data)
					 var list="";
					 $.each(data, function(index,item){
						 $.each(item,function(key,value){
							 list+="<li>"+value+"</li>";
						 })
						 
					 });
					 $('.chat-container').append('<div id="nbbang" style="display:block;" class="chat-message col-md-5 bot-message"><ul>'+list+'</ul><br/>또다른 취향을 원하세요?</div>')
					 //스크롤바 아래로
				     $(".chat-container").scrollTop($(".chat-container")[0].scrollHeight);
					 
					 
				 })
			 
		
	}
	
	function crawling_watcha(genre){
		 $.ajax(
				 {
					 url:"http://192.168.0.17:10001/crawling_watcha",				 
				     data:{'genre':genre}
				 }
				 ).done(function(data){
					 console.log('왓챠 클로링 데이타:',data)
					 var list="";
					 $.each(data, function(index,item){
						 $.each(item,function(key,value){
							 list+="<li>"+value+"</li>";
						 })
						 
					 });
					 $('.chat-container').append('<div id="nbbang" style="display:block;" class="chat-message col-md-5 bot-message"><ul>'+list+'</ul><br/>또다른 취향을 원하세요?</div>')
					 //스크롤바 아래로
				     $(".chat-container").scrollTop($(".chat-container")[0].scrollHeight);
					 
					 
				 })
			 
		
	}
	
	
	</script>
  </body>
</html>