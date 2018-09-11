<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
            <!-- Bootstrap CSS -->    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
    <!-- Main Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/main.css">
    <!-- Normalize Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/normalize.css">
    <!-- Fonts Awesome -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/fonts/font-awesome.min.css">
 
    <!-- Animate CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/animate.css" type="text/css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/owl.theme.css" type="text/css">
    <!-- Rev Slider Css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/settings.css" type="text/css">
    <!-- Nivo Lightbox Css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/nivo-lightbox.css" type="text/css">
    <!-- Slicknav Css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slicknav.css" type="text/css">
    <!-- Responsive Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/responsive.css">

    <!-- Color CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/colors/sky.css" media="screen" />
    
    <footer>
      <!-- Container Starts -->
      <div class="container">
        <!-- Row Starts -->
        <div class="row">
          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-3 col-sm-6 col-xs-12">
            <h3 class="small-title">
              Contact Info
            </h3>
            <p>
              A powerhouse of cutting-edge education, research & teaching in The World
            </p>  
            <ul class="address">
                <li><i class="fa fa-home"></i> Sydney NSW 2052, Australia</li>
                <li><i class="fa fa-phone"></i> +61 2 9385 1000</li>
                <li><i class="fa fa-envelope"></i> hello@brightuniversity.edu</li>
            </ul>        
          </div><!-- Footer Widget Ends -->
          
          
          <!-- 네이버 지도 - 특정 주소에 마커 표시 - web -->
          
          <div class="footer-widget col-md-3 col-sm-6 col-xs-12">
            <h3 class="small-title">
          		Our Map
          	</h3>	
          <div id="map" style="width:230px;height:230px;"></div>
          <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=xb9ikYxbYgp06J40eGdR&submodules=geocoder"></script>
		    <script>
		      var map = new naver.maps.Map('map');
		      var myaddress = '중앙대로 708';// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
		      naver.maps.Service.geocode({address: myaddress}, function(status, response) {
		          if (status !== naver.maps.Service.Status.OK) {
		              return alert(myaddress + '의 검색 결과가 없거나 기타 네트워크 에러');
		          }
		          var result = response.result;
		          // 검색 결과 갯수: result.total
		          // 첫번째 결과 결과 주소: result.items[0].address
		          // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
		          var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
		          map.setCenter(myaddr); // 검색된 좌표로 지도 이동
		          // 마커 표시
		          var marker = new naver.maps.Marker({
		            position: myaddr,
		            map: map
		          });
		          // 마커 클릭 이벤트 처리
		          naver.maps.Event.addListener(marker, "click", function(e) {
		            if (infowindow.getMap()) {
		                infowindow.close();
		            } else {
		                infowindow.open(map, marker);
		            }
		          });
		          // 마크 클릭시 인포윈도우 오픈
		         /*  var infowindow = new naver.maps.InfoWindow({
		              content: '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
		          }); */
		      });
		      </script>
		      
		      </div>
          
          
          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-3 col-sm-6 col-xs-12">
            <h3 class="small-title">
              Latest News
            </h3>
            <ul class="recent-post">
              <li class="post">
                <a href="<%=request.getContextPath()%>/assets/img/flicker/img1.jpg" class="lightbox">
                <img alt="" src="<%=request.getContextPath()%>/assets/img/flicker/img1.jpg">
                </a>
                <p class="text">Fightin'the system like true modern <br><span>Nov 05,2016</span></p>
              </li>
              <li class="post">
                <a href="<%=request.getContextPath()%>/assets/img/flicker/img1.jpg" class="lightbox">
                <img alt="" src="<%=request.getContextPath()%>/assets/img/flicker/img2.jpg">
                </a>
                <p class="text">Will we're movin' on up to the east side <br><span>Nov 09,2016</span></p>
              </li>
            </ul>
          </div>
          <!-- Footer Widget Ends -->        

          <!-- Footer Widget Starts -->
          
          
          
          
          
          <!-- <div class="footer-widget col-md-3 col-sm-6 col-xs-12">
            <h3 class="small-title">
              Our Courses
            </h3>
            <ul class="list">
              <li><a href="#">Web design</a></li>
              <li><a href="#">Android Developer</a></li>
              <li><a href="#">PHP Tranning</a></li>
              <li><a href="#">IOS Developer</a></li>
              <li><a href="#">App Design Package</a></li>
            </ul>
          </div> -->
          <!-- Footer Widget Ends -->

          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-3 col-sm-6 col-xs-12">
            <h3 class="small-title">
              College Gallery
            </h3>
            <div class="plain-flicker-gallery">
              <a href="#" title="Pan Masala"><img src="<%=request.getContextPath()%>/assets/img/flicker/img1.jpg" alt=""></a>
              <a href="#" title="Sports Template for Joomla"><img src="<%=request.getContextPath()%>/assets/img/flicker/img2.jpg" alt=""></a>
              <a href="" title="Apple Keyboard"><img src="<%=request.getContextPath()%>/assets/img/flicker/img3.jpg" alt=""></a>
              <a href="" title="Hard Working"><img src="<%=request.getContextPath()%>/assets/img/flicker/img4.jpg" alt=""></a>
              <a href="" title="Smile"><img src="<%=request.getContextPath()%>/assets/img/flicker/img5.jpg" alt=""></a>
              <a href="" title="Puzzle"><img src="<%=request.getContextPath()%>/assets/img/flicker/img6.jpg" alt=""></a>
            </div>
          </div><!-- Footer Widget Ends -->
        </div><!-- Row Ends -->
      </div><!-- Container Ends -->
      
      <!-- Copyright -->
      <div id="copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-6  col-sm-6">
              <p class="copyright-text">
                Â© All rights reserved 2017 - Design &amp; Developed by <a href="http://graygrids.com">GrayGrids</a>
              </p>
            </div>
            <div class="col-md-6  col-sm-6">                
              <div class="bottom-social-icons pull-right">  
                <a class="facebook" target="_blank" href="https://web.facebook.com/GrayGrids"><i class="fa fa-facebook"></i></a> 
                <a class="twitter" target="_blank" href="https://twitter.com/GrayGrids"><i class="fa fa-twitter"></i></a>
                <a class="google-plus" target="_blank" href="https://plus.google.com"><i class="fa fa-google-plus"></i></a>
                <a class="linkedin" target="_blank" href="https://www.linkedin.com/"><i class="fa fa-linkedin"></i></a>
              </div>            
            </div>
          </div>
        </div>
      </div>
      <!-- Copyright  End-->
      
    </footer>