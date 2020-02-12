<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String ctxPath = request.getContextPath();
    //     /MyWeb
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<style type="text/css">
	
	body {
	      font-family: Arial, "MS Trebuchet", sans-serif;
	      font-size: 16pt; 
	}
	
	* {margin: 0;}

	div#container { 
		width: 90%;
	    margin: 0 auto;
	    padding: 50px 0;
		text-align: center;					
		/* border: 1px solid red; */
	}
	
	fieldset {
	          text-align: left;
	          background: #ffffe6;}
	
	legend {font-size: 24pt;}
	
	fieldset>ul {
		list-style: none;
		padding: 0;
	}
	
	fieldset>ul>li {
		line-height: 40px;
	}
	
	fieldset>ul>li>label:first-child {
		display: inline-block;
		width: 10%;
		/* border: solid 1px green; */
	}
	
	fieldset>ul>li>input {
		width: 20%;
		height: 20px;
		/* border: solid 1px blue; */
	}
	
	div.schoolInterest {
		display: inline-block;
		width: 50%;
		/* border: solid 1px gray; */
	}
	
	div.schoolInterest>label {
		margin-right: 2%;
	}
	
	div.schoolInterest>input {
		margin-right: 5%;
	}
	
    fieldset>ul>li:last-child>input {
    	width: 10%;
    	height: 50px;
    	margin: 2% 4% 0 0;
    	font-size: 16pt;
    	font-weight: bold;
    	background: #006600;
    	color: #eee;
    	border: none;
    }
    
    fieldset>ul>li:last-child>input:hover {
    	opacity: 0.8;
    	cursor: pointer;
    	color: #ffffcc;
    }
	
	span.error {
		color: red;
		font-size: 10pt;
	}

</style>

<script type="text/javascript" src="/JqueryStudy/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">

	$(document).ready(function(){
		
	//	$("span.error").hide();
	    $("span.error").css('display','none');
	    
	    $("input#userid").blur(function(){
	        /* 선택자.blur(function(){ }); 는  
	                    선택자에 포커스가 있다가 포커스를 잃어버리는 순간 발생되어져 처리해주는 메소드이다. 
	        */
		    // alert("아이디에서 포커스를 잃어버렸군요~~");
		       
		    // 조건 : 아이디는 5글자 이상 10글자 이하로 첫글자는 영문대문자이고 나머지는 영문자,숫자로 혼합되어져야 합니다.
		    // == 정규표현식 객체 만들기 == 
		    //    항상 / 로 시작해서 / 로 끝나고 ; 붙인다.
		    var regExp = /^[A-Z][A-Za-z0-9]{4,9}$/;
		    
		    // 생성된 정규표현식 객체속에 데이터를 넣어서 검사하기
		    var bool = regExp.test($(this).val()); 
		    // 리턴타입은 boolean 이다.
		    
		    if(!bool) {
		    //	$("span.userid_error").show();
		    	$("span.userid_error").css('display','');
		    	
		    	$(":input").attr("disabled", true);
		    //  $(":input") 은 모든 input 태그를 말한다.
		        
		        $(this).attr("disabled", false);
		        $(this).val("");
		        $(this).focus();
		    }
		    else {
            // 	$("span.userid_error").hide();
		    	$("span.userid_error").css('display','none');
		    	$(":input").attr("disabled", false);
		    	$("input#passwd").focus();
		    }
	    });// end of $("input#userid").blur()--------
	    
	    
	    $("input#passwd").blur(function(){
	    	
	    	var regExp = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).*$/g;
	    	var bool = regExp.test($(this).val());
	    	
	    	if(!bool) {
	        	$("span.password_error").css('display','');
	        	
	        	$(":input").attr("disabled",true);
	        	// $(":input") 은 모든 input 태그를 말한다.
	        	
	        	$(this).attr("disabled",false);
	        	$(this).val("");
	        	$(this).focus();
	        }
	        else {
	        	$("span.password_error").css('display','none');
	        	$(":input").attr("disabled",false);
	        	$("input#passwdCheck").focus();
	        }
	    	
	    });// end of $("input#passwd").blur()--------
	    
	    
	    $("input#passwdCheck").blur(function(){
	    	
	    	if( $(this).val() != $("input#passwd").val() ) {
	    		$("span.passwdCheck_error").html("암호와 암호확인값이 서로 일치하지 않습니다.");
	    		$("span.passwdCheck_error").css('display','');
	    		
	    		$("input#passwd").val("");
	    		$(this).val("");
	    		
	    		$(":input").attr("disabled",true);
	    		$("input#passwd").attr("disabled",false);
	    		$(this).attr("disabled",false);
	    		
	    		$("input#passwd").focus();
	    	}
	    	else {
	    		$("span.passwdCheck_error").empty();
	    		$(":input").attr("disabled",false);
	    		
	    		$("input#name").focus();
	    	}
	    	
	    });// end of $("input#passwdCheck").blur()------------
	    
	    
	    $("input#name").blur(function(){
			
			if( $(this).val().trim()=="" ) {
				$("span.name_error").html("성명은 필수입력란 입니다"); 
				$("span.name_error").css('display','');
				
				$(":input").attr("disabled",true);
	        	$(this).attr("disabled",false);
	        	$(this).val("");
	        	$(this).focus();
			}
			else {
				$("span.name_error").empty();
				$(":input").attr("disabled",false);
				
				$("input#email").focus();
			}
			
		});// end of $("input#name").blur()----------------
	    
	
		$("input#email").blur(function(){
			
	        var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
	        var bool = regExp.test($(this).val());  
			
	        if(!bool) {
	        	$("span.email_error").html("올바른 이메일이 아닙니다.");
	        	$("span.email_error").css('display','');
	        	
	        	$(":input").attr("disabled",true);
	        	$(this).attr("disabled",false);
	        	$(this).val("");
	        	$(this).focus();
	        }
	        else {
	        	$("span.email_error").empty();
	        	$(":input").attr("disabled",false);
	        	$("input#tel").focus();
	        }

		});// end of $("input#email").blur()---------
	
		
		$("form").submit(function(){
		
			var jubun = $("input#jubun1").val().trim() + $("input#jubun2").val().trim();
			// == 주민번호 13자리는 모수 숫자만 들어와야 하며 성별을 나타내는 자리는 1,2,3,4 만 들어와야 한다. == 
			
			var regExp = /^[0-9]{6}[1234][0-9]{6}$/;
			var bool = regExp.test(jubun);
			
			if(!bool) {
				alert("올바른 주민번호가 아닙니다.");
				$("input#jubun1").val("");
				$("input#jubun2").val("");
				
				$("input:radio[value='M']").prop("checked", false);
				$("input:radio[value='F']").prop("checked", false); 
				
				$("input#jubun1").focus();
				return false;  
				// 여기서 종료함. 즉, 서브밋을 하지 말라는 뜻이다.
			}
						
			var radioBool = $("input:radio[name=school]").is(":checked"); 
			var checkboxBool = $("input:checkbox[name=interest]").is(":checked"); 
			
			if(!radioBool) {
				alert("학력을 선택하세요!!");
				return false;  
				// 여기서 종료함. 즉, 서브밋을 하지 말라는 뜻이다. 
			}
		
		/*	
			if(!checkboxBool) {
				alert("관심분야를 선택하세요!!");
				return false;  
				// 여기서 종료함. 즉, 서브밋을 하지 말라는 뜻이다. 
			}
		*/
			
		});// end of $("form").submit()---------------
		
		
	});// end of $(document).ready()------------------

