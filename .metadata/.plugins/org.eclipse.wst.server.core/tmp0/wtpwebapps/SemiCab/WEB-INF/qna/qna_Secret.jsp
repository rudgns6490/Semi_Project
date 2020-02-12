<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../header.jsp"></jsp:include>

<style>
#wrap {
	width: 100%;
	margin: 0 auto;
	padding: 150px 0 50px;
	background: #f4f4f4;
	position: relative;
}

#fixoContainer {
	width: 1400px;
	margin: 0 auto;
	padding: 40px;
	box-sizing: border-box;
	background: #fff;
}

#fixoWrap .xans-board-title .title {
	margin: 0 0 20px;
	padding: 0 0 15px;
	border-bottom: 1px solid #e8e8e8;
	min-height: auto;
}

#fixoWrap .xans-board-title .title h2 {
	display: inline-block;
	padding: 0;
	color: #323232;
	font-size: 20px;
	*display: inline;
	*zoom: 1;
	background: none;
	line-height: 30px;
	font-weight: 700;
	vertical-align: top;
	line-height: 34px;
}

#fixoWrap .xans-board-title .title p {
	display: inline-block;
	margin: 0 0 0 6px;
	padding: 0 0 0 10px;
	background:
		url(http://img.echosting.cafe24.com/skin/base_ko_KR/common/ico_title.gif)
		no-repeat 0 12px;
	*display: inline;
	*zoom: 1;
	font-size: 11px;
	color: #949494;
	line-height: 34px;
	font-weight: normal;
	height: 30px;
	vertical-align: top;
}

.xans-board-secure {
	border: 1px solid #d7d5d5;
	padding: 30px 0;
	color: #2e2e2e;
	text-align: center;
}

.xans-board-secure .secret {
	width: 330px;
	margin: 0 auto;
}

h3 {
	margin: 0;
}

img, fieldset {
	border: none;
	vertical-align: top;
}

.xans-board-secure .secret .info {
	margin: 50px 0;
	line-height: 150%;
	color: #757575;
}

