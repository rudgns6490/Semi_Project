<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<jsp:include page="/WEB-INF/header_dog.jsp" />

<title>질문과 대답</title>
<div id="qnaPW_body">
	
	<div id="qnaPW_div1">Home > 상품 질문과 답변</div>
	<div id="qnaPW_div2">고객센터</div>
	
	<form name="pwSubmitForm">
		<div id="qnaPW_div3">
			<span style="color: #999999;">password</span>&nbsp;&nbsp;&nbsp;
			<input type="password" name="password" id="password" maxlength="4" >
			<input type="hidden" name="board_num" id="board_num" readonly >
			<input type="hidden" name="revDel" id="revDel" readonly >
		</div>
	</form>
	
	<div id="qnaPW_btns">
		<button type="button" id="qnaPW_okBtn">확인</button>
		<button type="button" id="qnaPW_backBtn">목록으로 돌아가기</button>
	</div>

</div>

<jsp:include page="/WEB-INF/footer_dog.jsp" /> 
    
    
<style>

	#qnaPW_body {
		width: 70%;
		margin:0 auto;
		padding: 30px 0;
	}
	
	#qnaPW_div1 {
		color: gray;
		text-align: right;
		padding: 30px 30px 10px 0;
	}
	
	#qnaPW_div2 {
		text-align: center;
		font-family: 'Nanum Gothic', sans-serif;
		font-size: 32pt;
		font-weight: bold;
		padding: 20px 0 40px 0;
	}
	
	#qnaPW_div3 {
		width: 80%;
	    text-align: center;
	    border-top: solid 1px black;
	    border-bottom: solid 1px black;
	    margin: 0 auto;
	    padding: 70px 0;
	}
	
	#qnaPW_btns {
		text-align: center;
		padding: 50px 0 80px 0;	
	}
	
	#qnaPW_btns button {
		font-family: 'Nanum Gothic', sans-serif;
		font-size: 13pt;
		padding: 10px 70px;
		border: solid 1px black;
	}
	
	#password {
		height: 50px;
		width: 380px;
		font-size: 17pt;
		padding-left: 15px;
		letter-spacing: 1.5px;
	}
	
	#password:focus {
		border: solid 1px black;
		outline: none;
	}
	
	#qnaPW_okBtn {
		margin-right: 30px;
		background-color: white;
		color:black;
		transition: 0.5s;
	}
	
	#qnaPW_okBtn:hover {
		background-color: black;
		color:white;
	}
	
	#qnaPW_backBtn {
		background-color: black;
		color:white;
		transition: 0.5s;
	}
	
	#qnaPW_backBtn:hover {
		background-color: white;
		color:black;
	}
	
</style>    

<script>

	$(document).ready(function(){
		
		var board_num = "${ board_num }";
		var revDel = "${ revDel }";
		$("#board_num").val(board_num);	
		$("#revDel").val(revDel);
		
		$("#password").keydown(function(event){
			
			if(event.keyCode == 13){
				$("#qnaPW_okBtn").trigger("click");
			}
		});
		
		
		$("#qnaPW_okBtn").click(function(){
			
			var password = $("#password").val();
			
			if(password.trim() == "" || password == null){
				alert("비밀번호를 입력해주세요");
				
				$("#password").focus();
				return false;
			}
			
			
			if(revDel == "delete" ){
				
				if(confirm("정말 삭제하시겠습니까?")== true  ){
					goRevDel();
				}
				else{
					return false;
				}
			}
			else {
				goRevDel();
			}
			
		});
		
		$("#qnaPW_backBtn").click(function(){

			var goBackURL = "${ sessionScope.goBackURL }";
			if( goBackURL != ""){
				location.href="<%= request.getContextPath() %>/"+goBackURL;
			}
			else{
				location.href="javascript:history.back()";
			}
		});
		
		
	}); // end of $ document ready -------------------------------------------

	function goRevDel(){
		
		var frm = document.pwSubmitForm;
		frm.method="POST";
		frm.action="<%= request.getContextPath() %>/customer/customerQnArevDelEnd.dog";
		frm.submit();
	} // end of goRevDel ---------------------------------------------------
	
	
</script>