</script>

</head>
<body>
<div id="container">
	<form name="registerFrm" action="<%= ctxPath%>/memberRegisterEnd3.do" method="post">
		<fieldset>
			<legend>회원가입3</legend>
			<ul>
				<li>
					<label for="userid">아이디</label>
					<input type="text" name="userid" id="userid" value="" maxlength="20" required autofocus autocomplete="off" />
					<span class="error userid_error">아이디는 5글자 이상 10글자 이하로 첫글자는 영문대문자이고 나머지는 영문자,숫자로 혼합되어져야 합니다.</span>     
				</li>
				<li>
					<label for="passwd">암호</label>
					<input type="password" name="passwd" id="passwd" value="" maxlength="20" required />
					<span class="error password_error">암호는 8글자 이상 15글자 이하의 영문자,숫자,특수기호가 혼합된 것이어야 합니다.</span>
				</li>
				<li>
					<label for="passwdCheck">암호확인</label>
					<input type="password" id="passwdCheck" value="" required />
				    <span class="error passwdCheck_error"></span>
				</li>
				<li>
					<label for="name">성명</label>
					<input type="text" name="name" id="name" value="" maxlength="20" required />
				    <span class="error name_error"></span>
				</li>
				<li>
					<label for="email">e메일</label>
					<input type="email" name="email" id="email" value="" maxlength="40" placeholder="예 abc@gmail.com" required />
				    <span class="error email_error"></span>
				</li>
				<li>
					<label for="tel">전화번호</label>
					<input type="tel"  name="tel" id="tel" value="" maxlength="11" placeholder="-는 제외하고 입력"/>
				</li>
				<li>
					<label>주민번호</label>
					<input type="text" name="jubun1" id="jubun1" size="10" maxlength="6" required autocomplete="off" />&nbsp;-
					<input type="password" name="jubun2" id="jubun2" size="10" maxlength="7" required />   
				</li>
				<li>
					<label>학력</label>
					<div class="schoolInterest">
						<label for="school1">고졸</label><input type="radio" name="school" id="school1" value="고졸" />&nbsp;
				        <label for="school2">초대졸</label><input type="radio" name="school" id="school2" value="초대졸" />&nbsp;
				        <label for="school3">대졸</label><input type="radio" name="school" id="school3" value="대졸" />&nbsp;
				        <label for="school4">대학원졸</label><input type="radio" name="school" id="school4" value="대학원졸" />&nbsp; 
				    </div> 
				</li>
				<li>
					<label>관심분야</label>
					<div class="schoolInterest">
						<label for="interest1">Java</label><input type="checkbox" name="interest" id="interest1" value="Java" />&nbsp;
				        <label for="interest2">Oracle</label><input type="checkbox" name="interest" id="interest2" value="Oracle" />&nbsp;
				        <label for="interest3">HTML</label><input type="checkbox" name="interest" id="interest3" value="HTML" />&nbsp;
				        <label for="interest4">JavaScript</label><input type="checkbox" name="interest" id="interest4" value="JavaScript" />&nbsp;
					</div> 
				</li>
				<li>
					<input type="submit" value="회원가입" />
					<input type="reset" value="취소" />
				</li>
			</ul>
		</fieldset>
	</form>
</div>
</body>
</html>



    