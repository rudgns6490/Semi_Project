<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>

<script type="text/javascript">

$(document).ready(function() {
	//	여기 링크를 꼭 참고하세용 http://www.iamport.kr/getstarted
   var IMP = window.IMP;     // 생략가능
   IMP.init('imp08049163');  // 중요!!  아임포트에 가입시 부여받은 "가맹점 식별코드". 
	
   // 결제요청하기
   IMP.request_pay({
       pg : 'kakaopay', // 결제방식 PG사 구분
       pay_method : 'card',	// 결제 수단
       merchant_uid : 'merchant_' + new Date().getTime(), // 가맹점에서 생성/관리하는 고유 주문번호
       name : '하빈펫푸드 상품 결제',	 // 제목, 코인충전 또는 order 테이블에 들어갈 주문명 혹은 주문 번호. (선택항목)원활한 결제정보 확인을 위해 입력 권장(PG사 마다 차이가 있지만) 16자 이내로 작성하기를 권장
       amount : 10,	  // 원래는 '${paymoney}'  결제 금액 number 타입. 필수항목. 
       buyer_email : '${email}',  // 구매자 email, 지금은 생략
       buyer_name : '${user_name}',	  // 구매자 이름  (session에서 꺼내온 name)
       buyer_tel : '${phone}',    // 구매자 전화번호 (필수항목)
       buyer_addr : '',  
       buyer_postcode : '',
       m_redirect_url : ''  // 휴대폰 사용시 결제 완료 후 action : 컨트롤러로 보내서 자체 db에 입력시킬것! (돈을 보냈으니 db의 코인에 업뎃)
 		//아래의 데스크답버전과 다르게 모바일은 결제가 끝나고 한단계 더 거쳐야함  , 직접 idx와 coinmoney         누구인지 알아야하므로 idx
   }, function(rsp) {

	   /*
		   if ( rsp.success ) {
			   var msg = '결제가 완료되었습니다.';
			   msg += '고유ID : ' + rsp.imp_uid;
			   msg += '상점 거래ID : ' + rsp.merchant_uid;
			   msg += '결제 금액 : ' + rsp.paid_amount;
			   msg += '카드 승인번호 : ' + rsp.apply_num;
		   } else {
			   var msg = '결제에 실패하였습니다.';
			   msg += '에러내용 : ' + rsp.error_msg;
		   }
		   alert(msg);
	   */

		if ( rsp.success ) { // PC 데스크탑용, 결제 성공 후에 할 일
		/* === 팝업창에서 부모창 함수 호출 방법 3가지 ===
		    1-1. 일반적인 방법
			opener.location.href = "javascript:부모창스크립트 함수명();";
			
			1-2. 일반적인 방법
			window.opener.부모창스크립트 함수명();

			2. jQuery를 이용한 방법
			$(opener.location).attr("href", "javascript:부모창스크립트 함수명();");
		*/
		//	opener.location.href = "javascript:goCoinUpdate('${idx}','${coinmoney}');";
	//		window.opener.goCoinUpdate('${idx}','${coinmoney}'); //결제 성공이니 업데이트
		//  $(opener.location).attr("href", "javascript:goCoinUpdate('${idx}','${coinmoney}');");
			
			
			var frm = opener.document.orderFrm;
			frm.method="POST";
			frm.action="/Semi_Team1/shop/orderEnd.dog"
			frm.submit();
			
		    self.close();
			
        } else {
          //  location.href="/shop/basket.dog ";
            alert("결제에 실패하였습니다.");
       }

   }); // end of IMP.request_pay()----------------------------

}); // end of $(document).ready()-----------------------------

</script>
</head>	
<body>

</body>
</html>