.xans-board-secure .secret .password label {
	display: inline-block;
	margin: 0 0 5px;
	padding: 0 0 0 10px;
	width: 80px;
	font-weight: normal;
	background:
		url(https://img.echosting.cafe24.com/skin/base/common/ico_arrow.png)
		no-repeat 15px 4px;
}

.password {
	padding-bottom: 20px;
}

.password input {
	width: 175px;
	margin: 0 13px 0 0;
}

/* 공통 */
h1, h2, h3, h4, input, button, select {
	font-family: 'RobotoWeb', 'NanumGothicWeb', Dotum, 돋움, Gulim, 굴림,
		sans-serif;
	outline: medium none;
	font-variant-ligatures: none;
}

/* html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
    margin: 0;
    padding: 0;
} */
div {
	display: block;
}

body {
	font-family: 'RobotoWeb', 'NanumGothicWeb', Dotum, 돋움, Gulim, 굴림,
		sans-serif;
	color: #666;
	font-size: 12px;
	-webkit-text-size-adjust: none;
	-webkit-font-smoothing: subpixel-antialiased;
	font-variant-ligatures: none;
}

body, code {
	font: 0.75em Verdana, Dotum, AppleGothic, sans-serif;
	color: #353535;
	background: #fff;
}
</style>

<%-- body 시작====================================================================----------------------------------------------------------------------------------- --%>

<div id="fixoWrap">
	<div id="fixoHeader" style="left: 0px;">
		<div class="max-width"></div>
	</div>
	<!-- /fixoHeader -->

	<div id="wrap">





		<div id="fixoContainer" class="clear">
			<!-- /fixoSnb -->
			<div id="fixoContent">

				<div
					class="xans-element- xans-board xans-board-securepackage-4 xans-board-securepackage xans-board-4 ">
					<div
						class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
						<div class="title">
							<h2>
								<font color="333333">Q&amp;A</font>
							</h2>
							<p>상품 Q&amp;A입니다.</p>
						</div>
					</div>
					<form id="boardSecureForm" name=""
						action="/exec/front/Board/secure/6" method="post" target="_self"
						enctype="multipart/form-data">
						<input id="no" name="no" value="5019" type="hidden"> <input
							id="board_no" name="board_no" value="6" type="hidden"> <input
							id="return_url" name="return_url"
							value="/article/qa/6/5019/?no=5019&amp;board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page="
							type="hidden">
						<div
							class="xans-element- xans-board xans-board-secure-4 xans-board-secure xans-board-4 ">
							<div class="secret">
								<h3>
									<img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/board/h3_secret.gif"
										alt="비밀글보기">
								</h3>
								<fieldset>
									<legend>비밀글보기</legend>
									<p class="info">
										이 글은 비밀글입니다. <strong class="txtEm">비밀번호를 입력하여 주세요.</strong><br>관리자는
										확인버튼만 누르시면 됩니다.
									</p>
									<p class="password">
										<label for="secure_password">비밀번호</label> <input
											id="secure_password" name="secure_password" fw-filter=""
											fw-label="비밀번호" fw-msg="" value="" type="password">
									</p>
									<div class="ec-base-button gBlank30">
										<a href="/board/qa/6/"><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_secret_list.gif"
											alt="목록"></a> <a href="#none"
											onclick="BOARD.form_submit('boardSecureForm');"><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_secret_submit.gif"
											alt="확인"></a>
									</div>
								</fieldset>
							</div>
						</div>
					</form>
				</div>

			</div>
		</div>

	</div>





	<script type="text/javascript" src="/postfixo/js/instafeed.min.js"></script>
	<script type="text/javascript" src="/postfixo/js/set_insta.js"></script>

	<!-- /fixoFooter -->
	<div id="view_control">
		<div id="btnUp">
			<i class="xi-angle-up"></i>
		</div>
		<div id="btnDown">
			<i class="xi-angle-down"></i>
		</div>
	</div>
</div>





<div id="Footer">
	<div class="footer-inner">
		<ul class="section">
			<li>
				<h4>Cs Center</h4>
				<p>0000-0000</p>
				<p>OPEN AM:10:00 ~ PM6:00</p>
				<p>LUNCH PM12:00 ~ PM01:00</p>
				<p>SAT,SUN,HOLIDAY OFF</p>
			</li>
			<li>
				<h4>Bank Info</h4>
				<p>우리은행: 0000-000-000000</p>
				<p>예금주: 이모저모</p>
			</li>
			<li>
				<h4>Shop Menu</h4>
				<ul>
					<li><a href="#">NOTICE</a></li>
					<li><a href="#">MY PAGE</a></li>
					<li><a href="#">ABOUT</a></li>
					<li><a href="#">STOCKIST</a></li>

				</ul>
			</li>
			<li>
				<h4>Follow</h4> <a href="https://www.instagram.com/newerakorea/"
				target="_blank" class="tagid">INSTA</a>
			</li>
		</ul>

		<div class="section2">
			<h2 class="bottom-Logo">
				<a href="#"> <img src="/SemiCab/img/logo_bottom.PNG"
					alt="하단로고" class="logo_png">
				</a>
			</h2>
			<p class="address">
				<span>Company: 조이먼트</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>CEO:
					신선호</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>Tel: 1899-9170</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span>Fax: 070-4062-9258</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>Business
					Registration No: [633-24-00242]</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>E-commerce
					Permit: 2016-SeoulGangnam-04092</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span><a
					href="#none"
					onclick="window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=6332400242', 'bizCommPop', 'width=750, height=950;');return false;">[사업자정보확인]</a></span><br>
				<span>Address: 06017 606, Dosandaero 510, Gangnam-gu, Seoul,
					Republic of Korea </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>Personal
					Information Manager: <a href="mailto:joyment2016@gmail.com">SHIN
						SUN HO(joyment2016@gmail.com)</a>
				</span>
			</p>

		</div>
		<div class="section3">
			<div>
				<ul class="bottomMenu">
					<li><a href="#;">HOME</a></li>
					<li><a href="#;">AGREEMENT</a></li>
					<li><a href="#;"> <strong>PRIVACY POLICY</strong>
					</a></li>
					<li><a href="#;">GUIDE</a></li>
				</ul>
				<div class="copy_right">
					<p class="copy">
						Copyright © <strong>JOYMENT</strong>. All rights reserved. hosting
						by cafe24 심플렉스인터넷(주)
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Footer -->


</div>





</body>

<%-- body 종료====================================================================----------------------------------------------------------------------------------- --%>

<jsp:include page="../footer.jsp"></jsp:include>