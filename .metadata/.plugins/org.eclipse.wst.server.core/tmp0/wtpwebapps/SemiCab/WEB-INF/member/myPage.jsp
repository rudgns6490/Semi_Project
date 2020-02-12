<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String ctxPath = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!-- -----------------------------------------------------HEADER 부분------------------------------------------------------ -->
<jsp:include page="../header.jsp"></jsp:include>
<!-- -----------------------------------------------------HEADER 부분 끝------------------------------------------------------ -->
<%-- ---------------------------------------S C R I P T 시작----------------------------------------------------------------- --%> 
<script type="text/javascript">

	$(document).ready(function(){
		
		
			
			
	
	
	
	
	});



</script>
<%-- ---------------------------------------S C R I P T 끝----------------------------------------------------------------- --%> 
<%-- --------------------------------------- C S S 시작 ----------------------------------------------------------------- --%>
<style>
	.background{
  	    width: 100%;
  	    background-color: #f2f2f2;
  	    min-height: 400px;
  	}
	.boundary{
  	    width: 1200px;
  	    margin: 0 auto;
  	    padding: 0 auto;
  	    background-color: #ffffff;
  	    min-height: 200px;
  	}
 	.side{
 		display:inline-block;
		width: 8%;
   		vertical-align: middle; 
   		min-height: 100px;
	 }
  	.main{
  		display:inline-block;
  	  	width: 81%;
  	    margin: 0 auto;
  	    background-color: #ffffff;
	 }
	.title > .title_1{
	  		margin: 0 auto;
	  		width: 91%;
	  }
	  
	  .title > .title_1 > .title_1_1{
	  		display: inline-block;
	  		width: 49%;
	  		height: 10px;
	  		vertical-align: middle;
	  }
	  
	  .title > .title_1 > .title_1_1_1{
	  		font-size: 14pt;
	  }
	  
	  .title > .title_1 > .title_1_1_2{
	  		font-size: 8pt;
	  		text-align:right;
	  		margin-bottom: 3px;
	  		position: relative; top: 13px;
	  }
	  .main_title{
	  		text-align: center;
	  		font-size: 
	  }
	  .main_body{
	  		border: solid 1px gray;
	  		margin: 0 auto;
	  		width: 80%;
	  }
	  .main1{
		margin: 0 auto;
  		width: 91%;
  		text-align: center;
  		font-size: 9pt;
	  }
	
	  .main1 > .main1_1{
		display: inline-block;
		vertical-align: middle;
		font-size: 9pt;
		padding-left: 10px; 
	  }
	  .line {
	  	border-bottom: solid 1px gray;
	  	margin: 0 auto;
	  	width: 80%;	  	
	  }	
	  .point_info{
	 	margin: 0 auto;
	  	width: 80%;
	  }
	  .order_info{
	  	margin: 0 auto;
	  	width: 80%;
	  }
	  .order_info > ul {
	  	width: 80%;	
	  	font-size: 8pt;
	  }
	  .order_info > ul > li {
	  	width: 51%;
	  	font-size: 8pt;
	  }
	  .mid_body{
	  	border: solid 1px gray;
	  	margin: 0 auto;
	  	width: 80%;
	  }
	  .mid_body_title{
	  	margin: 0 auto;
	  	width: 95%;
	  }
	  .mid_body_state {
	  	margin: 0 auto;
	  	width: 95%;
	  }
	  .mid_body_state > .state{
	  	display:inline-block;
	  	width: 79%;
	  }
	  .mid_body_state > .state > li {
	  	display:inline-block;
	  	width: 24%;
	  	border-left: dashed 0.5px gray;
	  	text-align: center;
	  	vertical-align: middle;
	  }
	  .mid_body_state > .order{
	  	display:inline-block;
	  	width: 15%;
	  	border-left: dashed 0.5px gray;
	  	text-align: right;
	  	font-size: 8pt;
	  	vertical-align: middle;
	  }
	  .bottom {
	  	margin: 0 auto;
	  	width: 80%;
	  }
	  .bottom_inner{
	  	display: inline-block;
	  	margin: 0 auto;
	  	width: 49%;
	  	border-bottom: solid 1px gray;
	  }
	  .bottom_inner > .inner_img {
	  	display: inline-block;
	  	width: 30%;
	  	vertical-align: middle;
	  }
	  .bottom_inner > .inner_text{
	  	display: inline-block;
	  	width: 68%;
	  	vertical-align: middle;
	  }
	  .bottom_inner > .inner_text > p{
	  	font-size: 8pt;
	  }	
	  .bottom_inner > .inner_img > img {
	  	display: inline-block;
	  	width: 50px;
	  	height: 50px;
	  	vertical-align: middle;
	  }
