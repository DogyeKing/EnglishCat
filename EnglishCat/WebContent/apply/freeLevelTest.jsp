<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head id="ctl00_Head1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Bright">

<!--     Google Maps
    <style>
      #google-map,
      body,
      html {
        padding: 0;
        height: 400px;
      }
    </style> -->
    
  </head>
  <body>
    
    <%@include file="/include/header.jsp" %>

    <!-- Page Header Start -->
    <div class="page-header" style="background: url(<%=request.getContextPath()%>/assets/img/banner1.jpg);">
      <div class="container">
        <div class="row">         
          <div class="col-md-12">
            <div class="breadcrumb-wrapper">
              <h2 class="page-title">무료체험 신청</h2>
              <a href="index.html">Home</a>
              <span>/</span>
              <span class="current">Free Class</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page Header End --> 
  
  <%-- <div class="col-md-5 col-sm-6 col-xs-12">
                    <div class="sign-up box">
                        <div class="heading">
                            <h2 class="heading-title">Sign Up Now</h2>
                            <p class="desc">Get Free Courses</p>
                        </div>
                        <form role="form" class="login-form" action="<%=request.getContextPath()%>/sendMail.jsp" method="post">
                            <div class="form-group">
                                <input type="text" id="sender-from" class="form-control" name="from" placeholder="Enter your Email">
                            </div>
                            <div class="form-group">
                                <input type="text" id="sender-to" class="form-control" name="to" placeholder="Enter your Email">
                            </div>  
                            <div class="form-group">
                                <input type="text" id="sender-subject" class="form-control" name="subject" placeholder="Enter your Subject">
                            </div> 
                                                        <div class="form-group">
                                <input type="text" id="sender-subject" class="form-control" name="subject" placeholder="Enter your Subject">
                            </div> 
                            <div class="form-group">
                                <input type="text" id="sender-content" class="form-control" name="content" placeholder="Enter your Content">
                            </div>   
                            <button class="btn btn-common" onclick="check()" value="transmission">Enroll Now</button>
                          </form>
                    </div>
                </div> --%>
                
    <!-- Start Content Section -->
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h2 class="medium-title">무료체험 신청서</h2>   
            <!-- Form -->
          
            <form id="contactForm" class="contact-form" data-toggle="validator">
              <div class="row">
                <div class="col-md-6">
                  <input type="text" class="form-control" id="name" name="name" placeholder="이름:" required data-error="이름을 입력하세요.">
                  <div class="help-block with-errors"></div>
                </div>
                <div class="col-md-6">
                  <input type="email" class="form-control" id="age" placeholder="나이:" required data-error="나이를 입력하세요">
                  <div class="help-block with-errors"></div>
                </div>          
               <div class="col-md-6">
                  <input type="text" class="form-control" id="phone" name="phone" placeholder="전화번호:" required data-error="전화번호를 입력하세요">
                  <div class="help-block with-errors"></div>
                </div>
                <div class="col-md-6">
                  <input type="email" class="form-control" id="email" placeholder="이메일:" required data-error="이메일을 입력하세요">
                  <div class="help-block with-errors"></div>
                </div>            
                <div class="col-md-12">
                  <textarea class="form-control" placeholder="원하시는 날짜,시간 입력 ex(2018-09-18, 18:00)" rows="9" required data-error="원하시는 날짜, 시간을 반드시 입력하세요"></textarea>
                  <div class="help-block with-errors"></div>
                </div>
                <div class="col-md-6">
                  <button type="submit" id="submit" class="btn btn-common">Send Now</button>
                  <div id="msgSubmit" class="hidden"></div> 
                  <div class="clearfix"></div>  
                </div>
              </div> 
            </form>
        
        
          </div>
          <div class="col-md-6">
            <h2 class="medium-title">무료체험 신청시 주의 사항</h2>   
            <div class="information"> 

   
<p>1. 수업을 위해서는 반드시 스카이프 설치와 회원가입이 필요합니다.</p>  
<p>2. 스카이프의 아이디는 스카이프 회원가입 하실 때 등록하신 전화번호 또는 이메일주소입니다.</p>
<p>3. 무료수업 신청 이후, 확인이 되면 확인문자가 전달됩니다. 너무 갑작스런 신청은 누락이 될 수 있으며 적어도 1시간 이전에 신청 부탁 드립니다.</p>
<p>4. 수업 시작 적어도 5분전에 스카이프에 입장하시기 바랍니다.</p>
<p>5. 수업은 PC, 노트북, 패드, 모바일에서 모두 가능합니다.</p>
<p>6.  PC로 진행하실 경우, 웹카메라, 마이크 달린 헤드셋이 추가로 필요합니다.</p>
<p>7. 스카이프 프로그램을 설치하신 후 마이크 혹은 화상카메라 정상 작동 여부를 반드시 확인해주시기 바랍니다.</p>
<p>8. 무료체험 수업 신청시 스카이프 아이디가 없으신 분들은 수업 전 010-9363-7923 또는 카톡 아이디 englishcat으로 전달부탁드립니다.</p>
                        
              <div class="contact-datails">
                <p><i class="fa fa-phone"></i>   051 753 5600</p>
                <p><i class="fa fa-envelope"></i> hello@brightuniversity.edu</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Content Section  -->

