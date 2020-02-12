<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<%
	String ctxPath = request.getContextPath();
    //     /MyMVC 
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복 ID 검사하기</title>

<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/css/style.css" />
<script type="text/javascript" src="<%= ctxPath%>/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">

	$(document).ready(function(){
		$("#error").hide();
	});// end of $(document).ready(function(){});-------------

	function goCheck() {
		var userid = $("#userid").val().trim();
		
		if(userid == "") {
			$("#error").show();
			$("#userid").val("");
			$("#userid").focus();
			
			return;
		}
		else {
			$("#error").hide();
			
			var frm = document.frmIdcheck;
			frm.method = "POST";
			frm.action = "idDuplicateCheck.up";
			frm.submit();
		}
		
	}// end of function goCheck()--------------------
	
	
	function setUserId(userid) {
	
	/*	
		// == 1. 팝업창에서 부모창으로 값을 넘기는 방법(javascript) ==
		var openerfrm =	opener.document.registerFrm;
		// opener 는 팝업창을 열게한 부모창을 말한다.
		// opener.document 는 부모창의 소스파일을 말한다. 즉, memberform.jsp 이다.
		
		openerfrm.userid.value = userid;
		openerfrm.pwd.focus();
		
		self.close();
		// 여기서 self는 팝업창 자기자신을 뜻한다.
		// 지금의 self는 idcheck.jsp 페이지이다.
	*/	
	/*
		// == 2. 팝업창에서 부모창으로 값을 넘기는 방법(jQuery-1) == 	
		$("#userid", opener.document).val(userid);
		$("#pwd", opener.document).focus();
		
		self.close();
	*/		
		// == 3. 팝업창에서 부모창으로 값을 넘기는 방법(jQuery-2) ==
		$(opener.document).find("#userid").val(userid);
		$(opener.document).find("#pwd").focus();
		
		self.close();	
	}// end of function setUserId()--------------
	
</script>

</head>
<body>
    <span style="font-size: 10pt; font-weight: bold;">확인용 : ${method}</span>
	
	<%-- 전송방식이 GET 이라면 ID중복검사를 하기위한 form 태그를 띄워주어야 한다. --%>
	<c:if test="${method == 'GET'}">
	<form name="frmIdcheck">
		<table style="width: 95%; height: 100px;">
			<tr>
				<td style="text-align: center;">
					아이디를 입력하세요<br/><br/>
					<input type="text" name="userid" id="userid" class="box" size="20" maxlength="20" /><br/><br/> 
					<span id="error" style="color: red; font-size: 12pt; font-weight: bold;">아이디를 입력하세요!!</span><br/><br/>
					<button type="button" class="box" onclick="goCheck();">확인</button> 
				</td>
			</tr>
		</table>
	</form>	
	</c:if>
	
	<%-- 전송방식이 POST 이라면 DB에 들어가서 입력한 ID가 사용가능한 ID인지 
	         이미 사용중인 ID인지 ID중복검사를 해와야 한다. --%>
	<c:if test="${method == 'POST'}">
	    <%-- userid 가 중복되어 사용중인 아이디이라면 isExistUserid 값은 true 를 갖게 되고
	         userid 가 사용가능한 아이디이라면  isExistUserid 값은 false 를 갖게 된다. --%>
	    <c:if test="${isExistUserid == false}">
	    	<div align="center">
	    	  <br style="line-height: 400%"/>
	    		ID[<span style="color: red; font-weight: bold;">${userid}</span>]로 사용가능합니다.
	    		<br/><br/><br/>
	    		<button type="button" class="box" onclick="setUserId('${userid}');">닫기</button>
	    	</div>
	    </c:if> 
	    
	    <c:if test="${isExistUserid == true}">
	    	<div align="center">
	    		[<span style="color: red; font-weight: bold;">${userid}</span>] 는 이미 사용중입니다. 
	    		<br/><br/>
	    		<form name="frmIdcheck">
					<table style="width: 95%; height: 100px;">
						<tr>
							<td style="text-align: center;">
								아이디를 입력하세요<br/><br/>
								<input type="text" name="userid" id="userid" class="box" size="20" maxlength="20" /><br/><br/> 
								<span id="error" style="color: red; font-size: 12pt; font-weight: bold;">아이디를 입력하세요!!</span><br/><br/>
								<button type="button" class="box" onclick="goCheck();">확인</button> 
							</td>
						</tr>
					</table>
				</form>	
	    	</div>
	    </c:if>     
	    	
	
	</c:if>         
	
</body>
</html>









