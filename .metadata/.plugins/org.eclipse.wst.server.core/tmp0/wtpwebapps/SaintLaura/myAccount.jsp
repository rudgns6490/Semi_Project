<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="header.jsp" />

<link rel="stylesheet" href="css/myAccount.css">

<body>


	<div class="container">
		<img src="images/myAccount_Banner.jpg" class="myAccountBanner"/>
		<div style="border: solid rgb(239, 239, 239) 1px;" >
			<ul class="logged">
				<li class="profileMenu basicMenu">나의 정보</li>
				<li class="orderMenu basicMenu">주문&반품</li>
				<li class="wishlistMenu basicMenu">위시리스트</li>
				<li class="logoutMenu">로그아웃</li>
			</ul>
		</div>
		<div class="welcomeMsg" style="border: solid rgb(239, 239, 239) 1px; border-top: hidden;">
			<div class="hello">안녕하세요, <span>SOMI</span> 고객님</div>
			<div class="explanation">고객님의 개인 계정의 모든 개인정보, 설정 내용, 저장된 아이템을 안전하게 보관합니다.</div>
		</div>
		<div class="overview">
			<div class="profileContainer col-xs-4 row-eq-height">
				<div class="firstWrapper">
					<div class="myinfo info">나의 정보</div>
					<ul class="title info">
						<li class="listinfo info"><span style="font-weight: bold;">이름</span><br/><span>SOMI</span></li>
						<li class="listinfo info"><span style="font-weight: bold;">성</span><br/><span>LIM</span></li>
						<li class="listinfo info"><span style="font-weight: bold;">이메일</span><br/><span>abcd@naver.com</span></li>
						<li class="listinfo info" style="padding-bottom: 25px;"><span style="font-weight: bold;">생년월일</span><br/><span>28/12/1990</span></li>
					</ul>
					<div class="updateInfo moreBtn">
						<span class="spanBtn">수정</span>
					</div>
				</div>
			</div>
			<div class="orderContainer col-xs-4 row-eq-height">
				<div class="secondWrapper">
					<div class="myinfo info">주문&반품</div>
					<ul class="title info">
						<li class="moreinfo info">
							<table>
								<tr class="orderTr">
									<td style="width: 30%;"> 
										<img src="images/black_bag.jpg" class="orderImg" />
									</td>
									<td style="width: 70%;"> 
										<div class="orderList info orderContents">주문번호 : <span>0921753</span></div>
										<div class="orderList info orderContents">주문제품 : <span>까맣고 까만 양가방아가가아냐냔아가가아냐냔</span></div>
									</td>
								</tr>
								<tr class="orderTr">
									<td style="width: 30%;"> 
										<img src="images/black_bag.jpg" class="orderImg" />
									</td>
									<td style="width: 70%;"> 
										<div class="orderList info orderContents">주문번호 : <span>0921753</span></div>
										<div class="orderList info orderContents">주문제품 : <span>까맣고 까만 양가방아가가아냐냐아가가아냐냔</span></div>
									</td>
								</tr>
								<tr class="orderTr">
									<td style="width: 30%;"> 
										<img src="images/black_bag.jpg" class="orderImg" />
									</td>
									<td style="width: 70%;"> 
										<div class="orderList info orderContents">주문번호 : <span>0921753</span></div>
										<div class="orderList info orderContents">주문제품 : <span>까맣고 까만 양가방아가가아냐냐아가가아냐냔</span></div>
									</td>
								</tr>
							</table>
						</li>
					</ul>
					<div class="moreinfo moreBtn">
						<span class="spanBtn">모두보기</span>
					</div>
				</div>
			</div>
			<div class="wishlistContainer col-xs-4 row-eq-height">
				<div class="thirdWrapper">
					<div class="myinfo info">위시리스트</div>
					<ul class="title info">
						<li class="wishlistinfo info">
							<img src="images/black_bag.jpg" class="wishlistImg" />
						</li>
						<li class="wishlistinfo info">
							<img src="images/black_bag.jpg" class="wishlistImg" />
						</li>
					</ul>
					<div class="updateInfo moreBtn">
						<span class="spanBtn">모두보기</span>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>