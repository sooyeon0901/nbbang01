<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   </div>
</header>
<body>
   <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>   
   <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/isotope.pkgd.min.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.prettyPhoto.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
 
     
   <script src="<%=request.getContextPath()%>/resources/admin/vendor/chart.js/Chart.min.js"></script>
   <!-- 
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
 	-->
   <!-- 제이쿼리 -->
   <!-- 
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" type="text/javascript"></script>
    -->
   <!-- chart.js -->
   <!--  
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
   -->
   <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
   <!-- jQuery사용을 위한 라이브러리 임베딩-->
   <!-- 1]다운받은  .js파일 임베디드 -->
   <!--  
   <script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
   -->
   <!-- 2]CDN(Content Deliver Network)주소 사용 -->
   <!-- 
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   -->
   <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<!--  
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/popper.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
-->
</body>
<style>
.text-gray-800 {
    color: #5a5c69!important;
.mb-0, .my-0 {
    margin-bottom: 0!important;
}
.h3, h3 {
    font-size: 1.75rem;
}

</style>

      <!-- Begin Page Content -->
            <div class="container-fluid">

               <!-- Page Heading -->
               <div
                  class="d-sm-flex align-items-center justify-content-between mb-4">
                  <h1 class="h3 mb-0 text-gray-800">[${sessionScope.nickname}]님의 My 리포트</h1>
                  <br>
               </div>
      <div class="col-sm-9">
         <div class="card border-left-primary shadow h-100 py-2" >
            <div class="card-body">
               <div class="row no-gutters align-items-center">
                  <div class="col mr-2">
                     <!-- <input type="hidden" name="email"> -->
                     <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">   Average Cost(KRW)</div>
                     <div class="h5 mb-0 font-weight-bold text-gray-800">Years ₩ ${yearSum}</div>
                     <div class="h5 mb-0 font-weight-bold text-gray-800">Month ₩ ${monthSum} </div>
                     <div class="h5 mb-0 font-weight-bold text-gray-800">Week ₩ ${weekSum} </div>                     
                  </div>
                  <div class="col-auto">
                     <i class="fas fa-calendar fa-2x text-gray-300"></i>
                  </div>
               </div>
            </div>
      </div>
   
   <!-- Content Row -->
               <hr>
               <div class="row">
               
               <!-- Bar Chart 월별 총계(향후 12개월) -->
               <div class="col-xl-8 col-lg-7">
                          <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h4 class="m-0 font-weight-bold text-primary">월별 지출 액수</h4>
                                 </div>
                                 <div class="card-body">
                                    <div class="chart-bar">
                                       <canvas id="myBarChart"></canvas>
                                    </div>
                                 </div>
                           </div>
                        </div>
                         <!-- Pie Chart 폴더 총계(향후 12개월) -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h4 class="m-0 font-weight-bold text-primary">월별 지출 현황</h4>
                                </div>
                                <div class="card-body">
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart3"></canvas>
                                    </div>
                                    <div class="mt-4 text-center small">
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-primary"></i> 왓챠
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-success"></i> 티빙
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-info"></i> 디즈니<br/>
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-warning"></i> 웨이브
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-danger"></i> 넷플릭스
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-secondary"></i> 라프텔
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                   </div><!-- row -->
                   <br/>
               <div class="row">
                  <!-- Area Chart 월별 총계(향후 12개월) -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h4 class="m-0 font-weight-bold text-primary">월별 지출 건수</h4>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart2"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                       <!-- Pie Chart 폴더 총계(향후 12개월) -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h4 class="m-0 font-weight-bold text-primary">월별 지출 건수</h4>
                                </div>
                                <div class="card-body">
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart4"></canvas>
                                    </div>
                                    <div class="mt-4 text-center small">
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-primary"></i> 왓챠
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-success"></i> 티빙
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-info"></i> 디즈니<br/>
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-warning"></i> 웨이브
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-danger"></i> 넷플릭스
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-secondary"></i> 라프텔
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
               </div><!-- row -->
               
               
            </div><!-- container-fluid -->
         </div>
      </div>
   </div>
</div>

<script>
   
   //왜 여기랑 .js 둘 다 해야 나오는 걸까.. 왜 수정할때마다 캐시 지워야하는걸까..ㅠㅠ

   
   var ctx = document.getElementById("myBarChart");
   
   var labels = new Array();
   var data = new Array();
   <c:forEach items="${myReportList2}" var="result" >
      var json = new Object();
      labels.push("${result.paymentmon}");
      data.push("${result.money}");
      
      console.log('날짜 : ' + labels);
      console.log('금액 : ' + data);
   </c:forEach>
   
   var myBarChart = new Chart(ctx, {
     type: 'bar',
     data: {
       //labels: ["1월", "2월", "3월", "4월", "5월", "6월","7월","8월","9월","10월","11월","12월"],
       labels: labels, 
       datasets: [{
         label: "지출 액수",
         backgroundColor: "#4e73df",
         hoverBackgroundColor: "#2e59d9",
         borderColor: "#4e73df",
         //data: [0, 33, 56, 239, 929, 1522, 3500, 5312, 6251, 7841, 9821, 14984]
         data: data
       }],
     },
     options: {
       maintainAspectRatio: false,
       layout: {
         padding: {
           left: 10,
           right: 25,
           top: 25,
           bottom: 0
         }
       },
       scales: {
         xAxes: [{
           time: {
             unit: 'month'
           },
           gridLines: {
             display: false,
             drawBorder: false
           },
           ticks: {
             maxTicksLimit: 6
           },
           maxBarThickness: 25,
         }],
      /*   yAxes: [{
           ticks: {
             min: 0,
             max: 15000,
             maxTicksLimit: 5,
             padding: 10
             
           },
        */   
           
           yAxes: [{
              ticks: {
                maxTicksLimit: 10000,
                padding: 10,
                Max: 10000000,
                callback: function(value, index, values) {
                   value = value.toString();
                   value = value.split(/(?=(?:...)*$)/);
                   value = value.join(',');
                
                  return value+"원";
                }
              },           
           
           gridLines: {
             color: "rgb(234, 236, 244)",
             zeroLineColor: "rgb(234, 236, 244)",
             drawBorder: false,
             borderDash: [2],
             zeroLineBorderDash: [2]
           }
         }],
       },
       legend: {
         display: false
       },
       tooltips: {
         titleMarginBottom: 10,
         titleFontColor: '#6e707e',
         titleFontSize: 14,
         backgroundColor: "rgb(255,255,255)",
         bodyFontColor: "#858796",
         borderColor: '#dddfeb',
         borderWidth: 1,
         xPadding: 15,
         yPadding: 15,
         displayColors: false,
         caretPadding: 10,
         
       }
     }
   });


   //Area Chart Example(월별 매칭 수 추이)
   var ctx = document.getElementById("myAreaChart2");
   
   var labels = new Array();
   var data = new Array();
   <c:forEach items="${myReportList2}" var="result" >
      var json = new Object();
      labels.push("${result.paymentmon}");
      data.push("${result.mondata}");
      
      console.log('날짜 : ' + labels);
      console.log('건수 : ' + data);
   </c:forEach>
   
   var myLineChart2 = new Chart(ctx, {
     type: 'line',
     data: {
       //labels: ["1월", "2월", "3월", "4월", "5월", "6월","7월","8월","9월","10월","11월","12월"],
       labels: labels, 
       datasets: [{
         label: "지출 건수",
         lineTension: 0.3,
         backgroundColor: "rgba(78, 115, 223, 0.05)",
         borderColor: "rgba(78, 115, 223, 1)",
         pointRadius: 3,
         pointBackgroundColor: "rgba(78, 115, 223, 1)",
         pointBorderColor: "rgba(78, 115, 223, 1)",
         pointHoverRadius: 3,
         pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
         pointHoverBorderColor: "rgba(78, 115, 223, 1)",
         pointHitRadius: 10,
         pointBorderWidth: 2,
         //data: [600, 300, 400, 300, 400, 300, 700, 800, 400, 300, 400, 700],
         data: data
       }],
     },
     options: {
       maintainAspectRatio: false,
       layout: {
         padding: {
           left: 10,
           right: 25,
           top: 25,
           bottom: 0
         }
       },
       scales: {
         xAxes: [{
           time: {
             unit: 'date'
           },
           gridLines: {
             display: false,
             drawBorder: false
           },
           ticks: {
             maxTicksLimit: 7
           }
         }],
         yAxes: [{
           ticks: {
             maxTicksLimit: 10,
             padding: 10,
             Max: 100,
             callback: function(value, index, values) {
                value = value.toString();
                value = value.split(/(?=(?:...)*$)/);
                value = value.join(',');
             
               return value+"건";
             }
           },
           gridLines: {
             color: "rgb(234, 236, 244)",
             zeroLineColor: "rgb(234, 236, 244)",
             drawBorder: false,
             borderDash: [2],
             zeroLineBorderDash: [2]
           }
         }],
       },
       legend: {
         display: false
       },
       tooltips: {
         backgroundColor: "rgb(255,255,255)",
         bodyFontColor: "#858796",
         titleMarginBottom: 10,
         titleFontColor: '#6e707e',
         titleFontSize: 14,
         borderColor: '#dddfeb',
         borderWidth: 1,
         xPadding: 15,
         yPadding: 15,
         displayColors: false,
         intersect: false,
         mode: 'index',
         caretPadding: 10
         
       }
     }
   });//myAreaChart2



   //Pie Chart Example3-ott
   var ctx = document.getElementById("myPieChart3");
   
   var labels = new Array();
   var data = new Array();
   <c:forEach items="${myReportList}" var="result" >
      var json = new Object();
      labels.push("${result.subservice}");
      data.push("${result.money}");
      
      console.log('서비스 : ' + labels);
      console.log('금액 : ' + data);
   </c:forEach>
   
   var myPieChart3 = new Chart(ctx, {
   type: 'doughnut',
   data: {
    //labels: ["왓챠", "티빙", "디즈니", "웨이브", "넷플릭스", "라프텔"],
    labels: labels,
    datasets: [{
      //data: [5,20,30,10,30,5],
      data: data,
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#f6c23e', '#e74a3b', '#858796'],
      hoverBackgroundColor: ['#2e59d9', '#17a673'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
   },
   options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
   },
   });
   
   //Pie Chart Example3-ott
   var ctx = document.getElementById("myPieChart4");
   
   var labels = new Array();
   var data = new Array();
   <c:forEach items="${myReportList}" var="result" >
      var json = new Object();
      labels.push("${result.subservice}");
      data.push("${result.mondata}");
      
      console.log('서비스 : ' + labels);
      console.log('건수 : ' + data);
   </c:forEach>
   
   
   var myPieChart4 = new Chart(ctx, {
   type: 'doughnut',
   data: {
    //labels: ["왓챠", "티빙", "디즈니", "웨이브", "넷플릭스", "라프텔"],
    labels: labels,
    datasets: [{
      //data: [5,20,30,10,30,5],
      data: data,
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#f6c23e', '#e74a3b', '#858796'],
      hoverBackgroundColor: ['#2e59d9', '#17a673'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
   },
   options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
   },
   });


</script>
