<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="header.jsp" />

<link rel="stylesheet" href="css/customerService.css">

<body>

	<div class="container">
		<img src="images/customerService-banner.jpg" class="customerServiceBanner"/>
		<div id="customerHead">
			<span class="customerTitle">고객 서비스</span>
		</div>
		<div id="customerBody">
			<span style="font-size: 8pt;">
			문의사항이나 도움이 필요하시면 언제든지 연락주시기 바랍니다. <br/>
			운영시간은 월요일부터 토요일까지 오전 10시30분~오후 10시까지 입니다. (공휴일제외) <br/>
			담당 직원이 고객님의 문의에 성심성의껏 답변해 드리고 브랜드와 제품에 대해 자세히 안내해 드립니다. <br/>
			</span>
		</div>
	
		<div class="customerFooter col-xs-4">
			<span class="footerTitle" style="font-size: 11pt; font-weight: bold;">이메일</span>
			<br/>
			<span style="font-size: 8pt;">
				영업일 기준 24시간 이내에 회신해 드릴 수 있도록<br/>
				최선을 다하겠습니다.<br/><br/>
			</span>
			<button class="login-input btn-default login-btn" id="register-btn" style="color:white; margin-top:17px; font-size: 9pt;">이메일 문의</button>
		</div>
		<div class="customerFooter col-xs-4">
			<span class="footerTitle" style="font-size: 11pt; font-weight: bold;">전화</span>
			<br/>
			<span style="font-size: 8pt;">
				저희 직원에게 말씀해 주세요:<br/> 
				+82 1012345678<br/>
				월요일~토요일, 오전 10시30~오후 10시
			</span>
			<button class="login-input btn-default login-btn" id="register-btn" style="color:white; margin-top:17px; font-size: 9pt;">전화 문의</button>
		</div>
		
		<div class="customerFooter col-xs-4">
			<span class="footerTitle" style="font-size: 11pt; font-weight: bold;">라이브 채팅</span>
			<br/>
			<span style="font-size: 8pt;">
				도움이나 스타일 조언이 필요하시면 담당 직원에게 실시간 채팅으로 문의하세요.<br/> 
				월요일~토요일, 오전 10시30~오후 10시
			</span>
			<button class="login-input btn-default login-btn" id="register-btn" style="color:white; margin-top:17px; font-size: 9pt;">채팅 상담</button>
		</div>
		
	
	</div>
	
</body>
</html>
