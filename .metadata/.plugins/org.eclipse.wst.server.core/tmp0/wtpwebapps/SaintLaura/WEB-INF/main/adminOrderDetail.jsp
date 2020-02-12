<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String ctxPath = request.getContextPath();
%>
<jsp:include page="../header.jsp" />
<link rel="stylesheet" href="<%=ctxPath%>/css/adminYSL.css?after">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<%-- 
<script src="<%=ctxPath%>/js_ysl/adminYSL.js"></script> --%>
<script type="text/javascript">
	
	$(document).ready( function(){

		giveOrget();
		goSelectReturnInfo();
		goInvoiceNoSelectInfo();
		
		// 주문상태 - 배송하기
		$("#selectOS").bind("change", function(){
			
			var idx = $(".adminTableTR").find("#idx").text();
			var orderDetailNo = $(".adminTableTR").find("#orderDetailNo").text();
			var selectOS = $("#selectOS option:selected").val();
			
			goOrderDeliveryUpdate(idx, orderDetailNo, selectOS);
		});
	
		// 반품상태 select
		$("#returnStatus").bind("change", function(){
			
			var idx = $(".adminTableTR").find("#idx").text();
			var pnum = $(".adminTableTR").find("#pnum").text();
			var orderDetailNo = $(".adminTableTR").find("#orderDetailNo").text();
			var returnStatus = $("#returnStatus option:selected").val();
			
			goReturnInsert(idx, pnum, orderDetailNo, returnStatus);
		});
		
		// 변경 버튼을 누르면 update!!
		$("#revise").click( function(){
			
			$("#selectedRS").hide();
			$("#returnStatus").show();
		});	
		
		
		// 교환할 제품번호 입력하기(교환신청일때만 가능!!)
		$("#inputChagePnum").keydown( function(event){
			if(event.keyCode == 13) {
				
				var chagePnum = $(this).val()				
				var orderDetailNo = $("#orderDetailNo").text();
				var returnStatus = $("#hiddenSelectedRS").val();
				
				// 입력한 제품번호로 주문테이블, 제품테이블 업데이트
				goUpdateOrder(chagePnum, orderDetailNo, returnStatus);
				
			}
		});
		
		
	}); // end of $(document).ready( function()----------------
	
	// 목록으로 가기
	function goOrderMenu() {
		location.href="adminOrderYSL.ysl";
	}
	
	// 받는사람과 주는사람의 정보가 같을경우~
	function giveOrget() {
		
		var orderName = $("#orderName").text();
		var orderHp = $("#orderHp").text();
		var name = $("#name").text();
		var hp = $("#hp").text();

		if(orderName == name && orderHp == hp) {
			
			$("#getPerson").hide();
		}
		
	}
	
	// 주문상태 바꾸면 update하기!
	function goOrderDeliveryUpdate(idx, orderDetailNo, selectOS) {
		
		$.ajax({
			url:"<%= ctxPath%>/adminOrderDeliveryUpdate.ysl",
			type:"POST",
			data:{"idx":idx
				 ,"orderDetailNo":orderDetailNo
				 ,"selectOS":selectOS},
			dataType:"JSON",
			success: function(json){
				
				location.reload();
				alert(json.msg);
				
				// 송장번호 읽어오기
				goInvoiceNoSelectInfo();
				
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			} 
			  
		   });
	} // end of function goOrderDeliveryUpdate(idx, pnum, orderDetailNo, returnStatus)------------------------------
	
	
	// 송장번호 읽어오기!
	function goInvoiceNoSelectInfo() {
		
		$.ajax({
			url:"<%= ctxPath%>/adminInvoiceNoInsert.ysl",
			type:"POST",
			data:{"orderDetailNo":"${orderDetail.orderDetailNo}"},
			dataType:"JSON",
			success: function(json){
				
				var invoiceNo = json.invoiceNo;
				var invoiceDate = json.invoiceDate;
				
				$("#invoiceNo").text(invoiceNo);
				$("#invoiceDate").text(invoiceDate);

				
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			} 
			  
		   });
	} // end of function goReturnInsert(idx, pnum, orderDetailNo, returnStatus)--------------------------
	
	
	// 반품상태 바꾸면 insert하기!
	function goReturnInsert(idx, pnum, orderDetailNo, returnStatus) {
	
		$.ajax({
			url:"<%= ctxPath%>/adminReturnInsert.ysl",
			type:"POST",
			data:{"idx":idx
				 ,"pnum":pnum
				 ,"orderDetailNo":orderDetailNo
				 ,"returnStatus":returnStatus},
			dataType:"JSON",
			success: function(json){
				location.reload();
				
				// 교환신청은 제품재고 확인했을 때 alert
				if(returnStatus != "4") {
					alert(json.msg);
				}
				
				goSelectReturnInfo();
				
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			} 
			  
		   });
	} // end of function goReturnInsert(idx, pnum, orderDetailNo, returnStatus)--------------------------
	
	// 반품테이블에서 정보 읽어오기
	function goSelectReturnInfo() {
		   
		   $.ajax({
				  url:"<%= ctxPath%>/adminReturnSelect.ysl",
				//type:"GET",  // DML 은 POST, select문은 GET
				  data:{"orderDetailNo":"${orderDetail.orderDetailNo}"}, 
				  dataType:"JSON",
				  success : function(json) {
					
					  var returnStatus = json.returnStatus;
					  var returnMap = json.returnMap;
					  
					  if(returnMap != null) {
					 
						 var returnDetailNo = json.returnDetailNo;
						 var returnDate = json.returnDate;
						 
						 $("#returnDetailNo").text(returnDetailNo);
						 $("#returnDate").text(returnDate);
						 $("#hiddenSelectedRS").val(returnStatus);
						 
						 // 교환신청 일때 교환제품 입력칸 활성화
						 if(returnStatus == "4") {
							$("#inputChagePnum").attr("disabled", false);
						 }
						 else {
						    $("#inputChagePnum").attr("disabled", true);
						 }
						 
						switch (returnStatus) {
						case "4":
							returnStatus = "교환신청"
							break;
						case "5":
							returnStatus = "교환완료"
							break;
						case "6":
							returnStatus = "반품신청"
							break;
						case "7":
							returnStatus = "반품완료"
							break;
						case "8":
							returnStatus = "교환취소"
							break;
						case "9":
							returnStatus = "반품취소"
							break;
						default:
							break;
						}
						$("#selectedRS").text(returnStatus);
						$("#selectedRS").show();
						$("#returnStatus").hide();
						return;
					  }
					  else{
						  
						  $("#returnStatus").show();
						  $("#returnStatus").val("0");
					  }
				  },
				  error: function(request, status, error){
						alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
				  }
		   });
	   } // end of function goselectReturnInfo()---------------------------------------------
	
	   function goUpdateOrder(chagePnum, orderDetailNo, returnStatus) {
		   // 제품을 교환하면 제품명, 주문일자, 주문상태 바꾸고
		   // 주문한 제품 재고량 +1
		   $.ajax({
			  url:"<%= ctxPath%>/adminUpdateOrder.ysl", 
			  type:"POST",
			  data:{"pnum":chagePnum
				   ,"orderDetailNo":orderDetailNo
				   ,"returnStatus":returnStatus},
			  dataType:"JSON",
			  success: function(json){
				  location.reload();
				  alert(json.msg);
				 
				  goSearchName(chagePnum);
		      },
			  error: function(request, status, error){
				  alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			  } 
		   });
		   
	   }
	   
	   // 교환할 제품이름 select 해오기~
	   function goSearchName(chagePnum) {
		   
		   $.ajax({
				url:"<%= ctxPath%>/adminSearchName.ysl",
				data:{"pnum":chagePnum},
				dataType:"JSON",
				success: function(json){
					var pname = json.pname;
					$("#chagePname").text(pname);
					$("#pnum").text(chagePnum);
					alert($("#pnum").text());
					
				},
				error: function(request, status, error){
					alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
				} 
				  
		   });		   
	   } 
		   
	   
	   
	  