<<<<<<< HEAD
    <!-- Start Map Section -->
    <div id="" class="container">
    <img src="<%=request.getContextPath()%>/assets/img/apply/img1.jpg">
    </div>
    <!-- End Map Section -->

<!--       Google Maps API
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHo_WtZ2nIYCgCLf7sINZaqcrpqSDio9o"></script>
      Google Maps JS Only for Contact Pages
      <script type="text/javascript">
      var map;
      var defult = new google.maps.LatLng(55.8638037, -4.2834354,13.67);
      var mapCoordinates = new google.maps.LatLng(55.8638037, -4.2834354,13.67); 
      
      
      var markers = [];
      var image = new google.maps.MarkerImage(
        'assets/img/map-marker.png',
        new google.maps.Size(84, 70),
        new google.maps.Point(0, 0),
        new google.maps.Point(60, 60)
      );
      
      function addMarker() {
        markers.push(new google.maps.Marker({
          position: defult,
          raiseOnDrag: false,
          icon: image,
          map: map,
          draggable: false
        }
      ));
        
      }
      
      function initialize() {
        var mapOptions = {
          backgroundColor: "#ffffff",
          zoom: 15,
          disableDefaultUI: true,
          center: mapCoordinates,
          zoomControl: false,
          scaleControl: false,
          scrollwheel: false,
          disableDoubleClickZoom: true,
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          styles: [{
            "featureType": "landscape.natural",
            "elementType": "geometry.fill",
            "stylers": [{
              "color": "#ffffff"
            }
                       ]
          }
                   , {
                     "featureType": "landscape.man_made",
                     "stylers": [{
                       "color": "#ffffff"
                     }
                                 , {
                                   "visibility": "off"
                                 }
                                ]
                   }
                   , {
                     "featureType": "water",
                     "stylers": [{
                       "color": "#80C8E5"
                     }
                                 , {
                                   "saturation": 0
                                 }
                                ]
                   }
                   , {
                     "featureType": "road.arterial",
                     "elementType": "geometry",
                     "stylers": [{
                       "color": "#999999"
                     }
                                ]
                   }
                   , {
                     "elementType": "labels.text.stroke",
                     "stylers": [{
                       "visibility": "off"
                     }
                                ]
                   }
                   , {
                     "elementType": "labels.text",
                     "stylers": [{
                       "color": "#333333"
                     }
                                ]
                   }
                   
                   , {
                     "featureType": "road.local",
                     "stylers": [{
                       "color": "#dedede"
                     }
                                ]
                   }
                   , {
                     "featureType": "road.local",
                     "elementType": "labels.text",
                     "stylers": [{
                       "color": "#666666"
                     }
                                ]
                   }
                   , {
                     "featureType": "transit.station.bus",
                     "stylers": [{
                       "saturation": -57
                     }
                                ]
                   }
                   , {
                     "featureType": "road.highway",
                     "elementType": "labels.icon",
                     "stylers": [{
                       "visibility": "off"
                     }
                                ]
                   }
                   , {
                     "featureType": "poi",
                     "stylers": [{
                       "visibility": "off"
                     }
                                ]
                   }
                   
                  ]
          
        }
            ;
        map = new google.maps.Map(document.getElementById('google-map'), mapOptions);
        addMarker();
        
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script> -->
=======
    
>>>>>>> 2c20449def758a75f573e9e7c56b82d4814fed56

	<!-- Footer Section -->
	<jsp:include page="/include/footer.jsp" />
	<!-- Footer Section End-->

	<!-- Go To Top Link -->
	<a href="#" class="back-to-top"> <i class="fa fa-arrow-up"></i>
	</a>

	<!-- <div class="loader">
		<div class="preloader2">
			<span></span> <span></span> <span></span> <span></span> <span></span>
		</div>
	</div> -->

	<!-- jQuery  -->
	<%@include file="/include/jquery.jsp"%>

  </body>
</html>