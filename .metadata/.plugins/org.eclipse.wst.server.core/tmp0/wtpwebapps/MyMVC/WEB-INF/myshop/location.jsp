<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../header.jsp" />
  	<style>
  		div.mycontent {
  			font-size: 9pt;
  			font-weight: bold;
  			color: navy;
  		}
  	</style>
  
	<div id="map" style="width:90%; height:450px;"></div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=발급받은 APP KEY를 넣으시면 됩니다."></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f42c6cbd2d2060c5c719ee80540fbfbc"></script>
	
	<script>
	$(document).ready(function(){	
		
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열 
		var positionArr = [
		    {
		        content: "<div class='mycontent'>롯데백화점본점</div>", 
		        latlng: new kakao.maps.LatLng(37.56511284953554, 126.98187860455485)
		    },
		    {
		        content: "<div class='mycontent'>스타즈호텔</div>", 
		        latlng: new kakao.maps.LatLng(37.56253702140974, 126.99066231320411)
		    },
		    {
		        content: "<div class='mycontent'>솔라리아호텔</div>", 
		        latlng: new kakao.maps.LatLng(37.56266260624476, 126.9852294524821)
		    },
		    {
		        content: "<div class='mycontent'>선샤인빌딩</div>",
		        latlng: new kakao.maps.LatLng(37.56186539471529, 126.98666137564815)
		    }
		];
	
		//지도를 담을 영역의 DOM 레퍼런스
		var mapContainer = document.getElementById('map'); 
		
		//지도를 생성할 때 필요한 기본 옵션
		var options = { 
			center: new kakao.maps.LatLng(37.56800299296494, 126.98322489339314), // 지도의 중심좌표. 반드시 존재해야함.
			level: 4 //지도의 레벨(확대, 축소 정도)
		};
		/*
		  center 에 할당할 값은 kakao.maps.LatLng 클래스를 사용하여 생성한다.
		  kakao.maps.LatLng 클래스의 2개 인자값은 첫번째 파라미터는 위도(latitude)이고, 두번째 파라미터는 경도(longitude)이다.
		*/

		//지도 생성 및 생성된 지도객체 리턴
		var mapobj = new kakao.maps.Map(mapContainer, options);
		
		// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성함. 	
		var mapTypeControl = new kakao.maps.MapTypeControl();
		
		// 지도 타입 컨트롤을 지도에 표시함.
		// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미함.	
		mapobj.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		
		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성함.	
		var zoomControl = new kakao.maps.ZoomControl();
		mapobj.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		var latitude = 0.0;   // 위도를 담아둘 변수
		var longitude = 0.0;  // 경도를 담아둘 변수 
					 
		if (navigator.geolocation) {
			// HTML5의 geolocation으로 사용할 수 있는지 확인한다 
				
			// GeoLocation을 이용해서 웹페이지에 접속한 사용자의 현재 위치를 확인하여 그 위치(위도,경도)를 지도의 중앙에 오도록 한다. 
			navigator.geolocation.getCurrentPosition(function(position) {
				latitude = position.coords.latitude;   // 현위치의 위도
				longitude = position.coords.longitude; // 현위치의 경도
			//	console.log("현위치의 위도: "+latitude+", 현위치의 경도: "+longitude); 
				
				// 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성한다   
				var locPosition = new kakao.maps.LatLng(latitude, longitude);  
				    
				// 인포윈도우(텍스트를 올릴 수 있는 말풍선 모양의 이미지)에 표시될 내용      
				var message = '<div style="padding:5px; font-size:9pt;">여기에 계신가요?</div>'; 
		             
				// 마커이미지를 기본이미지를 사용하지 않고 
				// 다른 이미지로 사용할 경우의 이미지 주소 
		        var imageSrc = 'http://localhost:9090/MyMVC/images/pointerPink.png';       
		        
		        // 마커이미지의 크기 
			    var imageSize = new kakao.maps.Size(34, 39);   
			      
			    // 마커이미지의 옵션. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정한다. 
			    var imageOption = {offset: new kakao.maps.Point(15, 39)};   
		          
			    // 마커의 이미지정보를 가지고 있는 마커이미지를 생성한다. 
			    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
    
		        // == 마커와 인포윈도우를 표시할 함수를 호출한다. == //
		        displayMarker(mapobj, locPosition, message, markerImage);
		     
		        // 지도의 센터위치를 사이트에 접속한 클라이언트 컴퓨터의 현재의 위.경도로 변경한다.
			    mapobj.setCenter(locPosition);
		        
				});
				
			} 
			
		else {
			// HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정한다.
			var locPosition = new kakao.maps.LatLng(37.56800299296494, 126.98322489339314);     
	        var message = 'geolocation을 사용할수 없습니다.';
	        
	        displayMarker(mapobj, locPosition, message);
	        
	     // 지도의 센터위치를 위에서 정적으로 입력한 위.경도로 변경한다.
		    mapobj.setCenter(locPosition);
		}// end of if~else---------------------
			
			
	    // === 객체 배열 만큼 마커 및 인포윈도우를 생성하여 지도위에 표시한다 === //  
		for(var i=0; i<positionArr.length; i++) {
		    displayMarker(mapobj, positionArr[i].latlng, positionArr[i].content);
        }// end of for--------------------
            
        
		// ===== 지도에 클릭 이벤트를 등록하기 ======
		// 지도를 클릭하면 클릭한 위치에 마커를 표시하면서 위,경도를 보여주도록 한다.
		
		// == 마커 생성하기 == //
		// 1. 마커이미지 변경
		var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png';       
		        
		// 2. 마커이미지의 크기 
	    var imageSize = new kakao.maps.Size(34, 39);   
			      
	    // 3. 마커이미지의 옵션. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정한다. 
	    var imageOption = {offset: new kakao.maps.Point(15, 39)};   
          
	    // 4. 이미지정보를 가지고 있는 마커이미지를 생성한다. 
	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
			    
	    var movingMarker = new kakao.maps.Marker({ 
			map: mapobj, 
	        image: markerImage  // 마커이미지 설정
		});
        
	    
		kakao.maps.event.addListener(mapobj, 'click', function(mouseEvent) {         
			    
			 // 클릭한 위도, 경도 정보를 가져옵니다 
			 var latlng = mouseEvent.latLng;
			 
			 movingMarker.setPosition(latlng);
			 // 마커 위치를 클릭한 위치로 옮긴다.
			    
			 var htmlMessage = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, '; 
			     htmlMessage += '경도는 ' + latlng.getLng() + ' 입니다';
			    
			 var resultDiv = document.getElementById("result"); 
			 resultDiv.innerHTML = htmlMessage;
		}); 
        
	}); // end of $(document).ready()-------------------
			
	            
	// == 지도에 마커와 인포윈도우(텍스트를 올릴 수 있는 말풍선 모양의 이미지)를 생성하여 표시하는 함수 ==  
	function displayMarker(mapobj, locPosition, message, markerImage) {
		
		// == 마커 생성하기 == //
		var marker = null;
		
		if(markerImage != null) { 
		   // 마커이미지가 있는 경우  
		   marker = new kakao.maps.Marker({ 
					map: mapobj, 
			        position: locPosition, // locPosition 좌표에 마커를 생성 
			        image: markerImage     // 마커이미지 설정
				}); 
		}
		else {
			// 마커이미지가 없는 경우  
			marker = new kakao.maps.Marker({ 
				map: mapobj, 
		        position: locPosition // locPosition 좌표에 마커를 생성 
			});
		}
			
		marker.setMap(mapobj); // 지도에 마커를 표시한다
		
		// === 인포윈도우(텍스트를 올릴 수 있는 말풍선 모양의 이미지) 생성하기 ===   
	//	var iwContent = "<div style='padding:5px; font-size:9pt;'>현위치(약간틀림)<br/><a href='' style='color:blue;'>매장보기</a> <a href='https://map.kakao.com/link/map/현위치(약간틀림),"+latitude+","+longitude+"' style='color:blue;' target='_blank'>큰지도</a> <a href='https://map.kakao.com/link/to/현위치(약간틀림),"+latitude+","+longitude+"' style='color:blue' target='_blank'>길찾기</a></div>";
        var iwContent = message;	
		// 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능함.
		
	    var iwPosition = locPosition;
		// 인포윈도우 표시 위치
		
	    var iwRemoveable = true; 
		// removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됨
		
		// == 인포윈도우를 생성하기 == 
		var infowindow = new kakao.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent,
		    removable : iwRemoveable
		});
	
		// == 지도 위에 인포윈도우 표시하기 == //
           // infowindow.open(map);
		
		// == 마커 위에 인포윈도우를 표시하기 == //
		// infowindow.open(map, marker);
		
	    // == 마커위에 마우스 커서를 올리면 마커 위에 인포윈도우를 표시하기 == //
		// 마커에 마우스오버 이벤트를 등록한다. 
		kakao.maps.event.addListener(marker, 'mouseover', function() {
		      infowindow.open(mapobj, marker);  
		});  
	    
		// 마커에 마우스아웃 이벤트를 등록한다. 
		kakao.maps.event.addListener(marker, 'mouseout', function() {
		      infowindow.close();  
		}); 
		
	    
    }// end of function displayMarker(mapobj, locPosition, message)------------------
		
		
	</script>    
    
    <div id="result" style="margin: 20px 0;"></div>
    
<jsp:include page="../footer.jsp" />
    