</script>

	<div id="adminContainer">
		<div class="adminrow adminFirRow">
			<img src="images/payment-logo.png" class="admingLogo" />
		</div>
		<div class="col-xs-3 adminMenurow adminrow" style="border-right: hidden;" >
			<div class="adminMenu adminOrder"><span id="adminOrder" onclick="goOrderMenu();">주문&반품리스트</span></div>
		</div>
		<div class="col-xs-3 adminMenurow adminrow" style="border-right: hidden; border-left: hidden;">
			<div class="adminMenu adminProduct"><span id="adminProduct" onclick="goProductMenu();">상품등록</span></div>
		</div>
		<div class="col-xs-3 adminMenurow adminrow" style="border-right: hidden; border-left: hidden;">
			<div class="adminMenu adminCustomer"><span id="adminCustomer" onclick="goCustomerMenu();">고객리스트</span></div>
		</div>
		<div class="col-xs-3 adminMenurow adminrow" style="border-left: hidden;">
			<div class="adminMenu adminService"><span id="adminService" onclick="goServiceMenu();">고객서비스</span></div>
		</div>

		<div class="adminContentrow adminrow">
		
	<%-- 주문반품상세내역 --%>
			<form name="ordeDetailFrm">
			<c:if test="${not empty orderDetail}">
			<div class="adminContent adminOrderDetail">
				<table class="adminOrderDetailTable">
					<tr class="adminTableTR">
						<td class="tableName">주문번호</td>
						<td><span id="orderNo">${orderDetail.orderNo}</span></td>
						<td class="tableName">주문일자</td>
						<td><span id="orderDate">${orderDetail.orderDate}</span></td>
					</tr>
					<tr class="adminTableTR">
						<td class="tableName">주문상태</td>
						<td colspan="3">
							<span id="orderStatus">${orderDetail.orderStatus}</span>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<select id="selectOS" name="selectOS">
								<option style="font-size: 9pt;" value="0">::: 선택 :::</option>
				    			<option style="font-size: 9pt;" value="2">배송하기</option>
				    			<option style="font-size: 9pt;" value="3">배송완료</option>
							</select>
						</td>
					</tr>
					
					<tr class="adminTableTR">
						<td class="tableName">트래킹번호</td>
						<td>
							<span id="invoiceNo"></span>
						</td>
						<td class="tableName">배송일자</td>
						<td>
							<span id="invoiceDate"></span>
						</td>
						
					</tr>
					
					<tr class="adminTableTR adminReturnReasonTR">
						<td class="tableName">반품상태</td>
						<td>
							<div id="returnStatusDiv" style="display:inline-block;">
							<select id="returnStatus" name="returnStatus">
								<option style="font-size: 9pt;" value="0">::: 선택 :::</option>
				    			<option style="font-size: 9pt;" value="4">교환신청</option>
				    			<option style="font-size: 9pt;" value="5">교환완료</option>
				    			<option style="font-size: 9pt;" value="6">반품신청</option>
				    			<option style="font-size: 9pt;" value="7">반품완료</option>
				    			<option style="font-size: 9pt;" value="8">교환취소</option>
				    			<option style="font-size: 9pt;" value="9">반품취소</option>
							</select>
							  
							<span id="selectedRS"></span>
							<input id="hiddenSelectedRS" type="hidden" value=""/>
							</div>
							<span id="revise" style="background-color:black; color:white; padding: 1px 3px; margin-left: 10px; cursor:pointer;">변경</span>
							
						</td>
						<td class="tableName">교환&반품사유</td>
						<td>
							<select>
								<option style="font-size: 9pt;">교환&반품시만 선택</option>
								<option style="font-size: 9pt;">구매의사취소</option>
				    			<option style="font-size: 9pt;">색상 및 사이즈 변경</option>
				    			<option style="font-size: 9pt;">다른 상품 잘못 주문</option>
				    			<option style="font-size: 9pt;">서비스 불만족</option>
				    			<option style="font-size: 9pt;">배송지연</option>
				    			<option style="font-size: 9pt;">배송누락</option>
				    			<option style="font-size: 9pt;">상품파손</option>
				    			<option style="font-size: 9pt;">상품정보 상이</option>
				    			<option style="font-size: 9pt;">오배송</option>
				    			<option style="font-size: 9pt;">색상 등 다른상품 잘못 배송</option>
							</select>
						</td>
					</tr>
					<tr class="adminTableTR">
						<td class="tableName">반품번호</td>
						<td><span id="returnDetailNo"></span></td>
						<td class="tableName">반품접수일자</td>
						<td><span id="returnDate"></span></td>
					</tr>
					<tr class="adminTableTR">
						<td class="tableName">주문고객번호</td>
						<td id="idx">${orderDetail.idx}</td>
						<td class="tableName">이메일</td>
						<td>${orderDetail.email}</td>
						
					</tr>
					<tr class="adminTableTR">
						<td class="tableName">주문고객명</td>
						<td id="orderName">${orderDetail.orderName}</td>
						<td class="tableName">연락처</td>
						<td id="orderHp">${orderDetail.orderHp}</td>
					</tr>
					<tr class="adminTableTR" id="getPerson">
						<td class="tableName">받는사람</td>
						<td id=name>${orderDetail.name}</td>
						<td class="tableName">받는사람 연락처</td>
						<td id="hp">${orderDetail.hp}</td>						
					</tr>
					<tr class="adminTableTR">
						<td class="tableName">우편번호</td>
						<td>${orderDetail.post}</td>
						<td class="tableName">주소</td>
						<td>${orderDetail.addr}</td>
					</tr>
					<tr class="adminTableTR">
						<td>상세주문번호<br/>(#<span id="orderDetailNo">${orderDetail.orderDetailNo}</span>)</td>
						<td>제품번호<br/>(#<span id="pnum">${orderDetail.pnum}</span>)</td>
						<td id="chagePname">${orderDetail.pname}</td>
						<td id="chagePnum">교환제품번호<input type="text" id="inputChagePnum" name="inputChagePnum" disabled/></td>
					</tr>
					<tr>
						<td colspan="4" style="text-align: center; border-left: hidden; border-right: hidden; border-bottom: hidden; vertical-align: middle;">
							<button type="button" class="btn-third btn-Css btn-another" id="goList-btn" style="color:white; font-size: 9pt; width: 160px;" onclick="goOrderMenu();">목록으로</button>
						</td>
					</tr>
				</table>
			</div>
			</c:if>
			</form>
			<%-- 주문반품상세내역 끝 --%>
			
		</div>
	</div>
</body>
</html>