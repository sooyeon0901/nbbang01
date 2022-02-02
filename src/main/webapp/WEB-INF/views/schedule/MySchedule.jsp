<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</div>
</header>

<div class="container">
   <div class="page-header">
      <h1>
         결제일 스케줄러 <small>결제일 정리하기 힘드셨죠? 이젠 편리하게 하세요</small>
      </h1>

   </div>
   <!DOCTYPE html>
   <html lang='en'>
   <style>
       .fc-event{
          margin-top:5px;
          cursor:move
         }
   </style>
     <head>
       <meta charset='utf-8' />
       <link href='resources/css/main.css' rel='stylesheet' />       
       <script src='resources/js/main.js'></script>
       <script src='resources/js/ko.js'></script>
       <script class="cssdesk" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.0/moment.min.js" type="text/javascript"></script>
      
       <script>
        var calendar = null;
         $(document).ready(function() {
            var Calendar = FullCalendar.Calendar;
             var Draggable = FullCalendar.Draggable;

             var containerEl = document.getElementById('external-events');
             var calendarEl = document.getElementById('calendar');
             var checkbox = document.getElementById('drop-remove');

             // initialize the external events
             // -----------------------------------------------------------------

             new Draggable(containerEl, {
               itemSelector: '.fc-event',
               eventData: function(eventEl) {
                 return {
                   title: eventEl.innerText
                 };
               }
             });
             // initialize the calendar
             // -----------------------------------------------------------------

              calendar = new Calendar(calendarEl, {
               headerToolbar: {
                 right: 'prev,next today',
                 left: 'title'
               },               
               editable: true, //수정가능여부
               droppable: true, // this allows things to be dropped onto the calendar
               drop: function(info) {
                 // is the "remove after drop" checkbox checked?
                 if (checkbox.checked) {
                   // if so, remove the element from the "Draggable Events" list
                   info.draggedEl.parentNode.removeChild(info.draggedEl);
                 }
               },               
               locale: 'ko',
               events: [
                  <c:forEach var="item" items="${lists}" varStatus="loop">
                   { 
                      title : '${item.calSubTitle}', 
                      start : '${item.startDate}', 
                      end : '${item.endDate}' 
                   }<c:if test="${not loop.last}">,</c:if>
                </c:forEach>
               ]
             });

             calendar.render();
             
         });
         
         //1. 전체 이벤트 데이터를 추출해야 한다. 2. ajax로 서버에 전송하여 DB에 저장해야 한다
         function allSave()
         {
            var allEvent = calendar.getEvents();
                   
            for(var i=0; i < allEvent.length; i++)
            {
               var obj = new Object();
               
               var json = {"title":allEvent[i]._def.title, "allday" : allEvent[i]._def.allDay, "start" :moment(allEvent[i]._instance.range.start).format('YYYY/MM/DD') , "end" : moment(allEvent[i]._instance.range.end).format('YYYY/MM/DD'),"email": "${sessionScope.email}"};
               console.log(json);
               $.ajax({
                  type: 'POST',
                  url: '<c:url value="/schedule/checkDouble.do"/>',
                  data: json,
                  dataType: 'text',
                  async : false //동기처리
               })
               .done(function(result){
                  console.log(result);
                  if(result==0){
                     savedata(json);
                  }
                  else{
                     saveupdate(json);
                  }
               })
               .fail(function(req,error){
                  console.log(req);
               });
            }
            
         }
         
         function savedata(json)
         {
            $.ajax({
               type: 'POST',
               url: '<c:url value="/schedule/MySchedule.do"/>',
               data: json,
               dataType: 'text',
               async : false //동기처리
            })
            .done(function(result){
               console.log(result);
            })//성공했을때
            .fail(function(request, status, error){
               alert("저장했습니다:" + error);
            })//실패했을때
         }
         
         function saveupdate(json)
         {
            $.ajax({
               type: 'POST',
               url: '<c:url value="/schedule/saveUpdate.do"/>',
               data: json,
               dataType: 'text',
               async : false //동기처리
            })
            .done(function(result){
               console.log(result);
            })//성공했을때
            .fail(function(request, status, error){
               alert("저장했습니다:" + error);
            })//실패했을때
         }
         
         
         
         
         

       </script>
     </head>
     <body>
     
  <div id='external-events' style="float:left; width:20%; padding-right:30px; padding-left:20px; margin-top:10px">
    <p>
      <strong>드래그하여 캘린더에 배정하세요</strong>
    </p>

    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:red">
      <div class='fc-event-main'>넷플릭스</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:blue">
      <div class='fc-event-main'>닌텐도스위치</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:navy">
      <div class='fc-event-main'>디즈니+</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:lightgreen">
      <div class='fc-event-main'>멜론</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:orange">
      <div class='fc-event-main'>벅스</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:darkgreen">
      <div class='fc-event-main'>스포티비나우</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:sky blue">
      <div class='fc-event-main'>아이클라우드</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:red">
      <div class='fc-event-main'>유튜브프리미엄</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:silver">
      <div class='fc-event-main'>애플뮤직</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:pink">
      <div class='fc-event-main'>왓챠</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:darkblue">
      <div class='fc-event-main'>웨이브</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:red">
      <div class='fc-event-main'>티빙</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:darkblue">
      <div class='fc-event-main'>플로</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:silver">
      <div class='fc-event-main'>플레이스테이션</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:orange" >
      <div class='fc-event-main'>카카오이모티콘+</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:orange" >
      <div class='fc-event-main'>꾸까</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:lightgreen">
      <div class='fc-event-main'>네이버+</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:red">
      <div class='fc-event-main'>더반찬</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:lightgreen">
      <div class='fc-event-main'>런드리고</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:lightblue">
      <div class='fc-event-main'>쏘카</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:darkblue">
      <div class='fc-event-main'>와이즐리</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:red">
      <div class='fc-event-main'>월간과자</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:darkblue">
      <div class='fc-event-main'>위클리 셔츠</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:green">
      <div class='fc-event-main'>잡플래닛</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:blue">
      <div class='fc-event-main'>쿠팡 와우</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:blue">
      <div class='fc-event-main'>필리</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:red">
      <div class='fc-event-main'>하비인더박스</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:purple">
      <div class='fc-event-main'>해피문데이</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:darkgreen">
      <div class='fc-event-main'>BBC사이언스</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:purple">
      <div class='fc-event-main'>리디셀렉트</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:sky blue">
      <div class='fc-event-main'>밀리의 서재</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:purple">
      <div class='fc-event-main'>매경e신문</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:red">
      <div class='fc-event-main'>빅이슈</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:blue">
      <div class='fc-event-main'>예스24북클럽</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:green">
      <div class='fc-event-main'>윌라</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:purple;">
      <div class='fc-event-main'>조인스 프라임</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-eve0nt' style="background-color:fuchsia">
      <div class='fc-event-main'>퍼블리</div>
    </div>
    <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color:green">
      <div class='fc-event-main'>핀즐</div>
    </div>
    

    <p>
      <input type='checkbox' id='drop-remove' checked/>
      <label for='drop-remove'>드래그 앤 드롭후 제거</label>
    </p>
  </div>
     <div style="float:left; width:80%">
        <div style="height:30px; text-align:center; font-size:35px; color:orange; margin-bottom:30px; fint-weight:bold">
           <div style="width:60%; float:left; text-align:right">결제일 관리 현황</div>
           <div style="width:40%; float:left; text-align:right">
              <button style="width:120px; height:40px; background-color:hotpink; color:white; vertical-align:middle;
              font-size:17px; cursor:pointer" onclick="javascript:allSave();">전체 저장</button>             
           </div>
          </div>
       <div id='calendar'>
          
       </div>
   </div>
     </body>
   </html>
   </div>
