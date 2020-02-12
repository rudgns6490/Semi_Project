<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../header_dog.jsp"/>    
    
<title>비밀번호 변경하기</title>
<div id="changePW_body">

	<form name="changePWform">
		
		<div style="font-family: 'Nanum Gothic', sans-serif; font-size: 26pt; font-weight:bold; text-align: center;
					border-bottom: solid 2px black;">
			비밀번호 변경
		</div>	
		
		<div style="font-family: 'Nanum Gothic', sans-serif; font-size: 10pt; padding: 50px 0;">
			회원님의 아이디 [ <span style="color:red; font-weight:bold;"> ${ sessionScope.loginuser.user_id } </span>] 는 비밀번호 변경 안내 대상입니다.<br>
			저희 하빈 펫푸드는 회원님의 개인정보 보호를 위해 6개월 이상 비밀번호를 변경하지 않은 경우 비밀번호 변경을 안내하고 있습니다.<br>
			<br>
			변경 시, 타인이 추측하기 쉬운 비밀번호는 도용위험성이 높으니,영어/숫자/특수문자를 조합하여 8자리 이상으로 안전하게 설정해주시기 바랍니다.
		</div>	
	
		<table id="changePWtbl" style="border-top: solid 2px black; border-bottom: solid 2px black; ">
		
			<tr>
				<td style="width:25%; border-right: solid 1px black; font-weigth:bold;">현재 비밀번호</td>
				<td style="text-align: center;"><input type="password" name="user_pw1" id="user_pw1" style="width:90%;"/></td>
			</tr>
			
			<tr>
				<td style="width:25%; border-right: solid 1px black; font-weigth:bold;">새 비밀번호</td>
				<td style="text-align: center;"><input type="password" name="user_pw2" id="user_pw2" style="width:90%;" /></td>
			</tr>
			
			<tr>
				<td style="width:25%; border-right: solid 1px black; font-weigth:bold;">새 비밀번호 확인</td>
				<td style="text-align: center;"><input type="password" name="user_pw3" id="user_pw3" style="width:90%;" /></td>
			</tr>
		
		</table>
		
		<div style="text-align: center; margin-top: 30px;">
			<button type="button" id="changePwBtn" >비밀번호 변경하기</button>
			<button type="button" id="changeNextBtn" >다음에 변경하기</button>
		</div>
		
		<div style="text-align: center; color: #999999; font-size:9pt; padding: 20px 0;">지금 변경을 원하시지 않는 경우, '다음에 변경' 버튼을 눌러 1개월 후에 변경하실 수 있습니다.</div>
		
	</form>
	
	<%-- 다음에 변경하기 히든 창 --%>
	<form name ="changeNextForm" >
		<input type="hidden" name = "changeNext" value="1">
	</form>
	
</div>    
    
    
<style>

	#changePW_body{
		width: 55%;
		margin: 0 auto;
		padding: 100px 0;
	}

	#changePWtbl {
		width: 60%;
		margin: 0 auto;
	}
	
	#changePWtbl tr {
		height: 50px;
		border-top: solid 1px black;
		border-bottom: solid 1px black;
	}
		
	#changePWtbl tr td input {
		height: 40px;
		border: solid 1px #cccccc;
		font-size: 20pt;
			
	}
	
	#changePwBtn {
		font-family: 'Nanum Gothic', sans-serif;
		font-weight: bold;
		border: none;
		background-color: green;
		color: white;
		height: 40px;
		width: 150px;
		margin-right: 15px;
	}
	
	#changeNextBtn{
		font-family: 'Nanum Gothic', sans-serif;
		font-weight: bold;
		border: none;
		background-color: red;
		color: white;
		height: 40px;
		width: 150px;
	}
	

</style>   
    
<script type="text/javascript">
	
	$(document).ready(function(){
		
		$("#changeNextBtn").click(function(){	// 다음에 변경하기
			
			var frm = document.changeNextForm;
			frm.method = "POST";
			frm.action = "<%= request.getContextPath() %>/login/changePWEnd.dog";
			frm.submit();
			
		}); // end of 다음에 변경하기 -----------------------
		
		$("#changePwBtn").click(function(){		// 비밀번호 변경하기
			
			var user_pw1 = $("#user_pw1").val();
			var user_pw2 = $("#user_pw2").val();
			var user_pw3 = $("#user_pw3").val();
			
			if( user_pw1.trim() == "" || user_pw2.trim() == "" || user_pw3.trim() == "" ){
				
				alert("비밀번호를 입력해주세요.");
				
				return false;
			}
			
			var regExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
			
			var bool1 = regExp.test(user_pw1);
			var bool2 = regExp.test(user_pw2);
			var bool3 = regExp.test(user_pw3);
			
			if( bool1 == false || bool2 == false || bool3 == false ){
				alert("비밀번호는 최소 8자리에 숫자,영문자,특수문자가 각 1개씩 포함되어야 합니다.");
				
				return false;
			}
			
			if(user_pw2 != user_pw3){
				
				alert("새로운 비밀번호를 확인해주세요");
				$("#user_pw2").focus();
				
				return false;
			}
			
			var frm = document.changePWform;
			frm.method = "POST";
			frm.action = "<%= request.getContextPath() %>/login/changePWEnd.dog";
			frm.submit();
			
		}); // end of 비밀번호 변경하기 -----------------------
		
		
	}); // end of $ document.ready ----------------------------------------------------------------
	
	
	



</script>    
    
    
<jsp:include page="../footer_dog.jsp"/>      