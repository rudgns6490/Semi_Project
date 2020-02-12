<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp" />

<style type="text/css">
	.moreProdInfo {
		display: inline-block;
		margin: 10px;
	 /* border: solid 1px navy; 
	    width: 200px; */
	}
</style>

<script type="text/javascript">
	$(document).ready(function(){
		
		$("#totalHITCount").hide();
		$("#countHIT").hide();
		
		// HIT상품 게시물을 더보기 위하여 "더보기..." 버튼 클릭액션에 대해 초기값 호출  
		displayHIT("1");
		
		// HIT상품 게시물을 더보기 위하여 "더보기..." 버튼 클릭액션의 이벤트 등록하기 
		$("#btnMoreHIT").click(function(){
			
			if($(this).text() == "처음으로") {
				$("#displayHIT").empty();
				displayHIT("1");
				$(this).text("더보기...");
			}
			else {
				displayHIT($(this).val());
			}
		});
		
		
	});// end of $(document).ready()---------------
	
	
	//// ======== HIT 시작 ======== ////
	
	var lenHIT = 8; 
	// HIT 상품 "더보기..." 버튼을 클릭할때 보여줄 상품의 갯수(단위)크기 
	
	
	// display할 HIT상품 정보를 추가 요청하기(Ajax로 처리함)
	function displayHIT(start) {
		
		$.ajax({
			url:"/MyMVC/shop/mallDisplayJSON.up",
		//	type:"GET",
		    data:{"pspec":"HIT"
		    	 ,"start":start
		    	 ,"len":lenHIT},
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
		    		$("#displayHIT").html(html);
		    		
		    		// 더보기... 버튼의 비활성화 처리
		    		$("#btnMoreHIT").attr("disabled", true).css("cursor","not-allowed");
		    		
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
		    		$("#displayHIT").append(html);
		    		
		    		// >>> (중요!!!) 더보기... 버튼의 value 속성에 값을 지정하기 <<< //
		    		$("#btnMoreHIT").val(parseInt(start)+lenHIT);
		    		// 더보기... 버튼의 value 값이 9 로 변경된다.
		    		// 더보기... 버튼의 value 값이 17 로 변경된다.
		    		// 더보기... 버튼의 value 값이 25 로 변경된다.
		    		// 더보기... 버튼의 value 값이 33 로 변경된다.
		    		// 더보기... 버튼의 value 값이 41 로 변경된다.
		    		
		    		// countHIT 에 지금까지 출력된 상품의 갯수를 누적해서 기록한다. 
		    		$("#countHIT").text( parseInt($("#countHIT").text()) + json.length);
		    		
		    		// 더보기... 버튼을 계속해서 클릭하여 countHIT 값과 totalHITCount 값이 일치하는 경우 
		    		// 버튼의 이름을 "처음으로" 라고 변경하고 countHIT 0 으로 초기화 해야 한다.
		    		if( $("#countHIT").text() == $("#totalHITCount").text() ) { 
		    			$("#btnMoreHIT").text("처음으로");
		    			$("#countHIT").text("0");
		    		}
		    		
		    	}
		    	
		    	
		    },
		    error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
			
		});
		
	}
	
	
	//// ======== HIT 끝  ======== ////
	
	
	
	//// ======== NEW 시작 ======== ////
	
	//// ======== NEW 끝 ======== ////
	
</script>
    
 <h2>::: 쇼핑몰 상품 :::</h2>
 <br/>    
  
 <%-- HIT 상품을 디스플레이 --%>
 <div>
 	<div style="margin: 10px; font-size: 16pt;">- HIT 상품 -</div>
 	<div id="displayHIT"></div>
 	
 	<div>
 		<button type="button" id="btnMoreHIT" value="">더보기...</button>
 		<span id="totalHITCount">${totalHITCount}</span>
 		<span id="countHIT">0</span>
 	</div>
 </div>  
 
 
 <%-- NEW 상품을 디스플레이 --%>  
    
<jsp:include page="../footer.jsp" /> 





   