<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp" />    
    
<style type="text/css">
	.moreProdInfo {
		display: inline-block;
		margin: 10px;
	}
</style>

<script type="text/javascript">
	$(document).ready(function(){
		
		$("#totalCategoryCount").hide();
		$("#countCategory").hide();
		
		// 카테고리별 상품 게시물을 더보기 위하여 "더보기..." 버튼 클릭액션에 대해 초기값 호출  
		displayCategory("1");
		
		// HIT상품 게시물을 더보기 위하여 "더보기..." 버튼 클릭액션의 이벤트 등록하기 
		$("#btnMore").click(function(){
			
			if($(this).text() == "처음으로") {
				$("#displayCategory").empty();
				displayCategory("1");
				$(this).text("더보기...");
			}
			else {
				displayCategory($(this).val());
			}
		});
		
		
	});// end of $(document).ready()---------------
	
	
	var len = 8; 
	// HIT 상품 "더보기..." 버튼을 클릭할때 보여줄 상품의 갯수(단위)크기 
	
	
	// display할 HIT상품 정보를 추가 요청하기(Ajax로 처리함)
	function displayCategory(start) {
		
		$.ajax({
			url:"/MyMVC/shop/categoryDisplayJSON.up",
		//	type:"GET",
		    data:{"pcategory_fk":"${code}"
		    	 ,"start":start
		    	 ,"len":len},
		    dataType:"JSON",
		    success:function(json){
		    	var html = "";
		    	
		    	if(json.length == 0) {
		    		// 데이터가 존재하지 않는 경우
		    		// !!! 주의 !!!
		    		// if(json == null) 이 아님!!!
		    		// if(json.length == 0) 으로 해야함!!
		    		html += "현재 상품 준비중....";
		    		
		    		// HIT 상품 결과를 출력하기
		    		$("#displayCategory").html(html);
		    		
		    		// 더보기... 버튼의 비활성화 처리
		    		$("#btnMore").attr("disabled", true).css("cursor","not-allowed");
		    		
		    	}
		    	else {
		    		// 데이터가 존재하는 경우
		    		$.each(json, function(index, item){
		    			if((index+1)%4 != 0) {
		    				html += "<div class='moreProdInfo'><a href='/MyMVC/shop/prodView.up?pnum="+item.pnum+"'><img width='120px;' height='130px;' src='/MyMVC/images/"+item.pimage1+"'/></a>" 
				    				 + "<br/>"
			   				         + "제품명 : "+item.pname+"<br/>"
			       	                 + "정가 : <span style=\"color: red; text-decoration: line-through;\">"+(item.price).toLocaleString('en')+" 원</span><br/>"
			       	                 + "판매가 : <span style=\"color: red; font-weight: bold;\">"+(item.saleprice).toLocaleString('en')+" 원</span><br/>"
			       	                 + "할인율 : <span style=\"color: blue; font-weight: bold;\">["+item.discoutPercent+"%] 할인</span><br/>"
			       	                 + "포인트 : <span style=\"color: orange;\">"+item.point+" POINT</span><br/>"
		   				           +"</div>";
		    			}
		    			else {
		    				html += "<div class='moreProdInfo'><a href='/MyMVC/shop/prodView.up?pnum="+item.pnum+"'><img width='120px;' height='130px;' src='/MyMVC/images/"+item.pimage1+"'/></a>"
				    				 + "<br/>"
		  				             + "제품명 : "+item.pname+"<br/>"
		      	                     + "정가 : <span style=\"color: red; text-decoration: line-through;\">"+(item.price).toLocaleString('en')+" 원</span><br/>"
		      	                     + "판매가 : <span style=\"color: red; font-weight: bold;\">"+(item.saleprice).toLocaleString('en')+" 원</span><br/>"
		      	                     + "할인율 : <span style=\"color: blue; font-weight: bold;\">["+item.discoutPercent+"%] 할인</span><br/>"
		      	                     + "포인트 : <span style=\"color: orange;\">"+item.point+" POINT</span><br/>"
  				           		   +"</div>";
   							html += "<br/>";
		    			}
		    		});
		    		
		    		// HIT 상품 결과를 출력하기
		    		$("#displayCategory").append(html);
		    		
		    		// >>> (중요!!!) 더보기... 버튼의 value 속성에 값을 지정하기 <<< //
		    		$("#btnMore").val(parseInt(start)+len);
		    		// 더보기... 버튼의 value 값이 9 로 변경된다.
		    		// 더보기... 버튼의 value 값이 17 로 변경된다.
		    		// 더보기... 버튼의 value 값이 25 로 변경된다.
		    		// 더보기... 버튼의 value 값이 33 로 변경된다.
		    		// 더보기... 버튼의 value 값이 41 로 변경된다.
		    		
		    		// countCategory 에 지금까지 출력된 상품의 갯수를 누적해서 기록한다. 
		    		$("#countCategory").text( parseInt($("#countCategory").text()) + json.length);
		    		
		    		// 더보기... 버튼을 계속해서 클릭하여 countCategory 값과 totalCategoryCount 값이 일치하는 경우 
		    		// 버튼의 이름을 "처음으로" 라고 변경하고 countCategory 0 으로 초기화 해야 한다.
		    		if( $("#countCategory").text() == $("#totalCategoryCount").text() ) { 
		    			$("#btnMore").text("처음으로");
		    			$("#countCategory").text("0");
		    		}
		    		
		    	}
		    	
		    	
		    },
		    error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
			
		});
		
	}
	
</script>
    
 <h2>::: ${cname} 목록 :::</h2>
 <br/>    
  
 <%-- 조회하고자 하는 카테고리별 상품을 디스플레이 --%>
 <div>
 	<div id="displayCategory"></div>
 	
 	<div>
 		<button type="button" id="btnMore" value="">더보기...</button>
 		<span id="totalCategoryCount">${totalCategoryCount}</span>
 		<span id="countCategory">0</span>
 	</div>
 </div>   

<jsp:include page="../footer.jsp" />    