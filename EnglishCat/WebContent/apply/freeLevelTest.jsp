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

    <!-- Google Maps -->
    <style>
      #google-map,
      body,
      html {
        padding: 0;
        height: 400px;
      }
    </style>
    
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
                  <input type="text" class="form-control" id="name" name="name" placeholder="Name:" required data-error="Please enter your name">
                  <div class="help-block with-errors"></div>
                </div>
                <div class="col-md-6">
                  <input type="email" class="form-control" id="email" placeholder="Email:" required data-error="Please enter your email">
                  <div class="help-block with-errors"></div>
                </div>                   
                <div class="col-md-12">
                  <textarea class="form-control" placeholder="원하시는 날짜,시간 입력 ex(2018-09-18, 18:00)" rows="9" required data-error="Write your message"></textarea>
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
            <h2 class="medium-title">Contact Info</h2>   
            <div class="information"> 
              <p>Aliquet  id nunc cubilia sit enim fusce lacus enim nec, sed integer ac malesuada lectus etiam metus.</p>
              <p>Aliquet  id nunc cubilia sit enim fusce lacus enim nec, sed integer ac malesuada lectus etiam metus.</p>             
              <div class="contact-datails">
                <p><i class="fa fa-map-marker"></i>  Sydney NSW 2052, Australia</p>
                <p><i class="fa fa-phone"></i>  +61 2 9385 1000</p>
                <p><i class="fa fa-envelope"></i> hello@brightuniversity.edu</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Content Section  -->

    <!-- Start Map Section -->
    <div id="google-map"></div>
    <!-- End Map Section -->

      <!-- Google Maps API -->
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHo_WtZ2nIYCgCLf7sINZaqcrpqSDio9o"></script>
      <!-- Google Maps JS Only for Contact Pages -->
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
    </script>

	<!-- Footer Section -->

	<jsp:include page="/include/footer.jsp" />
	<!-- Footer Section End-->

	<!-- Go To Top Link -->
	<a href="#" class="back-to-top"> <i class="fa fa-arrow-up"></i>
	</a>

	<div class="loader">
		<div class="preloader2">
			<span></span> <span></span> <span></span> <span></span> <span></span>
		</div>
	</div> -->

	<!-- jQuery  -->
	<%@include file="/include/jquery.jsp"%>

  </body>
</html>