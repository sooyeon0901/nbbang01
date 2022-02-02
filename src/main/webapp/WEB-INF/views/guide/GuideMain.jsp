<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

   </div>

</header>

 

<body>

 <div class="header"> 

 

 <h1>NBBANG 가이드</h1>

 

 <h2>NBBANG은 '계정 공유 요금제'로 인해 생기는 고객들의 불편함을 해소하고, 구독서비스 이용의 편리함을 증진시켜줍니다.


</h2>

</div>

 <div class="text">

 

 

   <div class="onetxt">
   
      <h3>파티를 누르면 NBBANG이 매칭해줘요!</h3>

       <div id="onehide">

        &nbsp; · 보고싶은 OTT를 선택해주세요!</br>

        &nbsp; · 파티 매칭 리스트에서 모집,참여하면 끝!

        </div>

 
       <div id="onebt">
       
       <button type="button" onclick="div_show1(500)">
          <img src="<%=request.getContextPath()%>/resources/images/guide/plus.png" alt="" 
          style="width: 16px; height:16px; margin-right:5px; background-color:#eeeeee;">  </button>
      <button type="button" onclick="div_hide1(500)">
          <img src="<%=request.getContextPath()%>/resources/images/guide/minus.png" alt="" 
          style="width: 16px; height:16px; background-color:#f7f7f7;">  </button>
 
       </div>

   </div>

   <div class="twotxt">

      <h3>귀찮은 송금 없이 자동으로 정산돼요</h3>

        <div id="twohide">

        &nbsp; · NBBANG은 등록된 카드를 통해 요금이 매 달 자동결제됩니다.</br>
        &nbsp; · NBBANG은 등록된 계좌로 매 달 자동정산된 금액을 보내줍니다.

        </div>

       <div id="twobt">
 
	  <button type="button" onclick="div_show2(500)">
          <img src="<%=request.getContextPath()%>/resources/images/guide/plus.png" alt="" 
          style="width: 16px; height:16px; margin-right:5px; background-color:#f7f7f7;">  </button>
      <button type="button" onclick="div_hide2(500)">
          <img src="<%=request.getContextPath()%>/resources/images/guide/minus.png" alt="" 
          style="width: 16px; height:16px; background-color:#f7f7f7;">  </button>
 

     </div>

   </div> 

 
   <div class="threetxt">

      <h3>안전하고 편리하게 ID/비밀번호를 공유할 수 있어요</h3>

       <div id="threehide">

        &nbsp; · 파티원은 파티에 가입하는 즉시 ID와 비밀번호를 알 수 있어요.</br>
        &nbsp; · 바뀐 계정정보를 MY파티에서 아주 간단하게 변경할 수 있어요.
        </div>


       <div id="threebt">

      <button type="button" onclick="div_show3(500)">
          <img src="<%=request.getContextPath()%>/resources/images/guide/plus.png" alt="" 
          style="width: 16px; height:16px; margin-right:5px; background-color:#f7f7f7;">  </button>
      <button type="button" onclick="div_hide3(500)">
          <img src="<%=request.getContextPath()%>/resources/images/guide/minus.png" alt="" 
          style="width: 16px; height:16px; background-color:#f7f7f7;">  </button>
 

       </div>

 </div>

   <div class="fourtxt">

       <h3>중간에 이탈해도 안전하게 정산 받을 수 있어요</h3>

       <div id="fourhide">

         &nbsp; · 중간에 파티를 이탈하면 남은 날짜만큼의 요금이 자동으로 부분취소돼요.</br>

         &nbsp; · 또, 중간에 파티원이 파티를 나가도 금전적 손해를 보지 않아요.

        </div>

       <div id="fourbt">
      <button type="button" onclick="div_show4(500)">
          <img src="<%=request.getContextPath()%>/resources/images/guide/plus.png" alt="" 
          style="width: 16px; height:16px; margin-right:5px; background-color:#f7f7f7;">  </button>
      <button type="button" onclick="div_hide4(500)">
          <img src="<%=request.getContextPath()%>/resources/images/guide/minus.png" alt="" 
          style="width: 16px; height:16px; background-color:#f7f7f7;">  </button>
 

       </div>
   </div>

   <div class="fivetxt">
      <h3>뛰어난 보안의 KB국민은행에스크로와 함께합니다</h3>
       <div id="fivehide">
        &nbsp; · NBBANG은 뛰어난 보안과 함께합니다.</br>
        &nbsp; · 편리한 구독서비스 NBBANG과 함께 시작해요. 
        </div>
       <div id="fivebt">
       <button type="button" onclick="div_show5(500)">
          <img src="<%=request.getContextPath()%>/resources/images/guide/plus.png" alt="" 
          style="width: 16px; height:16px; margin-right:5px; background-color:#f7f7f7;">  </button>
       <button type="button" onclick="div_hide5(500)">
          <img src="<%=request.getContextPath()%>/resources/images/guide/minus.png" alt="" 
          style="width: 16px; height:16px; background-color:#f7f7f7;">  </button>
 
       </div>
   </div>


    <div class="sixtxt">
      <h3>훌륭한 파트너들과 투자, 제휴, 지원 관계를 맺고 있어요</h3>
         <div id="sixhide">

         &nbsp; · 국내 1위 스타트업 AC Primer로부터 투자를 유치하고,</br>
         &nbsp; · 'WAVVE카드' 프로모션 제휴, 롯데카드 '롤라카드'</br> 
         &nbsp; · 제휴를 진행하는 등 훌륭한 파트너들과 함께 성장하고 있어요.

         </div>
 

        <div id="sixbt">
      <button type="button" onclick="div_show6(500)">
          <img src="<%=request.getContextPath()%>/resources/images/guide/plus.png" alt="" 
          style="width: 16px; height:16px; margin-right:5px; background-color:#f7f7f7;">  </button>
      <button type="button" onclick="div_hide6(500)">
          <img src="<%=request.getContextPath()%>/resources/images/guide/minus.png" alt="" 
          style="width: 16px; height:16px; background-color:#f7f7f7;">  </button>
 
       </div>
   </div>
 </div>

