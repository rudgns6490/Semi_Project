<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String ctxPath = request.getContextPath(); %>

<jsp:include page="../header.jsp" />

<link rel="stylesheet" href="css/productList.css">

<script src="<%= ctxPath %>/js/jquery-3.3.1.min.js"></script>
<script src="<%= ctxPath %>/js_ysl/productList.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	
	// YSL
// 	$("#totalYSLCount").hide();
	$("#countYSL").hide();
	    
	// "더 로드하기..." 초기갑 호출 
	displayYSL("1");
	
	// "더 로드하기..." 이벤트 등록하기
	$("#btnMoreYSL").bind("click", function(){
		
			displayYSL($(this).val());	
		
	});			
	
}); // end of $(document).ready(function(){

// 모든상품 " 더보기 ... " 버튼을 클릭할 때 보여줄 상품의 개수(단위)크기
var lenYSL = 9;

//컴마 만들어주는 함수
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}


// display 할 YSL 상품정보를 추가요청하기 (Ajax 로 처리함)
function displayYSL(start) {
		
	$.ajax({
		url:"<%= ctxPath %>/productListALL.ysl", 
		type:"GET", 
		data:{"pspec":"YSL"
			 ,"start":start
			 ,"len":lenYSL},
		dataType:"json",
		success:function(json){
			//alert("성공"); // json 데이터가 넘어오면 alert
			var html = "";
			
			if(json.length == 0) { // 데이터가 존재하지 않는 경우
				
				$("#btnMoreYSL").hide();
				
			}
			else { // 데이터가 존재하는 경우
				$.each(json, function(index, item){
					if((index+1)%3 != 0) {
						html += "<article class='item'>" 
							  + "<div class='image' >"	
							  + "<a href='/SaintLaura/productDetail.ysl?pnum="+item.pnum+"' style='text-decoration: none;'>"
							  + "<img class='listViewImage mainImage' src='/SaintLaura/images_Product/"+item.pimage1+"' style='width: 300px; height: 440px;'>"
							  + "<img class='listViewImage hoverImage' src='/SaintLaura/images_Product/"+item.pimage2+"' style='width: 300px; height: 440px;' >"
							  + "</div><br>"
							  
 							  + "<div id='infoBox'>"
							  + 	"<div class='info'>"
							  + 		"<span class='info'>"+(item.pname).substr(0,24)+"<br>"+(item.pname).substr(25,43)+"<br>"+(item.pname).substr(44,100)+"</span><br><br>"
							  + 		"<span class='info'>&#8361; &nbsp;</span>"
							  + 		"<span class='info'>"+numberWithCommas(item.price)+"</span><br><br>"
							  + 	"</div>"
						      + "</div>"
						      + "</a>"
						 	  + "</article>";
					}
					else {
						html += "<article class='item'>" 
							  + "<div class='image' >"	
							  + "<a href='/SaintLaura/productDetail.ysl?pnum="+item.pnum+"' style='text-decoration: none;'>"
							  + "<img class='listViewImage mainImage' src='/SaintLaura/images_Product/"+item.pimage1+"' style='width: 300px; height: 440px;'>"
							  + "<img class='listViewImage hoverImage' src='/SaintLaura/images_Product/"+item.pimage2+"' style='width: 300px; height: 440px;' >"
							  + "</div><br>"
							  
 							  + "<div id='infoBox'>"
							  + 	"<div class='info'>"
							  + 		"<span class='info'>"+(item.pname).substr(0,24)+"<br>"+(item.pname).substr(25,43)+"<br>"+(item.pname).substr(44,100)+"</span><br><br>"
							  + 		"<span class='info'>&#8361; &nbsp;</span>"
							  + 		"<span class='info'>"+numberWithCommas(item.price)+"</span><br><br>"
							  + 	"</div>"
						      + "</div>"
						      + "</a>"
						      + "</article>" + "<br>";
					}
				});
				
				//YSL 상품결과를 출력하기
				$("#displayYSL").append(html);
				
				// hover
				$(".hoverImage").hide();
				$(".item").hover(function () {
		
					$(this).find(".mainImage").css('display','none');
					$(this).find(".hoverImage").css('display','');
					
					}, function () {
					
					$(this).find(".mainImage").css('display','');
					$(this).find(".hoverImage").css('display','none');
				
				});
				
				// 더로드하기... 버튼의 value 속성에 값을 지정하기
				$("#btnMoreYSL").val(parseInt(start)+lenYSL);
				
				// countYSL 에 지금까지 출력된 상품의 개수를 누적해서 기록한다.
				$("#countYSL").text( parseInt($("#countYSL").text()) + json.length );
				
				if( $("#countYSL").text() == $("#totalYSLCount").text() ) {
					$("#btnMoreYSL").hide();
				}
				
			}
		},
		error: function(request, status, error){
			alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
		}
		
	});		
	
}

</script>

<body>
	<div class="container">
		<div id="displayYSL" ></div>
		<br>
		<div id="moveTable">
			<button type="button" id="btnMoreYSL" value="" class="theload">더 로드하기..</button>
			<span id="totalYSLCount" style="display: none;">${totalYSLCount}</span>
			<span id="countYSL">0</span>
		</div>
	</div>
	<br><br><br>
	  
	
	 <!-- 페이징 처리 -->
<!-- 	<nav class="bottomNav" aria-label="Page navigation example"> -->
<!--   		<ul class="pagination pg-blue"> -->
<!--     		<li class="page-item"> -->
<!--       			<a class="page-link" aria-label="Previous"> -->
<!--         			<span aria-hidden="true">&laquo;</span> -->
<!--         			<span class="sr-only">Previous</span> -->
<!--       			</a> -->
<!--     		</li> -->
<!--     		<li class="page-item"><a class="page-link">1</a></li> -->
<!--     		<li class="page-item"><a class="page-link">2</a></li> -->
<!--     		<li class="page-item"><a class="page-link">3</a></li> -->
<!--     		<li class="page-item"> -->
<!--       			<a class="page-link" aria-label="Next"> -->
<!--         			<span aria-hidden="true">&raquo;</span> -->
<!--         			<span class="sr-only">Next</span> -->
<!--       			</a> -->
<!--     		</li> -->
<!--   		</ul> -->
<!-- 	</nav> -->
	
	
</body>
</html>