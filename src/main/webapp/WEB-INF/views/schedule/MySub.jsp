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
	
<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script>
		//생년월일 달력
		$(function(){
			 var date = new Date();
			 $("#datepicker").datepicker({
				dateFormat:"yy년 mm월 dd일",
				showOtherMonths: true,
				monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		        showMonthAfterYear: true,
		        yearSuffix: '년',
				buttonImage: "resources/images/calendar.png",
				buttonText:"생년월일 선택",
				showOn:"both",
				buttonImageOnly:true,
				changeMonth: true,
			    changeYear: true,
			    showButtonPanel: true
			});	
			$('.ui-datepicker-trigger').css({height:'30px', cursor: 'Pointer'});
		});
		
</script>

<!-- https://codepen.io/blcveen/pen/jwMdrX -->
<div id="viewport">
  <!-- Sidebar -->
  <div id="sidebar">
    <header>
      <a href="#">Folders</a>
    </header>
    <ul class="nav">
      <li>
        <a href="#">
          <i class="zmdi zmdi-view-dashboard"></i> Watch
        </a>
      </li>
      <li>
        <a href="#">
          <i class="zmdi zmdi-link"></i> Game
        </a>
      </li>
      <li>
        <a href="#">
          <i class="zmdi zmdi-widgets"></i> Movie
        </a>
      </li>
      <li>
        <a href="#">
          <i class="zmdi zmdi-calendar"></i> Music
        </a>
      </li>
      <li>
        <a href="#">
          <i class="zmdi zmdi-info-outline"></i> life
        </a>
      </li>
      <li>
        <a href="#">
          <i class="zmdi zmdi-settings"></i> Services
        </a>
      </li>
      <li>
        <a href="#">
          <i class="zmdi zmdi-comment-more"></i> new
        </a>
      </li>
    </ul>
  </div>
  <!-- Content -->
  <div id="content">
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <ul class="nav navbar-nav navbar-right">
          <li>
            <a href="#"><i class="zmdi zmdi-notifications text-danger"></i>
            </a>
          </li>
          <li>
			          	<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">New</button>
			
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="exampleModalLabel">New</h4>
			      </div>
			      <div class="modal-body">
			        <form>
			          <div class="form-group">
			            <img src="..." alt="alt:로고이미지" class="img-thumbnail">
			          </div>
			          <div class="form-group">
			            <label for="recipient-name" class="control-label">구독서비스명</label>
			            <input type="text" class="form-control" id="recipient-name">
			          </div>
			          <div class="form-group">
			            <label for="recipient-name" class="control-label">월 구독료</label>
			            <input type="text" class="form-control" id="recipient-name">
			          </div>
			          
			          <div class="form-group">
			            <label for="message-text" class="control-label">메모</label>
			            <textarea class="form-control" id="message-text"></textarea>
			          </div>
			           
			        </form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			        <button type="button" class="btn btn-primary">등록</button>
			      </div>
			    </div>
			  </div>
			</div>
          
          </li>
        </ul>
      </div>
    </nav>
    <div class="container-fluid">
      <h1>Netflix</h1>
      <p>
        넷플릭스 
        <code>#watch</code>.
      </p>
    </div>
    <div class="container-fluid">
      <h1>SpoTV</h1>
      <p>
        스포티비 
        <code>#watch</code>.
      </p>
    </div>
    <div class="container-fluid">
      <h1>Watcha</h1>
      <p>
        왓챠 
        <code>#watch</code>.
      </p>
    </div>
    <div class="container-fluid">
      <h1>Disney</h1>
      <p>
        디즈니 
        <code>#watch</code>.
      </p>
    </div>
  </div>
</div>

<style>
@import url('https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500');

body {
  overflow-x: hidden;
  font-family: 'Roboto', sans-serif;
  font-size: 16px;
}

/* Toggle Styles */

#viewport {
  padding-left: 250px;
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  transition: all 0.5s ease;
}

#content {
  width: 100%;
  position: relative;
  margin-right: 0;
}

/* Sidebar Styles */

#sidebar {
  z-index: 1000;
  position: fixed;
  left: 250px;
  width: 250px;
  height: 100%;
  margin-left: -250px;
  overflow-y: auto;
  background: #37474F;
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  transition: all 0.5s ease;
}

#sidebar header {
  background-color: #263238;
  font-size: 20px;
  line-height: 52px;
  text-align: center;
}

#sidebar header a {
  color: #fff;
  display: block;
  text-decoration: none;
}

#sidebar header a:hover {
  color: #fff;
}

#sidebar .nav{
  
}

#sidebar .nav a{
  background: none;
  border-bottom: 1px solid #455A64;
  color: #CFD8DC;
  font-size: 14px;
  padding: 16px 24px;
}

#sidebar .nav a:hover{
  background: none;
  color: #ECEFF1;
}

#sidebar .nav a i{
  margin-right: 16px;
}

/*Modal Style*/

</style>
	

