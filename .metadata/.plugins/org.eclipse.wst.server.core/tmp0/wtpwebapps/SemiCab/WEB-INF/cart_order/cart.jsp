<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%  String ctxPath = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../header.jsp"/>
       
<style type="text/css">
   
   div#backbody {                               /* 장바구니 body */
      background-color: #f5f5f0;
      font-size: 13pt;
      min-width: 1480px;
      width: 100%;
      padding: 50px  ;
   }
   
   #frame {                                       /* 전체 div */
      width: 80%;
      margin: 0 auto;   
      padding: 50px 50px;
      background-color: #fff;
   }
   
   #frame2{                                        /* 페이지 맨위 header아님!! 장바구니 홈>장바구니  */
      border-bottom: solid 1px #e0e0eb;
      padding: 20px 0;
   } 
   
   
   .home {   /* 홈 > 장바구니 */
      float: right;
   }
   

   table.calculation1{                      /* 계산 테이블  */
      clear: both;
      border: solid 1px #e0e0eb;
      border-collapse: collapse;
      background-color: #f5f5f0;
      width: 100%;
      font-size: 10pt;
   }
   table.calculation1 th {                     /* 계산 테이블 - 제목 */
      border: solid 1px #e0e0eb;
      padding: 10px 0;
      
   }
   table.calculation1 td{                     /* 계산 테이블 - 내용 */
      border: solid 1px #e0e0eb;
      text-align: center;
   }
 

   table.calculation2 {                      /* 총 결제예정금액 테이블  */
      border: solid 1px #e0e0eb;
      border-collapse: collapse;   
      background-color: #f5f5f0;
      width: 100%;
      font-size: 10pt;
   }  

   table.calculation2 th {                    /* 총 결제예정금액 테이블 - 제목  */
      border: solid 1px #e0e0eb;
      
   }
   

   table.calculation2 td {                     /* 총 결제예정금액 테이블 - 내용 */
      border: solid 1px #e0e0eb;
      text-align: center;
   }
   
   .price {                               /* calculation2 테이블 - 가격  ~원 */
      font-size: 20pt;
      font-weight: bold;
   }
   
   .lifont { font-size: 10pt; color: gray; }       /* 이용약관 ol태그 - li  */
   
   
   /* bootstrp 버튼 */
   .btn {
        border: none;
        color: white;
        padding: 5px 10px;
        font-size: 13px;
        cursor: pointer;
        border-radius: 5px;
   }
   
   .default {background-color: #fff; border: solid 1px gray; color: black;}
   .default:hover {background: #ddd;}
   
   
   /* 선택상품 삭제,해외배송 장바구니로 이동 float  */
   .btnfloat{ float:left;}
   
   /* 선택상품 장바구니,견적서출력   float  */
   .btnfloat2{ float: right;}
   
   /* 혹시몰라서 clear 하나 줌  */
   .clearboth{clear: both;} 
   
   .footerbtn {float: right;  font-weight: bolder; font-size: 12pt; border-radius: 3px; }  /* 쇼핑계속하기 button */
   
   #allProduct, #productClear, #footerbtn { padding: 11px 25px; } /* 전체상품주문 성택상품주문 쇼핑계속하기 button 통합  */
   
   #allProduct{margin-left: 140px; background-color: #264d73; color: #fff; font-weight: bold; font-size: 12pt;} /* 전체상품주문 button */
   #productClear{background-color: gray; color: #fff; font-weight: bold; font-size: 12pt; } /* 선택상품주문 button */
   
   .aa:hover{ cursor: pointer; }   /* 구매상품 해외상품 hover */
   
</style>


<script type="text/javascript">
   
   $(document).ready(function(){
      
      $("#notproduct").hide();    // 선택된 등록상품이 없습니다.
      

      $(".spiner").spinner();
      
   var empty = $(".empty").val();
      
      if ( empty == 1 ) {
         priceFunc();
      } 
       
      
      // 스피너 눌렀을 경우 합계 변경하기
      $(".spiner").bind("spinstop", function(){
         // === 스피너는 이벤트가 "change" 가 아니라 "spinstop" 이다. === //

         priceFunc();

      }); 
      
   
      
       $(".calculation1 thead input:checkbox[id=check]").click(function(){
         var bool =$(this).prop("checked");
         $(".calculation1 tbody input:checkbox[name=checkbox]").prop("checked",bool);
      });
      
      $(document).on("click",".calculation1 tbody input:checkbox[name=checkbox]",function(){
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
      
      
      
   // 선택상품 삭제 버튼 눌렀을시 제품 삭제하기 //
      $("#choiceProductDelete").click(function(){
         
         var bool = $(".calculation1 tbody input:checkbox[name=checkbox]").is(":checked");
         var delArr = new Array;
         
         if(!bool){
            alert("선택된 상품이 없습니다.");
         }
         
         else {
            
            for (var i = 0; i < $(".calculation1_tbody_tr1").length; i++) {
               var cName = ".calculation1 tbody input:checkbox[id=cbtr"+i+"]";
               
               if ($(cName).is(":checked")) {
                  cName = ".buypd"+i;
                  var val = $(cName).val();
                  delArr.push(val);
               }

            } // end of for
            
            
            window.location="<%= ctxPath%>/cartDatadel.ej?delArr="+delArr;
         }// end of else -------------------------------------------------------
         

      }); // end of $("#choiceProductDelete").click()---------------------
      
      
      
       // 상품목록 태그의 삭제버튼 눌렀을 경우~
      $(".btndelete").click(function(){
         
          var order_num = $(this).attr('value');
   
           var tr = $("#calculation1tbody tr").val();
           if(tr == null){
              $("#notproduct").show();
           }     

         window.location.href="<%= ctxPath%>/cartDatadel.ej?order_num="+order_num+"";  
           
       
         
      }); // end of $(".btndelete").click()----------------------
      
  
      
      /* 장바구니 비우기 버튼 눌렀을시 tbody 비우기  */
      $(".cartDelete").click(function(){
         
         window.location.href="<%= ctxPath%>/cartDatadel.ej";
         
      });
      

      /* 상품별 우측에 해당하는 주문하기 버튼 */
      $(".orderbtn").click(function () {
    	  
		var click = $(this).val();
		
		delTheOthers(click);
		changName();
		
		$("#cartAllCnt").val($(".calculation1_tbody_tr1").length);

        var frm = document.cartForm;
        frm.method = "POST";
        frm.action = "<%= ctxPath%>/order.ej";
        frm.submit();    
		
	});
	
     
      
      /* 선택상품 주문  */
      $("#productClear").click(function(){
    	  
    	  var bool = $(".calculation1 tbody input:checkbox[name=checkbox]").is(":checked");
          
          if(!bool){
             alert("선택된 상품이 없습니다.");
          }
         
         else {
        	 			
        
       		delNotCheck();
       		changName();
       		
       		$("#cartAllCnt").val($(".calculation1_tbody_tr1").length);

            var frm = document.cartForm;
            frm.method = "POST";
            frm.action = "<%= ctxPath%>/order.ej";
            frm.submit();  
        	 
         }// end of else()--------
         
      });
      
      /* 상품주문 버튼 눌렀을시 주문페이지로 넘어간다  */
      $(".orderGobtn").click(function(){
    	 
    	 $("#cartAllCnt").val($(".calculation1_tbody_tr1").length);
    	 
    	 var trLength = ($(".calculation1_tbody_tr1").length);
    	 
 /*   		확인용 
 			for(var i=0; i<trLength; i++){
    		var spiner = $(".spiner"+i+"").attr('aria-valuenow');
    //		alert(spiner);
    		
    		var buypd = $(".buypd"+i+"").val();
    //		alert(orderNum);
    	 } */
    	 
    	 if($(".calculation1_tbody_tr1").length == 0) { 
    		 alert("장바구니에 상품이 없습니다.");
    	 }
    	  
    	 else{
	         
    		 var frm = document.cartForm;
	         frm.method = "POST";
	         frm.action = "<%= ctxPath%>/order.ej";
	         frm.submit();
    	 }
    	  
          
      });
      
      /*-----------------------------------------------------------------------------------------------  */

         
   }); // end of $(document).ready()------------------

   // 스피너 눌렀을 경우 합계 변경하기
   function priceFunc() {
      
      var total = 0;
      for (var i = 0; i < $(".spiner").length; i++) {
         var cName = ".spiner"+i;
         var cnt = parseInt( $(cName).val() );
         
         cName = ".order_price"+i;
         
         var price = parseInt( $(cName).text() ); 
         
         cName = ".sum"+i;
          
         $(cName).text((cnt*price+2500).toLocaleString());
         
         total += cnt*price;
      }
      
      $(".totalprice").text(total.toLocaleString());
      $(".paymentprice").text((total+2500).toLocaleString()); 
   }
   
   // 주문하기 버튼을 클릭한 제품 외 나머지 제품들 view 단에서 삭제하기
   function delTheOthers(click) {
	   
	   $(".orderbtn").each(function (index, item) {
		   
		   var val = $(item).val();
		     
		   console.log(val);
		   
		if ( !(val == click) ) {
			$(this).parents().find("#tbody_tr"+index+"").remove();
		}
	});
	
   }
   
   
   // 체크안된 제품들 view단에서 삭제하기
   function delNotCheck() {
	   
	   $(".calculation1 tbody input:checkbox[name=checkbox]").each(function(){
   	 	
  		 if(!($(this).is(":checked"))) {
  			var index = $(this).val(); 
  			$(this).parents().parents().find("#tbody_tr"+index+"").remove();  
  		 }
  		 
  	 });
	   
   }
   
   // view단에서 삭제된후 제품들 name명 다시정렬하기
   function changName() {
	   var length = $(".calculation1_tbody_tr1").length
		
	   $(".buyth").each(function(index, item){
			   var name = "buypd"+index;
				   
			   $(this).attr("name",name);
			 
		});
	
	   $(".spiner").each(function(index, item){
			
			   var name = "spinner"+index; 
				   
			   $(this).attr("name",name); 
			 
		});
	
	   
   }
   
</script>

<div id="backbody">
   <div id="frame">
      <form name="cartForm" >
         <div id="frame2">
            <span style="font-size: 16pt; font-weight: bold;">장바구니</span>
            <span class="home"> 홈 > 장바구니</span>
            <span> </span>
            
         </div>
         <br/>
         
         <div>
            <table>
               <tr>
                  <th class="aa">구매상품</th>

               </tr>
            </table>
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
                  <th>선택</th>
               </tr>
            </thead>
               
            <tbody id="calculation1tbody"> 
            
                  <c:if test="${not empty requestScope.cartList}">   
                     <c:forEach var="item" items="${requestScope.cartList}" varStatus="status">
                        <tr class="calculation1_tbody_tr1" id="tbody_tr${status.index}" style="height: 90px; background-color: #fff;" >
                           <td style="text-align: left; text-align:center; border-right: none;">
                             <input type="checkbox" id="cbtr${status.index}" name="checkbox" value="${status.index}"/>
                             <input type="hidden" class="buyth buypd${status.index}" value="${item.order_num}" name="buypd${status.index}">
                             <input type="hidden" name="cartAllCnt" value="" id="cartAllCnt" />

                           </td>
                           <td style="border-left: none; border-right: none;"><img style="width: 150px;" src="/SemiCab/img/${item.imgNum}"></td>
                           
                           <td style="text-align:left; padding-left: 10px; border-left: none; font-weight: bold;">${item.product_name}(${item.color})</td>
                           
                           <td><span style="padding-left: 10px;" class="order_price${status.index}">${item.order_price}</span>원</td>

                           <td style="width: 80px;">
                              <input class="spiner spiner${status.index} " name="spinner${status.index}" style="text-align: right; width: 43px; margin-bottom: 5px;"  min="1" max="99" step="1" value="${item.order_cnt}" />
                           </td>
                           
                           <td>-</td>
                           <td>기본배송</td>
                           <td>2,500원<br/>고정</td>
                           <td><span class="sum sum${status.index}"></span>원</td> 
                           <td>
                              <button type="button" class="btn default orderbtn" value="${status.index}" style="border-radius: 3px; width: 90px;  margin-bottom: 3px; font-size: 11px; background-color: #264d73; color: #fff; " >주문하기</button><br/>
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
            
               <tr id="notproduct" style="background-color: #fff;">
                  <td colspan="10" style="font-size: 20pt; color: gray;"><span>장바구니에 등록된 상품이 없습니다.</span></td>
               </tr>
               
            <tfoot>   
               <tr style="height: 60px;">
                  <td colspan="5" style="border-right: none; text-align: left; padding-left: 10px;">
                     <span>[기본배송]</span>
                  </td>
                  <td colspan="5" class="spanprice" style="border-left: none; text-align: right; padding-right: 10px;">
                     <%-- 상품금액 <span></span> + <span>배송비 2,500 = 합계</span>&nbsp;<span style="font-weight: bold; font-size: 15pt;">0</span>원 --%>
                  </td>
                  
               </tr>
               
            </tfoot>   
            </table>
            
            <div style="border:solid 1px #e0e0eb; padding: 15px 0;" >
               <img src="/SemiCab/img/주의!.png" style="margin-left: 5px; position: relative; top: 4.5px;">
               <span style="font-size: 10pt; color: gray;">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다</span>
            </div>
         </div>
         
         <div style="margin: 10px 0;">
            <span style="margin: 0 10px;" class = "btnfloat">선택상품을</span>
            <button type="button" class="btn default btnfloat" id="choiceProductDelete" style="background-color: gray; color: #fff;">x 삭제하기</button>&nbsp; 
             
            <button type="button" class="btn default btnfloat2">견적서 출력 ></button>
            <button type="button" class="btn default btnfloat2 cartDelete" value="">장바구니비우기</button>
            <span class="clearboth"></span>
         </div>
         <br/><br/>
         
         
         <%-- 결제예정금액 테이블  --%>
         <c:if test="${not empty requestScope.cartList}">
            <input type="hidden" class="empty" value="1"/>
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
            <input type="hidden" class="empty" value="0"/>
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
         
         <div align="center">
            <button type="button" class="btn default orderGobtn" id="allProduct">전체상품주문</button>
            <button type="button" class="btn default" id="productClear">선택상품주문</button>
            <button type="button" class="btn default footerbtn" id="footerbtn" onclick="javascript:location.href='<%=ctxPath%>/main.ej'">쇼핑계속하기</button>
            <span class="clearboth"></span>
         </div>
         <br/><br/><br/><br/><br/>
         
         <div style="border: solid 1px #e0e0eb; padding: 10px 0; font-size: 12pt; background-color:#f5f5f0; padding-left: 10px;">
            이용안내
         </div>
         <div style="border: solid 1px #e0e0eb; height: 350px; font-size: 12pt; padding-left: 10px;">
            <br/>장바구니 이용안내
            <ol style="padding-left: 30px;">
               <li class="lifont"> 해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.</li>
               <li class="lifont"> 해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.</li>
               <li class="lifont"> 선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.</li>
               <li class="lifont"> [쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
               <li class="lifont"> 장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
               <li class="lifont"> 파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.</li>
            </ol><br/>
            무이자할부 이용안내
            <ol style="padding-left: 30px;">
               <li class="lifont"> 상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을 눌러 주문/결제 하시면 됩니다.</li>
               <li class="lifont"> [전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.</li>
               <li class="lifont"> 단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.</li>
               <li class="lifont"> 무이자할부 상품은 장바구니에서 별도 무이자할부 상품 영역에 표시되어, 무이자할부 상품 기준으로 배송비가 표시됩니다.<br/>
                    실제 배송비는 함께 주문하는 상품에 따라 적용되오니 주문서 하단의 배송비 정보를 참고해주시기 바랍니다.</li>
            </ol>
         </div>
      </form>
   </div>
</div>

 

<jsp:include page="../footer.jsp"/>


