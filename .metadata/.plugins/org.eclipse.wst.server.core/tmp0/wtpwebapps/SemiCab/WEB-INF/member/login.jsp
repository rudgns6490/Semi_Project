<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String ctxPath = request.getContextPath();
%>
    
<jsp:include page="../header.jsp"></jsp:include>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
  <style>
	#wrap {
	    width: 100%;
	    margin: 0 auto;
	    padding: 150px 0 50px;
	    background: #f4f4f4;
	}
	#wrap {
	
	    position: relative;
	    
	    margin: auto 0;
	}
	
	 #fixoContainer {
	    width: 1400px;
	    margin: 0 auto;
	    padding: 40px;
	    box-sizing: border-box;
	    background: #fff;
	}
	
	#fixoSnb {
	    display: none;
	}	
	
	#fixoContent {
	    width: 100%;
	}
	
	
	#basicLogin {
	    width: 500px;
	    margin: 50px auto;
	}
	/* //LOHIN 회원가입 안보이게 하기//// */
	legend {
	    visibility: hidden;
	    position: absolute;
	    left: -9999px;
	    top: -9999px;
	    width: 0;
	    height: 0;
	    line-height: 0;
	}
	
	#basicLogin .area_login {
	    margin: 0 0 20px;
	}
	
	.area_login > .login_Font {
		color: #111;
	    font-size: 24px;
	    line-height: 24px;
	    font-weight: 400;
	    letter-spacing: 1px;
	    margin: 0 0 20px;
	}
	
	fieldset{
		border: none;
    	vertical-align: top;
    	margin-inline-start: 0;
	    margin-inline-end: 0;
	    padding-block-start: 0;
	    padding-inline-start: 0;
	    padding-inline-end: 0;
	    padding-block-end: 0;
	}
	
	/* ID PW  style 설정 */
	#basicLogin .area_login .inner label:after {
	    content: "";
	    display: block;
	    clear: both;
	    border-bottom: 1px solid #999;
	}
	
	#basicLogin .area_login .inner .tit {
	    float: left;
	    width: 80px;
	    font-size: 11px;
	    font-weight: 700;
	    color: #111;
	    line-height: 50px;
	    text-indent: 10px;
	}
	
	#basicLogin .area_login .inner input {
	    float: left;
	    width: 400px;
	    height: 20px;
	    border: 0;
	    margin: 15px 0;
	    padding: 0;
	    font-size: 12px;
	    font-weight: 700;
	    color: #111;
	    line-height: 20px;
	}
	
	/*---------------- 보안접속 -----------------*/
	#basicLogin .area_login .security {
	    margin: 0 0 40px;
	}
	/* 로그인 접속 창 */
	 #basicLogin .area_login .btn_login {
	    display: block;
	    border-radius: 4px;
	    background: #333;
	    text-align: center;
	    height: 50px;
	    color: #fff;
	    letter-spacing: 8px;
	    line-height: 50px;
	    text-decoration: none;
	}
	.btn_login{
		width: 500px; 
		cursor: pointer; 
	}
 	
	#basicLogin .section h4 {
	    /* float: left; */
	    font-size: 11px;
	    color: #999;
	    font-weight: 400;
	    line-height: 26px;
	    margin: 0px;
	}
	#basicLogin .section .btns {
	    float: right;
	}
	
	#basicLogin .section > div {
	    border-top: 1px solid #f0f0f0;
	    padding: 10px 0;
	}
	#basicLogin .section .btns {
	    float: right;
	}
	
	.sectionNot{
		float: left;
		width: 180px; 
	}
	
	.join {
		height : 26px;
		float: right;
	}
	
	.btnS > a {
		width : 63px;
		height : 24px;
		font-size : 13px;
	    border: 1px solid #333;
	    line-height: 24px;
	    font-weight: 400;
	    text-decoration: none;
	    padding: 2px 10px;
	    border-radius: 4px;
	    margin: 0 0 0 5px;
	}
	
	.bottoms { 
		background: #fff;
		border: 1px solid #ccc;
	}
  
  </style>

	<script type="text/javascript">
		$(function () {
			
			$("#btnSubmit").click(function () {
				goLogin(); // 로그인 시도한다.
			});
			
		});

		function goLogin() {
			
			var loginUserid = $("#member_id").val().trim();
			var loginPwd = $("#member_passwd").val().trim();
			
			if (loginUserid == "") {
				alert("아이디를 입력하세요")
				$("#member_id").val("");
				$("#member_id").focus();
				return;
			}
			if (loginPwd == "") {
				alert("암호를 입력하세요")
				$("#member_passwd").val("");
				$("#member_passwd").focus();
				return;
			}
			
			var frm = document.loginFrm;
			frm.method = "POST";
			frm.action = "<%= request.getContextPath()%>/loginAction.ej";
			frm.submit();
			
		}
	</script>
 
	<div id="wrap">
		<div id="fixoContainer" class="clear">
			<div id="fixoContent">
				<div id="basicLogin">
				
					<form id="member_form_" name="loginFrm" >
				
						<div class="area_login">
							<h2 class="login_Font">LOGIN</h2>
							<fieldset>
								<legend>회원로그인</legend>
								<div class="inner">
									<label class="id">
									<span class="tit">ID</span>
									<input id="member_id" name="member_id" fw-filter="isFill" fw-label="아이디" fw-msg="" class="inputTypeText" placeholder="" value="" type="text">
									</label>
									
									<label class="password">
									<span class="tit">PASSWORD</span>
									<input id="member_passwd" name="member_passwd" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드" fw-msg="" autocomplete="off" value="" type="password">
									</label>
									
								</div>
									<p class="security">
										<input id="member_check_save_id0" name="check_save_id" fw-filter="" fw-label="아이디저장" fw-msg="" value="T" type="checkbox"><label for="member_check_save_id0">아이디 저장</label>						
										<img src=""/>&nbsp;보안접속
									</p>
									
									<button type="button" class="btn_login" id="btnSubmit">LOGIN</button>
							</fieldset>
						</div> 
				
				
						<div class="displaynone" id="noMemberWrap">
									<!-- <div class="txt">
										본 쇼핑몰에서는 비회원님도 상품구매가 가능합니다.<br>
										하지만 비회원 구매 시 적립 및 할인 등의 회원 혜택에서 제외됩니다.<br>
										비회원으로 상품구매시에는 주문번호로 주문조회가 가능하오니 <b>구매완료 후 주문번호</b>를 꼭 메모해 두세요
									</div>
									<a href="" onclick="" class="btn_login">비회원구매</a>
								</div> -->
						</div>
					</form> <!-- /member_login -->
		
					<div class="section">
						<div style="height: 26px;">
							<div class="sectionNot">
								<h4>아직 회원이 아니신가요?</h4>
							</div>
							<div class="btns btnS join">
								<a href="/member/join.html" id="join">회원가입하기</a>
							</div>
						</div>
						<div style="height: 26px;">
							<div class="sectionNot">
								<h4>아이디와 비밀번호를 잊으셨나요?</h4>
							</div>
							<div class="btns btnS">
								<a class="bottoms" href="/member/id/find_id.html">아이디찾기</a>
								<a class="bottoms" href="/member/passwd/find_passwd_info.html">비밀번호찾기</a>
							</div>
						</div>
					</div>
				</div> <!-- /login_basic -->
			</div>
		</div>
	</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>
