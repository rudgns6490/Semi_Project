<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>YSL 공식 스토어 | 생 로라 | SAINT LAURA</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="<%=ctxPath %>/js_ysl/main.js"></script>

</head>
<body>

<div id="container">
	
<header>
	<div>
		<%-- Saint Laura LOGO --%>
		<div id="logo"><img alt="YSL" src="images/main-logo-black.png"></div>
		
		<%-- Leftside Navigation --%>
		<div id="header-nav">
			<div id="left-nav">
				<ul style="list-style-type:none;">
					<li class="nav-list">신상품</li>
					<li class="nav-list">여성 쇼핑</li>
					<li class="submenu">&emsp;&emsp;크로스바디 백</li>
					<li class="submenu">&emsp;&emsp;숄더 백</li>
					<li class="submenu">&emsp;&emsp;클러치</li>
					<li class="nav-list">남성 쇼핑</li>
					<li class="submenu">&emsp;&emsp;백팩</li>
					<li class="submenu">&emsp;&emsp;캐쥬얼</li>
					<li class="submenu">&emsp;&emsp;비즈니스</li>
					<li class="nav-list">모두보기</li>
					<li class="nav-list">컬렉션</li>
					<li class="nav-list">LA MAISON</li>
				</ul>
			</div>
			
			<%-- Rightside Navigation --%>
			<div id="right-nav">
				<img alt="search" src="images/search-icon.png" id="search-icon" onclick="openSearchNav()">
				<ul style="list-style-type:none;">
					<li class="nav-list">쇼핑백</li>
					<li id="login-panel" class="nav-list" onclick="openLoginNav()">로그인 / 등록</li>
					<li class="nav-list">고객서비스</li>
				</ul>
			</div>

		</div>
	
		<%-- Search area --%>
		<div id="account-panel">
			<div id="mySearchNav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" style="display:inline-block !important; float:right; width:30px;" onclick="closeSearchNav()">&times;</a>
				<div class="search-container">
					<form action="/action_page.php">
						<input type="text" id="search-input" placeholder="검색" name="search">
					</form>
				</div>
				<hr style="border-bottom:grey">
			</div>
		</div>
	
		<%-- Login / Register area - panel --%>
		<div id="account-panel">
			<div id="myLoginNav" class="sidenav">
			  <h3 class="sidenav-h" style="display:inline !important float:left;">나의 계정</h3>
			  <a href="javascript:void(0)" class="closebtn" style="display:inline !important; float:right;" onclick="closeLoginNav()">&times;</a>
			  <hr style="border-bottom:grey">
			  
			  <%-- Login form --%>
			  <form name="loginfrm">
			  		<h4 id="loginfrm-h">로그인</h4>
			  		<ul>
			  			<li>
			  				<label>
			  					<span class="login-label" style="text-align:left">이메일 *</span>
							</label><br/>
			  				<input type="email" class="login-input" name="email" style="display:block" autocomplete="off" />
			  			</li>
			  			<li style="clear: both">&nbsp;&nbsp;</li>
			  			<li>
			  				<label>
				  				<span class="login-label" style="text-align:left">비밀번호 *</span>
			  				</label><br/>
			  				<input type="password" class="login-input" id="pwd" name="pwd" style="display:block" autocomplete="off" />
			  			</li>
			  			<li>
			  				<span class="btn-link login-label" onclick="openPwdFindNav()" style="color: black; cursor: pointer;">비밀번호를 잊으셨습니까?</span>
			  			</li>
			  			<li>
			  				<button class="login-input btn-default login-btn" style="color:white" onclick="goLogin()">로그인</button>
			  			</li>
			  		</ul>
			  </form>
			  
			  <div>
				<h4 class="sidenav-h" style="display:block">등록</h4>
				<p style="font-size:11px; padding-left:20px;">나의 계정의 혜택을 누리실 수 있도록 등록하십시오.</p>
				<ul style="font-size:11px">
				  		<li>마음에 드는 아이템을 담아두는 위시리스트</li>
				  		<li>더욱 빠른 주문 완료</li>
				  		<li>주문 정보 및 진행상황 확인</li>
				</ul>
				<ul style="list-style-type: none; padding:20px;">
					<li>
						<button class="login-input btn-default login-btn" id="register-btn" style="color:white; margin-top:0;" onclick="openRegisterNav()">등록</button>
				  	</li>
			  	</ul>
			  </div>
			  
			</div>
			
		</div>	
			
		<%-- Register area - panel --%>
		<div id="myRegisterNav" class="sidenav">
			<h3 class="sidenav-h" style="display:inline !important float:left;">새 계정 등록</h3>
			<a href="javascript:void(0)" class="closebtn" style="display:inline !important; float:right;" onclick="closeRegisterNav()">&times;</a>
			<hr style="border-bottom:grey">
	 	<%-- 	<p class="registernav-p register-label" onclick="closeRegisterNav()">&lt; 로그인 메뉴로 돌아가기</p>--%>
	 		
	 		<%-- Register form --%>
	 		<div class="form-register">
				<form name="registerfrm">
				  	<table class="table-register">
			  			<tbody>
			  			
			  				<%-- email --%>
			  				<tr>
			  					<td>
			  						<span class="register-label" style="text-align:left">이메일 *</span>
			  					</td>
			  				</tr>
			  				<tr>
			  					<td>
			  						<input type="email" class="register-input" id="emailReg" style="display:block" autocomplete="off" />
			  					</td>
			  				</tr>
			  				
			  				<%-- password --%>
			  				<tr>
			  					<td>
			  						<span class="register-label" style="text-align:left">비밀번호 *</span>
			  					</td>
			  				</tr>
			  				<tr>
			  					<td>
			  						<input type="password" class="register-input" id="pwdReg" style="display:block" autocomplete="off" />
			  					</td>
			  				</tr>
			  				
			  				<%-- password check --%>
			  				<tr>
			  					<td>
			  						<span class="register-label" style="text-align:left">비밀번호확인 *</span>
			  					</td>
			  				</tr>
			  				<tr>
			  					<td>
			  						<input type="password" class="register-input" id="pwdCheck" style="display:block" autocomplete="off" />
			  					</td>
			  				</tr>
			  				
			  				<%-- name --%>
			  				<tr>
			  					<td>
			  						<span class="register-label" style="text-align:left">성명 *</span>
			  					</td>
			  				</tr>
			  				<tr>
			  					<td>
			  						<input type="text" class="register-input" id="name" style="display:block" autocomplete="off" />
			  					</td>
			  				</tr>
			  				
			  				<%-- zipcode --%>
			  				<tr>
								<td class="register-label" style="width: 20%; font-weight: bold; float:left;">우편번호 *</td>
								<td style="float:right" class="error error_post register-label">우편번호 형식이 아닙니다.</td>
							</tr>
							<tr>
								<td style="width: 80%; text-align: left;">
								   <input type="text" class="input-zipcode" id="post1" name="post1" size="6" maxlength="3" autocomplete="off" />
								   &nbsp;-&nbsp;
								   <input type="text" class="input-zipcode" id="post2" name="post2" size="6" maxlength="3" autocomplete="off" />&nbsp;&nbsp;
								   <!-- 우편번호 찾기 -->
								   <img id="zipcodeSearch" src="images/b_zipcode.gif" style="vertical-align: middle; cursor:pointer;" />
								   
								</td>
							</tr>
			  				
			  				<%-- address --%>
			  				<tr>
								<td class="register-label" style="width: 20%; float: left; display: inline;">주소 *</td>
								<td class="error register-label" style="width: 100px; float: right; display: inline;">주소를 입력하세요</td>
							</tr>
							<tr>
								<td style="width: 80%; text-align: left;">
									<input type="text" id="addr1" class="address register-input" name="addr1" size="60" maxlength="100" autocomplete="off" /><br style="line-height: 200%"/>
									<input type="text" id="addr2" class="address register-input" name="addr2" size="60" maxlength="100" autocomplete="off" />
								</td>
							</tr>
			  				
			  				<%-- phone --%>
			  				<tr>
								<td class="register-label" style="margin:5px 0; padding:5px 0;">연락처</td>
							</tr>
							<tr>
								<td style="width: 80%; text-align: left; padding-bottom: 5px;">
								    <select name="hp1" id="hp1" style="width: 75px; padding: 3px;">
										<option value="010" selected>010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select>&nbsp;-&nbsp;
								    <input type="text" name="hp2" class="input-hp" id="hp2" size="6" maxlength="4" autocomplete="off" />&nbsp;-&nbsp;
								    <input type="text" name="hp3" class="input-hp" id="hp3" size="6" maxlength="4" autocomplete="off" />
								</td>
							</tr>
							
							<%-- gender --%>
							<tr>
								<td class="register-label" style="margin:10px 0; padding:6px 0;">성별</td>
							</tr>
							<tr>
								<td style="width: 80%; text-align: left;">
								   <input type="radio" id="female" name="gender" value="1" />
								   <label class="register-label" for="female" style="margin-left: 2%; vertical-align: top;">여성</label>
								   
								   <input type="radio" id="male" name="gender" value="2" style="margin-left: 10%;" />
								   <label class="register-label" for="male" style="margin-left: 2%; vertical-align: top;">남성</label>
								</td>
							</tr>
							
							<%-- birthyear, birthmonth, birthday --%>
							<tr>
								<td class="register-label" style="width: 20%; font-weight: bold; padding:5px 0;">생년월일</td>
							</tr>
							<tr>
								<td style="width: 80%; text-align: left;">
								   <input type="number" id="birthyyyy" name="birthyyyy" min="1950" max="2050" step="1" value="1995" style="width: 80px;"   />
								   
								   <select id="birthmm" name="birthmm" style="margin-left: 2%; width: 60px; padding: 3px 0;">
									</select> 
								   
								   <select id="birthdd" name="birthdd" style="margin-left: 2%; width: 60px; padding: 3px 0;">
									</select> 
								</td>
							</tr>
			  				
			  				<tr>
			  					<td>
			  						<button class="register-input btn-default" style="margin-top:10px; padding:0; color:white;" onclick="goRegister()">등록</button>
			  					</td>
			  				</tr>
			  			</tbody>
			  		</table>
			  	</form>
		  	</div>
		</div>
		
		<%-- Pwd find area - panel --%>
		<div id="myPwdFindNav" class="sidenav">
			<h3 class="sidenav-h" style="display:inline !important float:left;">나의 계정</h3>
			<a href="javascript:void(0)" class="closebtn" style="display:inline !important; float:right;" onclick="closePwdFindNav()">&times;</a>
			<hr style="border-bottom:grey">
	 	 	<h4 class="registernav-h register-label">비밀번호를 잊으셨습니까?</h4>
	 	 	<p class="registernav-p register-label">
	 	 		등록 시 제공하신 이메일 주소를 입력하시면 새 비밀번호를 만들기 위한 링크를 보내드립니다.
	 	 	</p>
	 		
	 		<%-- Pwd find form --%>
	 		<div class="form-pwd-find">
				<form name="pwdFindFrm">
			  			
	  				<%-- email --%>
					<span class="pwdFind-label" style="text-align:left">이메일 *</span>
					<input type="email" class="pwdFind-input" id="emailPwdFind" style="display:block"   />
					<button class="pwdFind-input btn-default" style="margin-top:30px; color:white;" onclick="goPwdFind()">등록</button>
			  	</form>
		  	</div>
		</div>
		
	</div>
</header>

<%--      header  끝            --%>
