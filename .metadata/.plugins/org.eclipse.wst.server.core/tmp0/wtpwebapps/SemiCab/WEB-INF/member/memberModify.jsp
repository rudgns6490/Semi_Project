<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- -----------------------------------------------------HEADER 부분------------------------------------------------------ -->
<jsp:include page="../header.jsp"></jsp:include>
<!-- ----------------------------------------------------- HEADER 부분 끝------------------------------------------------------ --> 
<%-- --------------------------------------- C S S 시작----------------------------------------------------------------- --%>
<style type="text/css">

  form{
  	    width: 1400px;
  	    margin: 0 auto;
  	    background-color: #ffffff;
  }

  .title{
  	    width: 1400px;
  	    margin: 0 auto;
  	    background-color: #ffffff;
  }
  
  .title > .title_1{
  		border-bottom: solid thin gray;
  		margin: 0 auto;
  		width: 91%;
  }
  
  .title > .title_1 > .title_1_1{
/*   		border: solid 1px black; */
  		display: inline-block;
  		width: 49%;
  		height: 40px;
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

	.main{
  	    width: 1400px;
  	    margin: 0 auto;
  	    background-color: #ffffff;
 	}

	.main1{
		margin: 0 auto;
  		width: 91%;
  		border: solid 0.5px #f2f2f2;
	}
	
	.main1 > .main1_1{
		display: inline-block;
		vertical-align: middle;
		font-size: 9pt;
		padding-left: 10px; 
		
	}
	
  table{
  		margin: 0 auto;
  		width: 91%;
  		border: solid 0.5px #f2f2f2;
  }	
	    
  tbody > tr > th{
  		font-size: 8pt;
  		font-weight: normal;
  		background-color: #f2f2f2;
  		text-align: left;
  		border: solid 0.5px #f2f2f2;
  }
	  
  tbody > tr > td {
  		font-size: 7pt;
  		font-weight: normal;
  		border: solid 0.5px #f2f2f2;
  }

  .inputTypeText {
  		font-size: 8pt;
  }
  .bottom_button{
  		width: 91%;
  		margin: 0 auto;
  }
  .buttons {
  		display: inline-block;
  }
  
  .buttons1{
  		text-align:center;
  		position: relative;
  			left: 500px;
  }
  
  .buttons2{
  		float: right;
  }

</style>
<%-- --------------------------------------- C S S 끝 ----------------------------------------------------------------- --%>   
<%-- ---------------------------------------S C R I P T 시작----------------------------------------------------------------- --%>
<script type="text/javascript">

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 회원탈퇴
	function exitMember(){
		var frm = document.modifyFrm;
		
		frm.method = "POST";
		frm.action = "<%= request.getContextPath()%>/memberRegisterExitAction.ej";
		frm.submit();
		
		
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
	function modifyMemberGo(){
			var flag = false;		
			var regExpPassword = /^.*(?=^.{8,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).*$/g;
			var boolPassword = regExpPassword.test($("#password").val());
			var regExpMobile = /^[0-9]{10,11}$/;
			var boolMobile = regExpMobile.test($("#mobile1").val()+$("#mobile2").val()+$("#mobile3").val());
			var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			var boolEmail = regExpEmail.test($("#email").val());
			var boolTel = regExpMobile.test($("#tel").val());
			var genderCheck = $("input:radio[name=gender]").is(":checked");
						
//			1. 기존 비밀번호 검사 (정규표현식)
			// 공백
			if($("#password").val().trim() == ""){
				alert("아이디는 영문 대/소문자 및 숫자 사용만 가능하며 5-15자 입니다.");
				flag = false;
				$(this).html("");
				return;
			} else{flag = true;}
			
			if(!boolPassword){
				alert("비밀번호는 영문(대/소문자)+숫자+특수기호 의 조합이여야 하며 8-16자 입니다.");
				flag = false;
				$(this).html("");
				return;
			} else {flag = true;}
	
// 			2. 비밀번호 확인 검사
			// 공백
			if($("#passwordCheck").val().trim() == ""){
				alert("비밀번호 확인은 필수입니다~~");
				flag = false;
				$(this).html("");
				return;
			}				
			else if( $("#password").val() != $("#passwordCheck").val() ){
				alert("비밀번호가 서로 다르네요~~다시 입력해주세요");
				flag = false;
				$(this).html("");
				return;
			} else {flag = true;}
			
// 			3. 이름 검사			
			// 공백
			if( $("#username").val().trim() == ""){
				alert("이름은 필수입니다~(공백X) 꼭 입력해주세요.");
				flag = false;
				$(this).value("");
				return;
			} else {flag = true;}
			
//			4. 휴대전화 검사		
			// 공백
			if(!boolMobile2){
				alert("숫자 4자리로 정확히 입력해주세요");
				flag = false;
				$(this).html("");
				return;
			} else if(!boolMobile3){
				alert("숫자 4자리로 정확히 입력해주세요");
				flag = false;
				$(this).html("");
				return;
			} 
			else {flag = true;}
			
			// 오타
			if(!boolMobile){
				alert("휴대폰은 11 자리 입니다. 정확히 입력해주세요.");
				flag = false;
				$(this).html("");
				return;
			} else {flag = true;}
			// 중복
			idExistMobileCheck();
			
//			5. 일반전화 검사			
			// 정규표현
			if(!boolTel){
				alert("일반전화번호는 숫자입력만 가능하며 10자리 또는 11자리 입니다~");
				flag = false;
				$(this).html("");
				return;
			} else {flag = true;}
			
// 			6. 이메일 검사
			// 정규표현
			if(!boolEmail){
				alert("올바른 이메일 형식을 입력해주세요~~");
				flag = false;
				$(this).html("");
				return;
			} else {flag = true;}

// 			7. 상세주소 검사	
			//공백
			if( $("#address2").val().trim() == ""){
				alert("상세 주소를 알려주세요~~");
				flag = false;
				$(this).html("");
				return;
			} else {flag = true;}
					
// 			8. 최종 서브밋
			// 서브밋			
			if(flag){
				var frm = document.modifyFrm;
		
				frm.method = "POST";
				frm.action = "<%= request.getContextPath()%>/memberModifyAction.ej";
				frm.submit();
			}
	}		 
//			9. 다음 주소 검색		 
	function openDaumPOST() {
		new daum.Postcode({
			oncomplete: function(data) {
			    document.getElementById("postNum").value = data.postcode1 +"-" +data.postcode2
			    document.getElementById("address1").value = data.address;       // 큰주소                        예> 서울특별시 종로구 인사로 17 
			    document.getElementById("address2").focus();
			}
		}).open();
	}

</script>
<%-- ---------------------------------------S C R I P T 끝----------------------------------------------------------------- --%> 

<!-- -----------------------------------------------------회원정보수정 시작------------------------------------------------------ -->
<div style="background-color: #f2f2f2;">
		<div style="width: 100%; height: 150px; background-color: #f2f2f2;"> </div>
		
		<div class="title">
			<div class="title_1">
				<div style="width: 100%; height: 30px; background-color: #ffffff;"> </div>
				<div class="title_1_1 title_1_1_1">회원 정보 수정</div>
				<div class="title_1_1 title_1_1_2"><span class="side_title"><a href="main.ej">홈</a>	>	회원 정보 수정</span></div>
			</div>
		</div>	
		
		<div class="main">
			<div style="width: 100%; height: 30px; background-color: #ffffff;"> </div>
			
			<div class="main1">
				<div class="main1_1 main1_1_1">
					<p class="thumbnail"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/img_member_default.gif" alt="" onerror="this.src='//img.echosting.cafe24.com/skin/base/member/img_member_default.gif';" class="myshop_benefit_group_image_tag"></p>
				</div>
				<div class="main1_1 main1_1_2">
					<p>저희 쇼핑몰을 이용해 주셔서 감사합니다.
						<strong class="main1_2_1"><span><span class="xans-member-var-name">접속자</span></span></strong>
						<strong>[<span class="xans-member-var-group_name">일반회원</span><span class="myshop_benefit_ship_free_message"></span>]</strong>
						 회원이십니다.
					</p>
				</div>
			</div>
		
		<div style="width: 1400px; height: 15px; background-color: #ffffff;"></div>	
			
		</div>
		
		<form name="modifyFrm">
			<table>
				<colgroup>
					<col style="width:150px;">
					<col style="width:auto;">
				</colgroup>
				
				<tbody>
					<tr>
						<th> 
							아이디<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수">
						</th>
						<td>
							<input id="userid" name="userid" class="inputTypeText" placeholder="${member.userid}" disabled value ="" type="text">
							<span class="msg" id="useridMsg"></span> (영문소문자/숫자, 4~16자)
						</td>							
					</tr>
					<tr>
						<th> 
							비밀번호
						</th>
						<td>
							<input id="password" name="password" class="inputTypeText" placeholder="" value="" type="text" />
							<span class="msg" id="newPasswordMsg"></span>
						</td>
					</tr>
					<tr>
						<th> 
							비밀번호 확인
						</th>
						<td>
							<input id="passwordCheck" class="inputTypeText" placeholder="" value="" type="text">
							<span class="msg" id="passwordCheckMsg"></span>
						</td>
					</tr>
					
					<tr>
						<th> 
							이름<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수">
						</th>
						<td>
							<input id="username" name="username" class="inputTypeText" placeholder="" value="" disabled type="text">
							<span class="msg" id="usernameMsg"></span> 
						</td>
					</tr>
					<tr>
						<th> 
							주소<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수">
						</th>
						<td>
							<input style="width: 20%;" maxlength="50" id="address1" name="address1" class="inputTypeText" placeholder="${member.address}" disabled readonly value="" type="text">
							<input style="width: 20%;" maxlength="50" id="address2" name="address2" class="inputTypeText" placeholder="상세주소를 입력해주세요" value="" type="text">
							<input style="width: 5%;" id="postNum" name="postNum" class="inputTypeText" placeholder="우편번호" disabled readonly value="" type="text">
							<span class="msg" id="birthdayMsg"></span> 
							<button style="width: 70px; height: 20px;" type="button" onclick="openDaumPOST();" value="주소 검색"><span style="font-size: 8pt;">주소 검색</span></button>
						</td>
					</tr>
					<tr>
						<th> 
							일반전화
						</th>
						<td>
							<input id="tel" name="tel" class="inputTypeText" placeholder="" value="" type="text">
						</td>
					</tr>
					<tr>
						<th>
							휴대전화 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="" alt="필수">
						</th>
						<td>
							<select style="font-size:7pt; height: 18px; width: 40px;" id="mobile1" name="mobile">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>
							-
							<input style="width: 60px;" maxlength="4" id="mobile2" name="mobile2" class="inputTypeText" placeholder="" value="" type="text">
							-
							<input style="width: 60px;" maxlength="4" id="mobile3" name="mobile3" class="inputTypeText" placeholder="" value="" type="text">
						</td>
	            	</tr>
					<tr>
						<th> 
							이메일<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수">
						</th>
						<td>
							<input id="email" name="email" class="inputTypeText" placeholder="예) abcd@gmail.com" value="" type="text">
							<span class="msg" id="emailMsg"></span> 
						</td>
					</tr>
					<tr>
						<th> 
							생년월일<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수">
						</th>
						<td>
							<input maxlength="8" id="birthday" name="birthday" class="inputTypeText" placeholder="${member.birthday}" disabled value="" type="text">
							<span class="msg" id="birthdayMsg"></span> 
						</td>
					</tr>
					<tr>
						<th> 
							성별<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수">
						</th>
						<td>
							<input type="radio" name="gender" value="1" disabled />남자
							&nbsp;&nbsp;
							<input type="radio" name="gender" value="2" disabled />여자
							<span class="msg" id="birthdayMsg"></span> 
						</td>
					</tr>
								
				</tbody>
			</table>
			
			<div style="width: 100%; height: 20px; background-color: #ffffff;"> </div>
			<div class="bottom_button">
				<div class="buttons buttons1">
					<button type="button" onclick="modifyMemberGo();">회원 정보 수정</button>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="reset">취소</button>
				</div>
				<div class="buttons buttons2">
					<button type="button" onclick="exitMember();">회원 탈퇴</button>
				</div>
			</div>
			
			<div style="width: 100%; height: 40px; background-color: #ffffff;"> </div>			
			
			
		</form>
		
		<div style="width: 100%; height: 30px; background-color: #f2f2f2;"> </div>
		
</div>    
<!-- -----------------------------------------------------회원정보수정  끝------------------------------------------------------ -->
    
<!-- -----------------------------------------------------FOOTER 부분------------------------------------------------------ -->
<jsp:include page="../footer.jsp"></jsp:include>
<!-- -----------------------------------------------------FOOTER 부분 끝------------------------------------------------------ -->
    