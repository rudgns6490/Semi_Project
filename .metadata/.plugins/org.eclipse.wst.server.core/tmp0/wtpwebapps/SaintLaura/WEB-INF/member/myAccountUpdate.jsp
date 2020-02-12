<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>    
<jsp:include page="../header.jsp" />

<link rel="stylesheet" href="<%= request.getContextPath()%>/css/myAccountUpdate.css">
<%--<script src="<%= ctxPath %>/js_ysl/myAccountUpdate.js"></script> --%>

<script>

	$(document).ready(function(){

	//	$("div.div_error").css('display', 'none');
		$("span.error").css('display', 'none');
		
		/////////////////////// 회원가입폼 유효성검사 시작 //////////////////////////
		
		$(".requiredInfo").each(function(){
			$(this).blur(function(){
				var data = $(this).val().trim();
				if(data == "") {
					// 입력하지 않거나 공백만 입력했을 경우
					$(this).closest(".error").css('display','');
					$(".requiredInfo").attr("disabled",true).addClass("bgcol"); 
					$(this).attr("disabled",false).removeClass("bgcol");
					return false;
				}
				else {
					// 공백이 아닌 글자를 입력했을 경우
					$(this).closest(".error").css('display','none');
					$(".requiredInfo").attr("disabled",false).removeClass("bgcol"); 
				}
			});
		});
		
		$("#info-password").blur(function(){
			var passwd = $(this).val();
			
			var regExp_PW = new RegExp(/^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).*$/g); 
			// 숫자/문자/특수문자 를 포함한 형태의 8~15자리 이내의 암호 정규식 객체 생성
			
			var bool = regExp_PW.test(passwd);
			
			if(!bool) {
				$(".error_passwd").text("영문자,숫자,특수기호가 혼합된 8~15 글자로만 입력가능합니다.");
				$(".error_passwd").css('display','');
				$(".requiredInfo").attr("disabled",true).addClass("bgcol"); 
				$(this).attr("disabled",false).removeClass("bgcol");
				$(this).focus();
			}
			else {
				$(".error_passwd").text("입력하신 비밀번호는 사용 가능합니다.");
				$(".error_passwd").css('display', '');
				$(".requiredInfo").attr("disabled",false).removeClass("bgcol"); 
				$("#info-passwordCheck").focus();
			}
		});
		
		$("#info-passwordCheck").blur(function(){
			var passwd = $("#info-password").val();
			var passwdCheck = $(this).val();
			
			if(passwd != passwdCheck) {
				$(".error_passwdCheck").text("입력하신 비밀번호와 일치하지 않습니다.");
				$(".error_passwdCheck").css('display','');
				$(".requiredInfo").attr("disabled",true).addClass("bgcol");
				$(this).attr("disabled",false).removeClass("bgcol");
				$("#info-password").attr("disabled",false).removeClass("bgcol");
				$(this).focus();
			}
			else {
				$(".error_passwdCheck").text("입력하신 비밀번호와 일치합니다.");
				$(".error_passwdCheck").css('display','');
				$(".requiredInfo").attr("disabled",false).removeClass("bgcol");
			}
			
		});
		
		$("input#post").click(function(){
			
			new daum.Postcode({
	            oncomplete: function(data) {
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                if(data.userSelectedType === 'R'){
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    $("#info-addr2").val(extraAddr);
	                
	                } else {
	                	$("#info-addr2").val('');
	                }
	
	                $("#info-post").val(data.zonecode);
	                $("#info-addr1").val(addr);
	                $("#info-addr2").focus();
	            }
	        }).open();
			
		});
		
		$("img#zipcodeSearch").click(function(){
			
			new daum.Postcode({
	            oncomplete: function(data) {
	                var addr = '';
	                var extraAddr = '';
	
	                if (data.userSelectedType === 'R') {
	                    addr = data.roadAddress;
	                } else {
	                    addr = data.jibunAddress;
	                }
	
	                if(data.userSelectedType === 'R'){
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    $("#info-addr2").val(extraAddr);
	                
	                } else {
	                	$("#info-addr2").val('');
	                }
	
	                $("#info-post").val(data.zonecode);
	                $("#info-addr1").val(addr);
	                $("#info-addr2").focus();
	            }
	        }).open();
		});
		
		$(".address").blur(function(){
			var address = $(this).val().trim();
			if(address == "") {
				$(".error-addr").css('display','');
				$(".requiredInfo").attr("disabled", true).addClass("bgcol");
				$(this).attr("disabled", false).removeClass("bgcol");
			}
			else {
				$(".error-addr").css('display','');
				$(".requiredInfo").attr("disabled", false).removeClass("bgcol");
			}
		});
		
		$("#updateBtn").click(function(){
			
			var infoPwd = $("#info-password").val().trim();
			var infoPost = $("#info-post").val().trim();
			var infoAddr1 = $("#info-addr1").val().trim();
			var infoAddr2 = $("#info-addr2").val().trim();
			
			if(infoPwd == "") {
				alert("비밀번호를 입력하세요");
				$("#password").val("");
				$("#password").focus();
				return;
			}
			
			if(infoPost == "") {
				alert("우편번호를 입력하세요");
				$("#info-post").val("");
				$("#info-post").focus();
				return;
			}
			
			if(infoAddr1 == "") {
				alert("주소를 입력하세요");
				$("#info-addr1").val("");
				$("#info-addr1").focus();
				return;
			}
			
			if(infoAddr2 == "") {
				alert("주소를 입력하세요");
				$("#info-addr2").val("");
				$("#info-addr2").focus();
				return;
			}
			
			var frm = document.myInfoUpdateFrm;
			frm.method = "POST";
			frm.action = "myAccountUpdateEnd.ysl";
			frm.submit();
			
		});
		
	});