</body>

   <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> 

 <style>
 *{margin:0; padding:0;}

 div.header {margin:0 auto; width:1000px; height:80px; background-color:white;
             border:10px solid white; box-shadow:2px 2px 4px 2px rgb(246,158,143);}
 button {border:none;}
 h1 {font-size:21px; font-weight:bold;}
 h2 {font-size:14px; padding:1px;}
 h3 {font-size:14px; font-weight:normal; margin-left:40px; padding-top:30px; 
 font-weight:800;} 
 div.text {margin:0 auto; width:950px; height:790px; }
 div.onetxt {width:700px; height:100px; background-color:#f7f7f7;
  margin-top:13px;}

 div#onehide {float:left; width:450px; height:63px; display:none; background-color:#f8f8f8; font-size:14px;  padding-top:5px;

 font-weight:550; margin-top:5px; margin-left:5px;

 border-radius:5px 5px 5px 5px;

 box-shadow:3px 3px 3px rgb(246,158,143), 0 0 1px black, 0 0 30px maroon; 

 }

 div#onebt {position:absolute; right:430px; top:200px;}
 
 

 div.twotxt {width:700px; height:100px; 

 border-top:1px solid gray; margin-top:32px; background-color:#f7f7f7;}

 div#twohide {float:left; width:550px; height:60px; display:none; background-color:#f8f8f8; font-size:14px;  padding-top:5px;

 font-weight:550; margin-top:5px; margin-left:5px;

 border-radius:5px 5px 5px 5px;

 box-shadow:3px 3px 3px rgb(246,158,143), 0 0 1px black, 0 0 30px maroon;

 }
 div#twobt {position:absolute; right:430px; top:330px; }
 


  div.threetxt {width:700px; height:100px;  background-color:#f7f7f7;

 border-top:1px solid gray; margin-top:26px;}

  div#threehide {float:left; width:550px; height:60px; display:none; background-color:#f8f8f8; font-size:14px;  padding-top:5px;

 font-weight:550; margin-top:5px; margin-left:5px;

 border-radius:5px 5px 5px 5px;

 box-shadow:3px 3px 3px rgb(246,158,143), 0 0 1px black, 0 0 30px maroon;

 }
 

  div#threebt {position:absolute;  right:430px; top:460px;}


  div.fourtxt {width:700px; height:100px;  background-color:#f7f7f7;

 border-top:1px solid gray; margin-top:28px;}

 div#fourhide {float:left; width:550px; height:60px; display:none; background-color:#f8f8f8; font-size:14px;  padding-top:5px;

 font-weight:550; margin-top:5px; margin-left:5px;

 border-radius:5px 5px 5px 5px;

 box-shadow:3px 3px 3px rgb(246,158,143), 0 0 1px black, 0 0 30px maroon;

 }

  div#fourbt {position:absolute;  right:430px; top:570px; }

 

  div.fivetxt {width:700px; height:100px;  background-color:#f7f7f7;

 border-top:1px solid gray; margin-top:25px;}

   div#fivehide {float:left; width:450px; height:60px; display:none; background-color:#f8f8f8; font-size:14px;  padding-top:5px;

 font-weight:550; margin-top:5px; margin-left:5px;

 border-radius:5px 5px 5px 5px;

 box-shadow:3px 3px 3px rgb(246,158,143), 0 0 1px black, 0 0 30px maroon;

 }
 div#fivebt {position:absolute;  right:430px; top:700px; }

 
 div.sixtxt {width:700px; height:100px; background-color:#f7f7f7;

 border-top:1px solid gray; margin-top:25px;}

 div#sixhide {float:left; width:500px; height:75px; display:none; background-color:#f8f8f8; font-size:14px;  padding-top:5px;

 font-weight:550; margin-top:5px; margin-left:5px;

 border-radius:5px 5px 5px 5px;

 box-shadow:3px 3px 3px rgb(246,158,143), 0 0 1px black, 0 0 30px maroon;

 }

 div#sixbt {position:absolute; right:430px; top:830px; }


 input {background-color:white; border:1;}
 </style>

<script type="text/javascript">
 //보이기

 function div_show1(speed) {

  $("#onehide").show(speed);

 }

 function div_hide1(speed) {

  $("#onehide").hide(speed);

 }

function div_show2(speed) {

  $("#twohide").show(speed);

 }

 function div_hide2(speed) {

  $("#twohide").hide(speed);

 }

function div_show3(speed) {

  $("#threehide").show(speed);

 }

 function div_hide3(speed) {

  $("#threehide").hide(speed);

 }

function div_show4(speed) {

  $("#fourhide").show(speed);

 }

 function div_hide4(speed) {

  $("#fourhide").hide(speed);

 }

function div_show5(speed) {

  $("#fivehide").show(speed);

 }

 function div_hide5(speed) {

  $("#fivehide").hide(speed);

 }

function div_show6(speed) {

  $("#sixhide").show(speed);

 }

 function div_hide6(speed) {

 

  $("#sixhide").hide(speed);

 

 }

 

</script>