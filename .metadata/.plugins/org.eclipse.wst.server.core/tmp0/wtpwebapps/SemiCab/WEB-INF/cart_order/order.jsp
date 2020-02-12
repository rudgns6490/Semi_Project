<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String ctxPath = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../header.jsp"/>

<style type="text/css">
	
	div#backbody {                        	    /* 장바구니 body */
		background-color: #f5f5f0;
		font-size: 13pt;
		min-width: 1480px;
		width: 100%;
		padding: 50px 0 ;
	}
	
	#frame {	                           			/* 전체 div */
		width: 80%;
		margin: 0 auto;	
		padding: 50px 50px;
		background-color: #fff;
	}
	
	#frame2{                               			/* 페이지 맨위 header아님!! 장바구니 홈>장바구니  */
		border-bottom: solid 1px #e0e0eb;
		padding: 20px 0; 
	} 
	
	
	.home {   /* 홈 > 장바구니 */
		float: right;
		clear: both;
	}
	

	table.calculation1{ 							/* 계산 테이블  */
		clear: both;
		border: solid 1px #e0e0eb;
		border-collapse: collapse;
		background-color: #f5f5f0;
		width: 100%;
		font-size: 10pt;
	}
	table.calculation1 th {							/* 계산 테이블 - 제목 */
		border: solid 1px #e0e0eb;
		padding: 10px 0;
		text-align: center;
		
	}
	table.calculation1 td{							/* 계산 테이블 - 내용 */
		border: solid 1px #e0e0eb;
		text-align: center;
	}
 

	table.calculation2 {    						/* 총 결제예정금액 테이블  */
		border: solid 1px #e0e0eb;
		border-collapse: collapse;   
		background-color: #f5f5f0;
		width: 100%;
		font-size: 10pt;
	}  

	table.calculation2 th {  						/* 총 결제예정금액 테이블 - 제목  */ 
		border: solid 1px #e0e0eb;
		text-align: center;
	}
	

	table.calculation2 td {							/* 총 결제예정금액 테이블 - 내용 */
		border: solid 1px #e0e0eb;
		text-align: center;
	}
	
	.price { 										/* calculation2 테이블 - 가격  ~원 */
		font-size: 20pt;
		font-weight: bold;
	}
	
	.lifont { font-size: 10pt; color: gray; } 		/* 이용약관 ol태그 - li  */
	
	
	.delivery{										/* 배송정보 테이블  */
		border: solid 1px gray;
		border-collapse:collapse;
		width: 100%;
		font-size: 12pt;
	}
	table.delivery th, td { border: solid 1px #e0e0eb; padding: 12px 10px; }
	
	.deliverytd { font-size: 12pt; background-color: #f5f5f0; }				/* 배송정보 테이블 - td  */
	
	
	/* 결제 카드!!!!  */
	.payArea {
		height: 218px;
	    position: relative;
	    padding: 0 245px 0 0;
	    border: 1px solid #777;
	    color: #353535;
	    line-height: 1.5;
	} 
	
	.payment {
		border-right: solid 1px gray;	
		float: left;
    	width: 100%;
    	height: 100%; 
	}
	

	.total {
		float: right;
    	width: 240px;
    	margin: 0 -240px 0 0;
    	text-align: right;
    	background: #fbfafa;
    	font-size: 11pt; 
	}
	
	/*-----------------------------  */
	
	
	/* bootstrp 버튼 */
	.btn {
		  border: none;
		  color: white;
		  padding: 5px 10px;
		  font-size: 13px;
		  cursor: pointer;
		  border-radius: 5px;
	}
	
	.default {background-color: #264d73; border: solid 1px gray; color: #fff;}
	.default:hover {background: #ddd;}
	.backBtn {background: #fff; border: solid 1px gray;}
	
	/* 선택상품 삭제,해외배송 장바구니로 이동 float  */
	.btnfloat{ float:left;}
	
	/* 선택상품 장바구니,견적서출력   float  */
	.btnfloat2{ float: right;}
	
	/* 혹시몰라서 clear 하나 줌  */
	.clearboth{clear: both;} 
	

	
</style>

<script type="text/javascript">
	
	$(document).ready(function(){
		
		
		
		
		
		priceFunc(); 
		
		$(".calculation1 thead input:checkbox[id=check]").click(function(){
			var bool =$(this).prop("checked");
			$(".calculation1 tbody input:checkbox[name=checkbox]").prop("checked",bool);
		});
		
		$(".calculation1 tbody input:checkbox[name=checkbox]").click(function(){
			var flag = false;
			$(".calculation1 tbody input:checkbox[name=checkbox]").each(function(){
				var bool = $(this).prop("checked");
				
				if(!bool){
					$(".calculation1 thead input:checkbox[id=check]").prop("checked",false);
					flag = true;
					return false; 
				}
			});
			
			if(!flag){
				$(".calculation1 thead input:checkbox[id=check]").prop("checked",true); 
			}
			
		}); 
		
		
		$("#emailChoice").bind("change", function(){
			$("#domainName").val($(this).val());
		});
		
		
		
		// 삭제 버튼 눌렀을시 제품 삭제하기 //
		$(".choiceProductDelete").click(function(){
			
			var bool = $(".calculation1 tbody input:checkbox[name=checkbox]").is(":checked");
			
			if(!bool){
				alert("선택된 상품이 없습니다.");
			}
			else {
				
				if(bool == $(".calculation1 tbody tr input:checkbox[id=cbtr1]").is(":checked")) {
					$("#calculation1_tr1").remove();	
				}
			
				else if(bool == $(".calculation1 tbody tr input:checkbox[id=cbtr2]").is(":checked")) {
					$("#calculation1_tr2").remove();	
				}
			}// end of else -------------------------------------------------------
			
			
			/* checkbox 전체선택시 삭제하기  */
			bool = $(".calculation1 thead input:checkbox[id=check]").is(":checked");
				if(bool) {
					$(".calculation1 >tbody").empty();
					$(".calculation1 thead input:checkbox[name=checkbox]").prop("checked",false); 
			
				}  

		}); // end of $("#choiceProductDelete").click()---------------------
		
		
		
		
		/* 카드결제 아닌 다른결제 했을시 alert 띄우기  */
		$(".cardradio").click(function(){
			alert("죄송합니다. 결제방식은 카드결제로만 가능합니다.");
			
			var bool = $(this).is(":checked");
			
			if(bool){
				$(".cardradio").prop("checked",false);
				$("#card").prop("checked",true);
			}
			
			self.close(); // 팝업창 닫기
			opener.location.reload(true);
			
			return;
		});
		
		
		
		
		  /* 결제하기  */
		  $(".paymentbutton").click(function(){
			  
			  
			  if ( $("#receiver").val().trim() == "" ||
		               $("#postnum1").val().trim() == "" ||
		               $("#addr1").val().trim() == "" ||
		               $("#addr2").val().trim() == "" ||
		               $("#mobile").val().trim() == "" ||
		               $("#Firstemail").val().trim() == "" ||
		               $("#domainName").val().trim() == "" )
		              // 필수 입력 칸에 빈공간이 들어왔을경우
		           {
		              alert("배송정보를 입력해주세요.");
		              $("#receiver").focus();
		              return;
		         }
			  

			  
			 var memberNum = $(this).attr('value');
			 var paymentPrice = $(".paymentprice").text();
  		//	 	alert(paymentPrice);
  	
			  var trLength = $(".calculation1_tbody_tr1").length; 
			  
			  var productNum = "";
			  var orderNum = "";
			  for(var i=0; i<trLength; i++){
			  	productNum += $(".productNum"+i+"").attr('value');
			  	orderNum += $(".buypd"+i+"").val();
			  }  
			  	 	
			  var memberNum = $(this).attr('value');
			  var paymentPrice = $("#paymentprice").val();
			
			
		       
			  // 주문테이블 주소값 넣어주기
			  var postnum1 = $(".postnum1").val();
			  var addr1 = $(".addr1").val();
			  var addr2 = $(".addr2").val();
			  
			  $("#postnumF").val(postnum1);
			  $("#addr1F").val(addr1);
			  $("#addr2F").val(addr2);
			  
			  for(var i=0; i<trLength; i++){
				  	var productNum = $(".productNum"+i+"").attr('value');
				  	$(".productNumF"+i+"").val(productNum);
					var spiner = $(".spiner"+i+"").text();
					$(".spinerF"+i+"").val(spiner);
					console.log($(".spinerF"+i+"").val());
				}

	
			  var url = "/SemiCab/cart_order/payment.ej?memberNum="+memberNum+"&paymentPrice="+paymentPrice+"";
			  window.open(url, "payment",
					      "left=50px, top=50px, width=100px, heigth=100px"); 
			  
		   }); 
		   
		  
		  
	      /* 배송지선택 회원정보와 동일할때 */
	      $("input:radio[name=delivery]").click(function () {
	         
	         if ( $("input:radio[name=delivery]:checked").val() == "myArea") {
	            
	            $("#receiver").val("${sessionScope.loginuser.username}");
	            $("#postnum1").val("${sessionScope.loginuser.postnum}");
	            $("#addr1").val("${sessionScope.loginuser.address1}");
	            $("#addr2").val("${sessionScope.loginuser.address2}");
	            $("#mobile").val("${sessionScope.loginuser.mobile}");
	            $("#Firstemail").val("${sessionScope.loginuser.firstemail}");
	            $("#domainName").val("${sessionScope.loginuser.secondemail}");
	            $("#message").focus();
	             
	         }
	         else if( $("input:radio[name=delivery]:checked").val() == "newArea") {
	            
	            $("#receiver").val("");
	            $("#postnum1").val("");
	            $("#addr1").val("");
	            $("#addr2").val("");
	            $("#mobile").val("");
	            $("#Firstemail").val("");
	            $("#domainName").val("");
	            $("#receiver").focus();
	            
	         }
	      }); 
		  
	     
		  
		  
		
		
	}); // end of $(document).ready()------------------
	
	
	function openDaumPOST() {
		new daum.Postcode({
			oncomplete: function(data) {
			    document.getElementById("postnum1").value = data.postcode1;  // 우편번호의 첫번째 값     예> 151
			    document.getElementById("postnum2").value = data.postcode2;  // 우편번호의 두번째 값     예> 019
			    document.getElementById("addr1").value = data.address;       // 큰주소                        예> 서울특별시 종로구 인사로 17 
			    document.getElementById("addr2").focus();
			}
		}).open();
	}
	
	// 합계 
	   function priceFunc() {
	     
		var total = 0;
	    var trLength = $(".calculation1_tbody_tr1").length;  
	    
	    for(var i=0; i<trLength; i++){
	    	var orderPrice = parseInt( $(".order_price"+i+"").text() );
	    	var cnt = parseInt( $(".spiner"+i+"").text() );
	    	
	    	$(".sum"+i+"").text((orderPrice*cnt+2500));
	    	
	    	total += orderPrice*cnt;
	    }

	    $(".totalprice").text(total.toLocaleString()); 
	    $(".paymentprice").text((total+2500).toLocaleString());
	    $(".card_Payment").text((total+2500).toLocaleString());
	    $("#paymentprice").val((total+2500)); 
	   }  
	
	
	// 결제클릭후 영수증테이블 insert 
	function goBilgInsert() {
		var frm = document.bilgeInsertFrm; 
		frm.method = "POST";
 		frm.action = "<%= request.getContextPath()%>/cart_order/bilgeInsert.ej"; 
 		frm.submit();
	}
	
	function openDaumPOST() {
	      new daum.Postcode({
	         oncomplete: function(data) {
	             document.getElementById("postnum1").value = data.postcode1+ "-" + data.postcode2;  // 우편번호의 첫번째 값     예> 151
	          //   document.getElementById("postnum2").value = data.postcode2;  // 우편번호의 두번째 값     예> 019
	             document.getElementById("addr1").value = data.address;       // 큰주소                        예> 서울특별시 종로구 인사로 17 
	             document.getElementById("addr2").focus();
	         } 
	      }).open();
	   }
		
</script>

<div id="backbody">
	<div id="frame">
		<form>
			<div id="frame2">
				<span style="font-size: 16pt; font-weight: bold;">주문서 작성</span>
				<span class="home"> 홈 > 주문페이지</span>
				<span> </span>
			</div>
			<br/>
			
			
			<%-- 상품정보 테이블 --%>
			<div>
				<table class="calculation1">
				<thead>
					<tr>
						<th colspan="10" style="text-align: left; padding-left: 10px;">일반상품(1)</th>
					</tr>
				
					<tr>
						<th><input type="checkbox" name="checkbox" id="check" /></th>
						<th><span>이미지</span></th>
						<th style="width: 550px;"><span>상품정보</span></th>
						<th>판매가</th>
						<th>수량</th>
						<th style="width: 100px;">적립금</th>
						<th>배송구분</th>
						<th>배송비</th>
						<th >합계</th>

					</tr>
				</thead>
					
				<tbody>
					<c:if test="${not empty requestScope.cartList}">	
	                  <c:forEach var="item" items="${requestScope.cartList}" varStatus="status">
	                  
	                     <tr class="calculation1_tbody_tr1" style="height: 90px; background-color: #fff;" >
	                        <td style="text-align: left; text-align:center; border-right: none;">
	                          <input type="checkbox" id="cbtr${status.index}" name="checkbox" />
	                          <input type="hidden" class="buypd${status.index}" value="${item.order_num}">
	                          <input type="hidden" class ="productNum${status.index}" value="${item.fk_product_num}"/>
	                           
	                        </td>
	                        <td style="border-left: none; border-right: none;"><img style="width: 150px;" src="/SemiCab/img/${item.imgNum}"></td>
	                        
	                        <td style="text-align:left; padding-left: 10px; border-left: none; font-weight: bold;">${item.product_name}(${item.product_name})</td>
	                        
	                        <td><span style="padding-left: 10px;" class="order_price${status.index}">${item.order_price}</span>원</td>
	                        
	                        <td style="width: 80px;">
	                           <span class="spiner${status.index}" style="text-align: right; width: 43px; margin-bottom: 5px;">${item.order_cnt}</span>
	                           <%-- <input class="spiner spiner${status.index} " name="spinner${status.index}" style="text-align: right; width: 43px; margin-bottom: 5px;"  min="1" max="99" step="1" value="${item.order_cnt}" /> --%>
	                        </td>
	                        
	                        <td>-</td>
	                        <td>기본배송</td>
	                        <td>2,500원<br/>고정</td>
	                        <td><span class="sum sum${status.index}"> </span>원</td> 
	                        <td>
	                           <button type="button" class="btn default orderbtn" style="border-radius: 3px; width: 90px;  margin-bottom: 3px; font-size: 11px; background-color: #264d73; color: #fff; " >주문하기</button><br/>
	                           <button type="button" class="btn default btndelete"  style="border-radius: 3px; width: 90px;  margin-bottom: 3px; font-size: 11px;" value="${item.order_num}" >x삭제</button><br/>
	                        </td>
	                     </tr> 
	                  </c:forEach>
                </c:if>	
                
                <c:if test="${empty requestScope.cartList}">
                	<tr id="notproduct" style="background-color: #fff;">
                  		<td colspan="10" style="font-size: 20pt; color: gray;"><span>장바구니에 등록된 상품이 없습니다.</span></td>
               		</tr>
                </c:if>
                
				</tbody>	
					
				<tfoot>	
					<tr style="height: 30px;"> 
						<td colspan="5" style="border-right: none; text-align: left; padding-left: 10px;">
							<span>[기본배송]</span>
						</td>
						<td colspan="5" style="border-left: none; text-align: right; padding-right: 10px;">
							<!-- 상품금액 <span>0</span> + <span>배송비 2,500 = 합계</span>&nbsp;<span style="font-weight: bold; font-size: 15pt;">0</span>원 -->
						</td>
					</tr>
					
				</tfoot>	
				</table>
				
				<div style="border:solid 1px #e0e0eb; border-right:none; border-left:none; padding: 11px 0; background-color: #ffe6e6;" >
					<img src="/SemiCab/img/주의!.png" style="margin-left: 5px; position: relative; top: 4.5px;">
					<span style="font-size: 10pt; color: red;">상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</span>
				</div>
			</div>
			
			<div style="margin: 10px 0; padding-bottom:50px; border-bottom: solid 1px gray;" >
				<span style="margin: 0 10px;" class = "btnfloat">선택상품을</span>
				<button type="button" class="btn default btnfloat choiceProductDelete" style="background-color: gray; color: #fff;">x 삭제하기</button>&nbsp;
				
				<button type="button" class="btn default btnfloat2" onclick="javascript:history.back()">이전페이지 ></button>
				<span class="clearboth"></span>
			</div>
			<br/><br/>
			
			
			<%-- 배송정보 --%>
         <span style="font-size: 12pt; display: inline-block; padding-bottom: 10px; ">&nbsp;배송정보</span>
         <table class="delivery">
            <thead>
               <tr>
                  <td class="deliverytd ">배송지 선택</td>
                  <td>
                     <input type="radio" value="myArea" name="delivery"/>
                     <label>회원정보와 동일</label>
                     
                     <input type="radio" value="newArea" name="delivery"/>
                     <label>새로운배송지</label>&nbsp;
                     <button type="button" style="background-color: #fff; cursor: pointer; border-width: 0px; border: solid 1px gray; border-radius: 3px;">주소목록 보기 ></button>
                  </td>
               </tr>
               
               <tr>
                  <td class="deliverytd ">받으시는 분&nbsp;<span style="color: red">*</span></td>
                  <td><input type="text" id="receiver" value=""/></td>
               </tr>
               
               <tr>
                  <td class="deliverytd">주소&nbsp;<span style="color: red">*</span>
                   </td>
                  <td>
                     <input type="text" class="postnum1" id="postnum1" name="postnum1" size="10" maxlength="5" value=""/>
                      &nbsp;
                     <button type="button" style="cursor: pointer; margin-bottom: 10px; background-color: #fff; border-width: 0px; border: solid 1px gray; border-radius: 3px;" onClick="openDaumPOST();">우편번호찾기</button><br/>  
                     <input class="addr1" style="margin-bottom: 10px;" type="text" id="addr1" name="addr1" size="50" value=""/><br/>
                     <input type="text" class="addr2" id="addr2" name="addr2" size="50" value=""/>
                  </td>
               </tr>
               
               <tr>
                  <td class="deliverytd">휴대전화&nbsp;<span style="color: red">*</span></td>
                  <td><input type="text" size="20" placeholder="-생략 후 입력해 주세요." value="" id="mobile"/>
               </tr>
               <tr>
                  <td class="deliverytd">이메일&nbsp;<span style="color: red">*</span></td>
                  <td><input type="text" id="Firstemail" />@<input id="domainName" type="text"/>&nbsp;
                     <select id="emailChoice" style="height: 20px;"> 
                        <option>-이메일 선택-</option>
                        <option>daum.net</option>
                        <option>naver.com</option>
                        <option>nate.com</option>
                        <option>hotmail.com</option>
                        <option>yahoo.com</option>
                        <option>empas.com</option>
                        <option>korea.com</option>
                        <option>gmail.com</option>
                     </select>
                     <span style="font-size: 10pt; color: gray;">
                        <p>이메일을 통해 주문처리과정을 보내드립니다.<br/>
                              이메일 주소란에는 반드시 수신가능한 이메일주소를 입력해 주세요.</p>
                     </span>
                  </td>
               </tr>
               
               <tr>
                  <td class="deliverytd">배송메세지</td>
                  <td><textarea rows="5" cols="100" id="message"></textarea></td>
               </tr>
				</thead>
			</table>
			<br/><br/>			
			
	

			
			<%-- 결제예정금액 테이블  --%>
			
			<c:if test="${not empty requestScope.cartList}">
			<input type="hidden" class="empty" value="0"/>
	         <table class="calculation2">
	            <tr>
	               <th>총 상품금액</th>
	               <th>총 배송비</th>
	               <th style="width: 750px; padding: 22px 0;"><span>결제예정금액</span></th>
	            </tr>
	            
	            <tr style="background-color: #fff;" >
	               <td style="padding: 22px 0;"><span class="price totalprice"></span>원</td>
	               <td><span class="price rider">2,500</span>원</td>
	               <td>=<span class="price paymentprice">0</span>원</td>
	            </tr>
	         </table>
         <br/><br/>
         </c:if>
         
         <c:if test="${empty requestScope.cartList}">
         	<table class="calculation2">
	            <tr>
	               <th>총 상품금액</th>
	               <th>총 배송비</th>
	               <th style="width: 750px; padding: 22px 0;"><span>결제예정금액</span></th>
	            </tr>
	            
	            <tr style="background-color: #fff;" >
	               <td style="padding: 22px 0;"><span class="price totalprice">0</span>원</td>
	               <td><span class="price rider">0</span>원</td>
	               <td>=<span class="price paymentprice">0</span>원</td> 
	            </tr>
	         </table>
         <br/><br/>
         </c:if>
			
			
			<%-- 결제하기 --%>
			<div class="payArea">
				<div class="payment">
					<div style="padding: 18px 10px; font-size: 10pt; border-bottom: solid 1px #e0e0eb;">
						<input type="radio" id="card" name="cardradio" checked/><label for="card">카드결제</label>&nbsp;&nbsp;
						<input type="radio" id="bank" class="cardradio" name="cardradio" /><label for="bank">실시간 계좌이체</label>&nbsp;&nbsp;
						<input type="radio" id="phon" class="cardradio" name="cardradio"/><label for="phon">휴대폰 결제</label>&nbsp;&nbsp;
						<input type="radio" id="bankbook" class="cardradio" name="cardradio"/><label for="bankbook">무통장 입금</label>&nbsp;&nbsp;
						<input type="radio" id="account" class="cardradio" name="cardradio"/><label for="account">에스크로(가상계좌)</label>&nbsp;
					</div>
					
					<div align="left">
						<img src="/SemiCab/img/주의!.png" style="margin-left: 5px; position: relative; top: 6px;">
						<span style="font-size: 10pt; color: gray;">최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</span><br/>
						<img src="/SemiCab/img/주의!.png" style="margin-left: 5px; position: relative; top: 6px;">
						<span style="font-size: 10pt; color: gray;">소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수 있습니다.</span>
					</div> 
				</div>
				
				<div class="total">
					<span style="display:inline-block; padding: 20px 10px;">카드결제 최종결제 금액</span><br/>
					<span class="card_Payment" style="font-size: 25pt; font-weight: bold; padding: 0px 10px;">0 원</span><br/><br/>
					<button type="button" class="btn default paymentbutton" style="width: 90%; height: 60px; margin:0 15px; font-size: 15pt;" value="${(sessionScope.loginuser).member_num}" >결제하기</button><br/><br/>
				</div>
			</div>
			<br/><br/>
			
			
			
			<%-- 이용안내 --%>
			<div style="border: solid 1px #e0e0eb; padding: 10px 0; font-size: 12pt; background-color:#f5f5f0; padding-left: 10px;">
				무이자할부 이용안내
			</div>
			<div style="border: solid 1px #e0e0eb; font-size: 12pt; padding-left: 10px;">
				<span>-</span> <span style="font-size: 10pt; color: gray;">무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다.</span><br/>
				<span>-</span> <span style="font-size: 10pt; color: gray;">무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다.</span>
			</div>
			<br/>
			
			
			
			<div style="border: solid 1px #e0e0eb; padding: 10px 0; font-size: 12pt; background-color:#f5f5f0; padding-left: 10px;">
				이용안내
			</div>
			<div style="border: solid 1px #e0e0eb; height: 400px; font-size: 12pt; padding-left: 10px;">
				<br/>세금계산서 발행 안내
				<ol style="padding-left: 30px; padding-top: 8px;">
					<li class="lifont"> 부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달 10일까지만 요청하실 수 있습니다.</li>
					<li class="lifont"> 세금계산서는 사업자만 신청하실 수 있습니다.</li>
					<li class="lifont"> 배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
					<li class="lifont"> [세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로 사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.</li>
					<li class="lifont"> [세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수 있습니다.</li>
				</ol><br/>
				부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경안내
				<ol style="padding-left: 30px; padding-top: 8px;">
					<li class="lifont"> 변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신 주문에 대해서는 세금계산서 발행이 불가하며</li>
					<li class="lifont"> 신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령 57조)</li>
					<li class="lifont"> 상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만 세금계산서 발행이 가능함을 양지하여 주시기 바랍니다.</li>
				</ol><br/>
				현금영수증 이용안내
				<ol style="padding-left: 30px; padding-top: 8px;">
					<li class="lifont"> 현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로, 예치금)에 대해 발행이 됩니다.</li>
					<li class="lifont"> 현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지 않습니다.</li>
					<li class="lifont"> 발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을 해야 합니다</li>
					<li class="lifont"> 현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에 따라 변경 될 수 있습니다.)</li>
					<li class="lifont"> 현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
				</ol><br/>
			</div>			
		</form>
	</div>
</div>

	<%--
	     // *** PG(Payment Gateway 결제)영수증 테이블에 insert 해주는 폼이다.
	 --%>
	<form name="bilgeInsertFrm">
		<c:if test="${not empty requestScope.cartList}">
			<input type="hidden" name="memberNum" value="${sessionScope.loginuser.member_num}" />
			<input type="hidden" id="paymentprice" name="paymentprice" value="" /> 								<%-- 총액 --%>
			<input type="hidden" id="postnumF" name="postnum1" size="10" maxlength="5" value=""/> 			   <%-- 주소1 --%>
			<input type="hidden" id="addr1F" style="margin-bottom: 10px;" type="text" name="addr1" size="50" value=""/><br/>  <%-- 주소2 --%>
            <input type="hidden" id="addr2F"  name="addr2" size="50" value=""/>  					   			<%-- 주소3 --%>
			<c:forEach var="item" items="${requestScope.cartList}" varStatus="status">
				<input type="hidden" name="productNum"  value="${item.fk_product_num}"/>
				<input type="hidden" class="spinerF${status.index}" name="spinerF" style="text-align: right; width: 43px; margin-bottom: 5px;" value="${item.order_cnt}"/><%-- 주문수량 --%>
				<input type="hidden" name="orderNum"  value="${item.order_num}"/>
			</c:forEach>
		</c:if>
	</form> 
	
	
	

<jsp:include page="../footer.jsp"/>