</script>

<body>
	<div class="container" style="width: 60%; margin: 0 auto; font-family: 'Lato', sans-serif;">
		<img src="images/myAccount_Banner.jpg" class="myAccountBanner"/>
		<div style="border: solid rgb(239, 239, 239) 1px; height: 79px;" >
		<ul class="logged">
			<li class="profileMenu basicMenu" style="font-weight: bold;">나의 정보</li>
			<li class="orderMenu basicMenu" onclick="javascript:location.href='<%=ctxPath%>/orderNReturnList.ysl'">주문 &amp; 반품</li>
			<li class="wishlistMenu basicMenu" onclick="javascript:location.href='<%=ctxPath%>/myWishList.ysl'">위시리스트</li>
			<li class="logoutMenu"><span style="cursor:pointer">로그아웃</span></li>
		</ul>
		</div>
		<div class="welcomeMsg" style="border: solid rgb(239, 239, 239) 1px; border-top: hidden;">
				<div class="myproductUpdate">나의 정보</div>
				<div class="explanation">고객님의 개인정보를 저장, 추가, 수정하십시오.</div>
		</div>
		<div class="profileContainer">
			<div class="firstWrapper">
				<div class="myinfoUpdate info col-xs-6 " style="border: solid rgb(239, 239, 239) 1px; border-top: hidden; border-right: hidden; height: 700px;">						
					<form name="myInfoUpdateFrm">
						
						<table id="mytbl123">
							<tbody>
								<%-- EMAIL --%>
								<tr>
									<td>
										<%-- 회원을 구분하기위한 idx --%>
										<input type="hidden" name="idx" value="${sessionScope.loginuser.idx}" readonly />
										<div class="listinfo info" style="font-weight: bold">이메일</div>
									</td>
								</tr>
								<tr>
									<td><span id="info-email" class="email">${ sessionScope.loginuser.email }</span></td>
								</tr>
								
								<%-- PASSWORD --%>
								<tr style="height:34px !important;">
									<td style="height:34px !important;">
									<div>
										<div class="listinfo info" style="font-weight: bold; width:13%; display: inline-block !important;">
										비밀번호
										</div>
										<div class="div_error"> 
											<span class="error error_passwd">영문자,숫자,특수기호가 혼합된 8~15 글자로만 입력가능합니다.</span>
										</div>
									</div>
									</td>
								</tr>
								<tr>
									<td><input type="password" id="info-password" class="password updateInput requiredInfo" size="58" name="pwd" required style="border: solid 1px black; clear:both;"/></td>
								</tr>
								
								<%-- PASSWORD CHECK --%>
								<tr>
									<td>
										<span class="listinfo info" style="font-weight: bold; display: inline; width: 18%; float:left;">비밀번호 확인</span>
										<div class="div_error">
											<span class="error error_passwdCheck" style="float:right;">비밀번호와 일치하지 않습니다.</span>
										</div>
									</td>
								</tr>
								<tr>
									<td><input type="password" id="info-passwordCheck" class="passwordCheck updateInput requiredInfo" size="58"  required style="border: solid 1px black;"/></td>
								</tr>
								
								<%-- NAME --%>
								<tr>
									<td><span class="listinfo info" style="font-weight: bold">이름</span></td>
								</tr>
								<tr>
									<td><span id="info-name" class="name" style="font-size: 9pt;">${ sessionScope.loginuser.name }</span></td>
								</tr>
								
								<%-- ZIPCODE --%>
								<tr>
									<td>
										<span class="listinfo info" style="font-weight: bold; display: inline;">우편번호</span>
										<div class="div_error"> 
											<span class="error error_post">우편번호 형식이 아닙니다.</span>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<input type="text" class="post updateInput requiredInfo" id="info-post" name="post" size="6" maxlength="5" autocomplete="off" value="${ sessionScope.loginuser.post }" style="width:15%" />
										<img id="zipcodeSearch" src="images/header-b_zipcode.gif" style="vertical-align: middle; cursor:pointer;" />
									</td>
								</tr>
								
								<%-- ADDRESS --%>
								<tr>
									<td>
										<span class="listinfo info" style="font-weight: bold; display: inline;">주소</span>
										<div class="div_error">
											<span class="error error_addr">주소를 입력하세요</span>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<input type="text" id="info-addr1" class="address updateInput requiredInfo" name="addr1" size="58" maxlength="100" value="${ sessionScope.loginuser.addr1 }" /><br style="line-height: 200% "/>
										<input type="text" id="info-addr2" class="address updateInput requiredInfo" name="addr2" size="58" maxlength="100" style="margin-top: 5px;" value="${ sessionScope.loginuser.addr2 }" />
									</td>
								</tr>
								
								<%-- PHONE --%>
								<tr>
									<td><span class="listinfo info" style="font-weight: bold">연락처</span></td>
								</tr>
								<tr style="margin-bottom: 20px">
									<td>
										<select name="hp1" id="info-hp1" style="width: 75px; padding: 3px;">
											<option value="010" selected>010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
										</select>&nbsp;-&nbsp;
									    <input type="text" name="hp2" class="hp updateInput" id="info-hp2" size="6" maxlength="4" autocomplete="off" value="${ sessionScope.loginuser.hp2 }" style="width: 15%" />&nbsp;-&nbsp;
									    <input type="text" name="hp3" class="hp updateInput" id="info-hp3" size="6" maxlength="4" autocomplete="off" value="${ sessionScope.loginuser.hp3 }" style="width: 15%" />
									</td>
								</tr>
								
								<%-- GENDER --%>
								<tr style="margin-top: 50px">
									<td><span class="listinfo info" style="font-weight: bold ">성별&nbsp;&nbsp;</span></td>
								</tr>
								<tr>
									<td><span style="font-size: 9pt">${ sessionScope.loginuser.gender }</span></td>
								</tr>
								<tr>
									<td><span class="listinfo info" style="font-weight: bold ">생년월일</span></td>
								</tr>
								<tr>
									<td><span style="font-size:9pt">${ sessionScope.loginuser.birthday }</span></td>
								</tr>
							</tbody>
						</table>
						
					  <button type="button" id="updateBtn" class="btn btn-default" style="color: white !important; width: 100%;">수정</button>
					  
					</form>
				</div>	
					
						
				<div class="agreeMsg info col-xs-6 " style="border: solid rgb(239, 239, 239) 1px; border-top: hidden; border-left: hidden; line-height: 130%; height: 700px;">				
					<div class="scroll scrollable" style="padding-top: 30px; ">
								
					<div class="scrollable" style="overflow:scroll; height: 213px; overflow-x: hidden;  width: 95%; font-size:8pt; padding: 0 10px;">

							              고객님의 개인정보는 다음의 목적으로 Kering 그룹의 계열사 Yves Saint Laura SAS 및 YOOX NET-A-PORTER GROUP에 의해 전자적으로 처리됩니다.
							<br>
							<br>
							a) 웹사이트 등록, 등록 고객을 위한 서비스 제공 및 등록 고객 전용 섹션에 대한 접속권한 부여.
							<br>
							<br>
							고객님의 정보는 Yves Saint Laura SAS에 의해 다음의 목적으로 처리됩니다. <br><br>b) 뉴스레터 발송, 특별혜택 및 프로모션 제공을 포함한 스토어의 프로모션 활동 및 마케팅 목적. 
							<br>
							c) 설문조사, 시장조사, 고객만족도 및 통계 분석.
							<br>
							d) 고객의 쇼핑 습관에 대한 분석과 프로파일링.
							<br>
							e) 웹사이트의 원활한 서핑과 쇼핑, 당사 개인정보취급방침과 이하 명시된 고객님의 권리에 관련된 쿠키의 사용을 통해 더욱 효율적으로 상품과 서비스에 대한 정보 제공, 웹사이트의 자유로운 이용, 전반적인 서비스 향상.
							<br>
							<br>
							a)항에 요구되는 개인정보를 제공하지 않는 경우, 스토어의 기능이나 서비스를 이용할 수 없거나 요청사항에 대한 정보 및 답신을 받을 수 없습니다.
							<br>
							b), c), d), e)항에 대한 개인정보 처리는 선택사항으로, 이에 대한 정보를 제공하지 않는 경우 b)항을 제외한 요청된 모든 서비스를 제공합니다. 
							<br>
							고객님의 정보는 위에 언급한 목적을 위하여 Yves Saint Laura SAS에 의해 개인정보취급방침에 열거된 Kering 그룹에 속하는 유럽공동체 내ㆍ외의 업체에 전달될 수 있습니다. 고객님의 개인정보는 유포되지 않습니다. 고객님의 정보는 웹사이트 관리 및 이에 관련된 서비스, 마케팅, 정보 시스템, 데이터 처리, 이메일 작성, 서비스 프로모션 담당자에 의해 처리됩니다.
							 <br>
							개인정보 관리자: YOOX NET-A-PORTER GROUP S.p.A., (법적소재지: via Morimondo, 17 – Milano 20143, Italy, 밀라노 사업자등록, 세금 및 VAT 번호 02050461207, 주식자본 1,338,942.89 유로 전액불입 ), Yves Saint Laura SAS (법적소재지: 15, rue Cassette, 75006 Paris, FR.)
							<br>
							정보처리 및 개인정보보호 관련 법률에 의거한 고객님의 권리에 관한 자세한 정보는 저희 을 참고하시기 바랍니다.

          				<a href="/kr/Help/LegalArea/PrivacyPolicy" target="blank" class="mfpLink">개인정보취급방침</a></div>
					
					</div>
				<br/><br/><br/><br/>
           		<label class="privacy scrollable" style="font-weight:normal; overflow:scroll; height: 85px; overflow-x: hidden; width:95%; font-size:8pt; padding: 0 10px;">
           			<span class="agreecheckbox"><input type="checkbox" /></span>	
	               	이 확인란을 선택하고 “등록”을 클릭함으로써, 본인은 본인이 거주 국가에서 성년 나이에 도달했음을 확인하고 
	               	Yves Saint Laura SAS 및 Kering에서 본인을 프로파일하기 위해 본 양식에 제공한 해당 개인정보를 
	               	이용하는 것과 개인정보취급방침에 설명된 대로 본인의 관심 분야 및 쇼핑 습관에 맞춤화된 타겟팅 마케팅 커뮤니케이션을 
	               	포함하여 이메일 또는 전화로 마케팅 커뮤니케이션을 보내는 것에 동의합니다. 
	               	본인은 이메일에 있는 가입 취소 링크를 클릭하여 언제든지 동의를 철회할 수 있음을 알고 있습니다.           		
           		</label>
					
				</div>	
		
			</div>	
		</div>
	</div>	

</body>
