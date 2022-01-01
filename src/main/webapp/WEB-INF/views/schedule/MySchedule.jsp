<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<div class="page-header">
		<h1>
			결제일 스케줄러 <small>결제일 정리하기 힘드셨죠? 이젠 편리하게 하세요</small>
		</h1>
	</div>

	<!DOCTYPE html>
	<html>
	<head>
	<meta charset='utf-8' />
	<title>Initialize Globals Demo - Demos | FullCalendar</title>
	<link href='/assets/demo-to-codepen.css' rel='stylesheet' />
	<style>
	html, body {
		margin: 0;
		padding: 0;
		font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
		font-size: 14px;
	}
	
	#calendar {
		max-width: 1100px;
		margin: 40px auto;
	}
	</style>
	<link
		href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.css'
		rel='stylesheet' />
	<script	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js'></script>
	
	<script src='/assets/demo-to-codepen.js'></script>
	
	<script>
	
	  document.addEventListener('DOMContentLoaded', function() {
	    var calendarEl = document.getElementById('calendar');
	
	    var calendar = new FullCalendar.Calendar(calendarEl, {
	      locale: "ko",
	      initialView: 'dayGridMonth',
	      headerToolbar: {
	        left: 'prev,next today',
	        center: 'title',
	        right: 'dayGridMonth,timeGridWeek,timeGridDay'
	      },
	      events: [
	        {
	          title: 'All Day Event',
	          start: '2021-11-01'
	        },
	        {
	          title: 'Long Event',
	          start: '2021-11-07',
	          end: '2021-11-10'
	        },
	        {
	          groupId: '999',
	          title: 'Repeating Event',
	          start: '2021-11-09T16:00:00'
	        },
	        {
	          groupId: '999',
	          title: 'Repeating Event',
	          start: '2021-11-16T16:00:00'
	        },
	        {
	          title: 'Conference',
	          start: '2021-11-11',
	          end: '2021-11-13'
	        },
	        {
	          title: 'Meeting',
	          start: '2021-11-12T10:30:00',
	          end: '2021-11-12T12:30:00'
	        },
	        {
	          title: 'Lunch',
	          start: '2021-11-12T12:00:00'
	        },
	        {
	          title: 'Meeting',
	          start: '2021-11-12T14:30:00'
	        },
	        {
	          title: 'Birthday Party',
	          start: '2021-11-13T07:00:00'
	        },
	        {
	          title: 'Click for Google',
	          url: 'http://google.com/',
	          start: '2021-11-28'
	        }
	      ]
	    });
	
	    calendar.render();
	  });
	
	</script>
	
	</head>
	<body>
		<div class='demo-topbar'>
			<button data-codepen class='codepen-button'>Edit in CodePen</button>




		initialization of calendar with browser globals

	</div>

	<div id='calendar'></div>
</body>

	</html>

</div>
