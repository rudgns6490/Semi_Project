<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String ctxPath = request.getContextPath();
    //    /MyMVC
%>    
    
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/css/style.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<style type="text/css">

	span {margin-right: 10px;}
						 
	.stylePoint {color: red; 
	             font-weight: bold;
	             font-size: 13pt;}
	             
	.purchase {cursor: pointer;
	           color: red;
	           font-weight: bold;}             
	
</style>

<script type="text/javascript">
<%--
	jQuery 를 이용하여 radio 버튼의 체크 유무 및 체크된 값을 검사한다.
	jQuery 의 selector 부분이 중요 포인트로 4개의 구문으로 나눠 볼 수 있다.
	 
	1. :input
	    - Selects all input, textarea, select and button elements.
	2. [name=animal]
	    - Selects elements that have the specified attribute with a value exactly equal to a certain value.
	3. :radio
	    - Selects all elements of type radio.
	4. :checked
	    - Matches all elements that are checked.
--%>

    var coinmoney = 0;

	$(document).ready(function(){
		
		$("#error").hide();
		
		// $(":input[name=coinmoney]:radio")
		$("input:radio[name=coinmoney]").bind("click", function(){
			coinmoney = $(this).val();
			
		 //  var i = $(this).index();
		 //  alert("확인용 : " + i);  // 무조건 0. 왜냐하면 $(this)내에서 인덱스를 찾기 때문이다.
			
			 var index = $("input:radio[name=coinmoney]").index(this); // 올바른 index 가 나온다.
		 //	 alert("확인용 : " + index); // 0 1 2 3 4 5 6 7 8 중 하나가 나온다.
		
		     $("td span").removeClass("stylePoint");
		     $("td span").eq(index).addClass("stylePoint");
		     // $("td span").eq(index) ==> 배열요소를 꺼내는 것과 비슷함.
			
			 $("#error").hide();
		});// end of $("input:radio[name=coinmoney]").bind("click")-----------
		
		
		$("#purchase").hover(function(){
								$(this).addClass("purchase");
		                     }, 
		                     function(){
		                    	 $(this).removeClass("purchase"); 
		                     });
		
		
		$("#purchase").click(function(){
			
		   var checkedCnt = $("input:radio[name=coinmoney]:checked").length;
		   
		   if(checkedCnt == 0) {
			// 결제금액을 선택하지 않았을 경우
			   $("#error").show();
			   return;
		   } 
		   else {
			// 결제금액을 선택했을 경우
			   $("#error").hide();
			   
			/* === 팝업창에서 부모창 함수 호출 방법 3가지 ===
			    1-1. 일반적인 방법
				opener.location.href = "javascript:부모창스크립트 함수명();";
									
				1-2. 일반적인 방법
				window.opener.부모창스크립트 함수명();

				2. jQuery를 이용한 방법
				$(opener.location).attr("href", "javascript:부모창스크립트 함수명();");
			*/
			// opener.location.href = "javascript:goCoinPurchaseEnd('${sessionScope.loginuser.idx}', "+coinmoney+");"; 
			// window.opener.goCoinPurchaseEnd('${sessionScope.loginuser.idx}', coinmoney); 
			   $(opener.location).attr("href", "javascript:goCoinPurchaseEnd('${sessionScope.loginuser.idx}', "+coinmoney+");"); 
			
			   self.close();
		   }
		   
		});// end of $("#purchase").click()--------
		
	});// end of $(document).ready()----------------

</script>
</head>	

<body>
	<div class="container">
	  <h2>코인충천 결제방식 선택</h2>
	  <p>코인충전 금액 높을수록 POINT를 무료로 많이 드립니다.</p> 
	  
	  <div class="table-responsive" style="margin-top: 30px;">           
		  <table class="table">
		    <thead>
		      <tr>
		        <th>결제종류</th>
		        <th>금액</th>
		        <th>POINT</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		        <td>신용카드</td>
		        <td>
			        <label class="radio-inline"><input type="radio" name="coinmoney" id="coinmoney1" value="300000" />300,000원</label>
					<label class="radio-inline"><input type="radio" name="coinmoney" class="coinmoney" value="200000" />200,000원</label>
					<label class="radio-inline"><input type="radio" name="coinmoney" class="coinmoney" value="100000" />100,000원</label>
				</td>
		        <td>
					<span class="point3">3000</span>
					<span class="point2">2000</span>
					<span class="point1">1000</span>
				</td>
		      </tr>
		      <tr>
		        <td>휴대폰결제</td>
		        <td>
		        	<label class="radio-inline"><input type="radio" name="coinmoney" class="coinmoney" value="300000" />300,000원</label>
					<label class="radio-inline"><input type="radio" name="coinmoney" class="coinmoney" value="200000" />200,000원</label>
					<label class="radio-inline"><input type="radio" name="coinmoney" class="coinmoney" value="100000" />100,000원</label>
		        </td>
		        <td>
		        	<span class="point3">3000</span>
		        	<span class="point2">2000</span>
		        	<span class="point1">1000</span>
				</td>
		      </tr>
		      <tr>
		        <td>카카오페이</td>
		        <td>
		        	<label class="radio-inline"><input type="radio" name="coinmoney" class="coinmoney" value="300000" />300,000원</label>
					<label class="radio-inline"><input type="radio" name="coinmoney" class="coinmoney" value="200000" />200,000원</label>
					<label class="radio-inline"><input type="radio" name="coinmoney" class="coinmoney" value="100000" />100,000원</label>
		        </td>
		        <td>
		        	<span class="point3">3000</span>
		        	<span class="point2">2000</span>
		        	<span class="point1">1000</span>
				</td>
		      </tr>
		      <tr>
		      	<td id="error" colspan="3" align="center" style="height: 50px; vertical-align: middle; color: red;">결제종류에 따른 금액을 선택하세요!!</td>
		      </tr>
		      <tr>
		        <td id="purchase" colspan="3" align="center" style="height: 100px; vertical-align: middle;">[충전결제하기]</td>
		      </tr>
		    </tbody>
		  </table>
	  </div>
	</div>
</body>
</html>
