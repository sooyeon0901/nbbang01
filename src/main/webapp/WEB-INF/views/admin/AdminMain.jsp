<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 관리자 메인 페이지 -->
<%@ include file="/WEB-INF/views/template/AdminTop.jsp"%>
<!-- Page level plugins -->
   <!--  
    <script src="<%=request.getContextPath()%>/resources/admin/vendor/chart.js/Chart.min.js"></script>
    -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <!-- Page level custom scripts 
    <script src="<%=request.getContextPath()%>/resources/admin/js/demo/chart-area-demo.js"></script>
    <script src="<%=request.getContextPath()%>/resources/admin/js/demo/chart-pie-demo.js"></script>
    <script src="<%=request.getContextPath()%>/resources/admin/js/demo/chart-bar-demo.js"></script>
    -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

               <!-- Page Heading -->
               <div
                  class="d-sm-flex align-items-center justify-content-between mb-4">
                  <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>

               </div>

               <!-- Content Row -->
               <div class="row">

                  <!-- Earnings (Monthly) Card Example -->
                  <div class="col-xl-3 col-md-6 mb-4">
                     <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                           <div class="row no-gutters align-items-center">
                              <div class="col mr-2">
                                 <div
                                    class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    MEMBERS</div>
                                 <div class="h5 mb-0 font-weight-bold text-gray-800">회원 수: ${membercount} </div>
                              </div>
                              <div class="col-auto">
                                 <i class="fas fa-calendar fa-2x text-gray-300"></i>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>

                  <!-- Earnings (Monthly) Card Example -->
                  <div class="col-xl-3 col-md-6 mb-4">
                     <div class="card border-left-success shadow h-100 py-2">
                        <div class="card-body">
                           <div class="row no-gutters align-items-center">
                              <div class="col mr-2">
                                 <div
                                    class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                    MATCHING</div>
                                 <div class="h5 mb-0 font-weight-bold text-gray-800">매칭성사 수: ${matchcount}</div>
                              </div>
                              <div class="col-auto">
                                 <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>

                  <!-- Earnings (Monthly) Card Example -->
                  <div class="col-xl-3 col-md-6 mb-4">
                     <div class="card border-left-info shadow h-100 py-2">
                        <div class="card-body">
                           <div class="row no-gutters align-items-center">
                              <div class="col mr-2">
                                 <div
                                    class="text-xs font-weight-bold text-info text-uppercase mb-1">QnA
                                 </div>
                                 <div class="row no-gutters align-items-center">
                                    <div class="col-auto">
                                       <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">문의 수: ${inqcount}</div>
                                    </div>
                                    <div class="col">
                                       <div class="progress progress-sm mr-2">
                                          <div class="progress-bar bg-info" role="progressbar"
                                             style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                             aria-valuemax="100"></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-auto">
                                 <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>

                  <!-- Pending Requests Card Example -->
                  <div class="col-xl-3 col-md-6 mb-4">
                     <div class="card border-left-warning shadow h-100 py-2">
                        <div class="card-body">
                           <div class="row no-gutters align-items-center">
                              <div class="col mr-2">
                                 <div
                                    class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                    WARNING</div>
                                 <div class="h5 mb-0 font-weight-bold text-gray-800">신고 수: ${reportcount}</div>
                              </div>
                              <div class="col-auto">
                                 <i class="fas fa-comments fa-2x text-gray-300"></i>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div><!-- row -->

               <!-- Content Row 

               <div class="row">

                   Area Chart 가입자 수 추이
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">월별 가입자 수 추이</h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                         Pie Chart 가입 경로 
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">가입 경로</h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart"></canvas>
                                    </div>
                                    <div class="mt-4 text-center small">
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-primary"></i> 홈페이지
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-success"></i> 카카오톡
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-info"></i> 네이버
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                  
                  
               </div> row -->
               
               
               <div class="row">
               
               <!-- Bar Chart 게시글 추이 -->
                  <div class="col-xl-8 col-lg-7">
                          <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">월별 자유/추천 게시글 수 추이</h6>
                                 </div>
                                 <div class="card-body">
                                    <div class="chart-bar">
                                       <canvas id="myBarChart"></canvas>
                                    </div>
                                 </div>
                           </div>
                        </div>
                        
                        <!-- Pie Chart 회원 성별 
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                 Card Header - Dropdown 
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">회원 성별</h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart2"></canvas>
                                    </div>
                                    <div class="mt-4 text-center small">
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-info"></i> 여성
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-dark"></i> 남성
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        -->
                       <!-- 가입 경로 -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">가입 경로</h6>
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
               
               <div class="row">
               
                  <!-- Area Chart 월별 매칭수 추이 -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">월별 매칭 수 추이</h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart2"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Pie Chart 회원 성별 -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">회원 성별</h6>
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
   <!-- End of Page Wrapper -->