</style>
<%-- --------------------------------------- C S S 끝 ----------------------------------------------------------------- --%>
<!-- -----------------------------------------------------Mypage 찾기 부분 시작------------------------------------------------------ -->
<div class="background">
	<div style="height:150px; width: 100%; background-color: #f2f2f2;"></div>
	
	<div class="boundary">

		<div class="side">
		</div>

		<div class="main">
			<div class="title">
				<div class="title_1">
					<div class="title_1_1 title_1_1_1"></div>
					<div class="title_1_1 title_1_1_2"><span class="side_title"><a href="main.ej">홈</a>	>	마이쇼핑</span></div>
				</div>
				
				<div style="height:25px; width: 100%; background-color: #ffffff;"></div>
				
				<div class="main_title">
					<h2>MY PAGE</h2>
				</div>
				
				<div style="height:25px; width: 100%; background-color: #ffffff;"></div>
				
				<div class="main_body">
			
					<div style="height:15px; width: 100%; background-color: #ffffff;"></div>
					
					<div>
						<div class="main1">
							<div class="main1_1 main1_1_1">
								<p class="thumbnail"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/img_member_default.gif" alt="" onerror="this.src='//img.echosting.cafe24.com/skin/base/member/img_member_default.gif';" class="myshop_benefit_group_image_tag"></p>
							</div>
							<div class="main1_1 main1_1_2">
								<p>저희 쇼핑몰을 이용해 주셔서 감사합니다.
									<strong class="main1_2_1"><span><span class="xans-member-var-name">접속자</span></span></strong>님은
									<strong>[<span class="xans-member-var-group_name">일반회원</span><span class="myshop_benefit_ship_free_message"></span>]</strong>
									 회원이십니다.
								</p>
							</div>
						</div>
					</div>
					
					<div style="height:20px; width: 100%; background-color: #ffffff;"></div>
										
					<div class="line"></div>
					
					<div style="height:20px; width: 100%; background-color: #ffffff;"></div>
					
					
					<div class="order_info">
						<ul>
							<li>
								총 주문건수 <span style="float: right;"><span>0</span>&nbsp; 건</span>
							</li>
							
							<li>
								총 주문금액 <span style="float: right;"><span>0</span>&nbsp; 원</span>
							</li>
						</ul>
						<div style="height:20px; width: 100%; background-color: #ffffff;"></div>
					</div>
				</div>
				
				<div style="height:30px; width: 100%; background-color: #ffffff;"></div>
				
				<div class="mid_body">
					<div style="height:10px; width: 100%; background-color: #ffffff;"></div>
					<div class="mid_body_title">
						<span>나의 주문처리 현황</span>&nbsp;<span style="font-size: 7pt;">최근 3개월 기준</span>
					</div>
					<div style="height:10px; width: 100%; background-color: #ffffff;"></div>
					<div class="mid_body_state">
						
						<ul class="state">
							<li style="border-left: none;">입금전<br/><a href="order.jsp"><span><strong>0</strong></span></a></li>
							<li>배송준비중<br/><a href="order.jsp"><span><strong>0</strong></span></a></li>
							<li>배송중<br/><a href="order.jsp"><span><strong>0</strong></span></a></li>
							<li>배송완료<br/><a href="order.jsp"><span><strong>0</strong></span></a></li>
						</ul>
						
						<ul class="order">
							<li><span>· 취소</span>&nbsp;&nbsp;<a href="order.jsp"><span><strong>0</strong></span></a></li>
							<li><span>· 교환</span>&nbsp;&nbsp;<a href="order.jsp"><span><strong>0</strong></span></a></li>
							<li><span>· 반품</span>&nbsp;&nbsp;<a href="order.jsp"><span><strong>0</strong></span></a></li>
						</ul>
						<div style="height:10px; width: 100%; background-color: #ffffff;"></div>
						
					</div>
				</div>
			
				<div style="height:30px; width: 100%; background-color: #ffffff;"></div>

				<div class="bottom">
					<a href="order.jsp">
					<div class="bottom_inner" id="bottom_inner1">
						<div class="inner_img">
							<img alt="이미지" src="abc.jpg">
						</div>
						<div class="inner_text">
							<p><strong>ORDER 주문내역 조회</strong></p>
							<p>주문하신 상품의 주문내역을 확인하실 수 있습니다.</p>
						</div>
					</div>
					</a>
					<a href="<%= ctxPath %>/memberRegisterModify.ej">
					<div class="bottom_inner" id="bottom_inner2">
						<div class="inner_img">
							<img alt="이미지" src="abc.jpg">
						</div>
						<div class="inner_text">
							<p><strong>Profile 회원정보</strong></p>
							<p>회원이신 고객님의 개인정보를 관리하는 공간입니다.</p>
						</div>
					</div>
					</a>
					<a href="order.jsp">
					<div class="bottom_inner" id="bottom_inner3">
						<div class="inner_img">
							<img alt="이미지" src="abc.jpg">
						</div>
						<div class="inner_text">
							<p><strong>WISHLIST 관심 상품</strong></p>
							<p>관심상품으로 등록하신 상품의 목록을 보여드립니다.</p>
						</div>
					</div>
					</a>
					<a href="order.jsp">
					<div class="bottom_inner" id="bottom_inner4">
						<div class="inner_img">
							<img alt="이미지" src="abc.jpg">
						</div>
						<div class="inner_text">
							<p><strong>MILEAGE 적립금</strong></p>
							<p>적립금은 현재 준비중 입니다.</p>
						</div>
					</div>
					</a>
					<a href="order.jsp">
					<div class="bottom_inner" id="bottom_inner5">
						<div class="inner_img">
							<img alt="이미지" src="abc.jpg">
						</div>
						<div class="inner_text">
							<p><strong>ADDRESS 배송 주소록 관리</strong></p>
							<p>자주 사용하는 배송지를 관리하실 수 있습니다.</p>
						</div>
					</div>
					</a>
					<a href="order.jsp">
					<div class="bottom_inner" id="bottom_inner6">
						<div class="inner_img">
							<img alt="이미지" src="abc.jpg">
						</div>
						<div class="inner_text">
							<p><strong>BOARD 게시물 관리</strong></p>
							<p>고객님께서 작성하신 게시물을 관리하는 공간입니다.</p>
						</div>
					</div>
					</a>
								
				</div>
		
		
			</div>
		</div>

		<div class="side">
		</div>
		
		<div style="height:25px; width: 100%; background-color: #ffffff;"></div>
		
	
	</div>
	
	<div style="height:100px; width: 100%; background-color: #f2f2f2;"></div>

</div>




<!-- -----------------------------------------------------Mypage 찾기 부분 끝------------------------------------------------------ -->
<!-- -----------------------------------------------------FOOTER 부분------------------------------------------------------ -->
<jsp:include page="../footer.jsp"></jsp:include>
<!-- -----------------------------------------------------FOOTER 부분 끝------------------------------------------------------ -->
    