<script>

//왜 여기랑 .js 둘 다 해야 나오는 걸까.. 왜 수정할때마다 캐시 지워야하는걸까..ㅠㅠ

//시간대별(월별) ussrbbs게시글 수 추이
var ctx = document.getElementById("myBarChart");

var labels = new Array();
var data = new Array();
<c:forEach items="${ussrCount}" var="result">
   var json = new Object();
   labels.push("${result.paymentmon}");
   data.push("${result.mondata}"); 
   
   console.log('날짜: '+labels);
   console.log('글수: '+data)
</c:forEach>
  
var myBarChart = new Chart(ctx, {
  type: 'bar',
  data: {
    //labels: ["1월", "2월", "3월", "4월", "5월", "6월","7월","8월","9월","10월","11월","12월"],
    labels:labels,
    datasets: [{
      label: "게시글 수",
      backgroundColor: "#4e73df",
      hoverBackgroundColor: "#2e59d9",
      borderColor: "#4e73df",
      //data: [0, 33, 56, 239, 929, 1522, 3500, 5312, 6251, 7841, 9821, 14984]
       data:data
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
              value =  value.join(',');
           
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
<c:forEach items="${partyCount}" var="result" >
   var json = new Object();
   labels.push("${result.partypostmon}");
   data.push("${result.matchcount}");
   
   console.log('날짜 : ' + labels);
   console.log('건수 : ' + data);
</c:forEach>

var myLineChart2 = new Chart(ctx, {
  type: 'line',
  data: {
    //labels: ["1월", "2월", "3월", "4월", "5월", "6월","7월","8월","9월","10월","11월","12월"],
    labels:labels,
    datasets: [{
      label: "매칭수",
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
    	data:data
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
          maxTicksLimit: 5,
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
//가입 경로
var ctx = document.getElementById("myPieChart3");
var labels = new Array();
var data = new Array();
<c:forEach items="${userType}" var="result" >
   var json = new Object();
   labels.push("${result.usertype}");
   data.push("${result.usertypecount}");
   
   console.log('가입경로 : ' + labels);
   console.log('가입경로 수 : ' + data);

</c:forEach>

var myPieChart3 = new Chart(ctx, {
type: 'doughnut',
data: {
 //labels: ["왓챠", "티빙", "디즈니", "웨이브", "넷플릭스", "라프텔"],
 labels:labels,
 datasets: [{
   //data: [5,20,30,10,30,5],
   data:data,
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
//성별 비율
var ctx = document.getElementById("myPieChart4");

var labels = new Array();
var data = new Array();
<c:forEach items="${genderCount}" var="result" >
   var json = new Object();
   labels.push("${result.gender}");
   data.push("${result.gendercount}");
   
   console.log('성별 : ' + labels);
   console.log('성별인원 : ' + data);

   </c:forEach>
var myPieChart4 = new Chart(ctx, {
type: 'doughnut',
data: {
 //labels: ["왓챠", "티빙", "디즈니", "웨이브", "넷플릭스", "라프텔"],
 labels:labels,
 datasets: [{
   //data: [5,20,30,10,30,5],
   data:data,
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
<%@ include file="/WEB-INF/views/template/AdminFooter.jsp"%>