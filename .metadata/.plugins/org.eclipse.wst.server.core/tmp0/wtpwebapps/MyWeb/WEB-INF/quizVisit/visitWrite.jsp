<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String ctxPath = request.getContextPath();
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 쓰기</title>
<style type="text/css">

	body {
		/* border: solid 1px blue; */
		margin: 0;
		padding: 30px 0 0 0;
		font-family: Arial, "MS Trebuchet", sans-serif;
	}

	#container {
		/* border: solid 1px gray; */
		width: 80%;
		margin: 0 auto;
	}
	
	legend {
		font-size: 20pt;
	}
	
	ul {
		/* border: solid 1px yellow; */
		list-style-type: none;
		padding: 0;
	}
	
	ul > li > label {
		/* border: solid 1px blue;   */
		display: inline-block; 
		width: 100px;
		color: navy;
		font-weight: bold;
		height: 20px;
		margin: 2px 0 0 0;
	} 
		
	ul > li {
		margin: 0 0 20px 0;
	}
	
	input.myinput {
		height: 20px;
	}
		
	button.btn {
		width: 100px;
		height: 40px;
		background-color: #555;
		color: #fff;
		border: none;
		font-size: 16pt;
		margin: 20px 0 0 40px;
	}
	
	button.btn:hover {
		cursor: pointer;
		color: #ffff66;
	}
	
</style>

<script type="text/javascript" src="<%= ctxPath%>/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$("form").css('display','none');
		
		$("button#btnStart").click(function(){
			$(this).css('display','none');
			$("form").css('display','');
		});
		
		$("button.btnOK").click(function(){
			var flag = true;
			$(".data").each(function(){
				var val = $(this).val().trim();
				if(val=="") {
					alert("모든 내용을 입력하셔야 합니다.");
					flag = false;
					return false;
				}
			});
			
			if(flag) {
				var frm = document.registerFrm;
				frm.action = "visitWriteEnd.do";
				frm.method = "post";
				frm.submit();
			}
			
		});	
		
		$("button.btnClose").click(function(){
			$("form").css('display','none');
			$("button#btnStart").css('display','');
		});
		
	});
</script>

</head>
<body>

	<div id="container">
		<button type="button" id="btnStart">방명록 시작</button>
		<form name="registerFrm"> 
			<fieldset>
				<legend>방명록 쓰기</legend>
				<ul>
					<li>
						<label for="visitorname">글쓴이</label>
						<input type="text" name="visitorname" class="myinput data" id="visitorname" size="20" maxlength="20" autofocus required autocomplete="off" />     
					</li>
					
					<li>
						<label for="contents">내용</label>
						<textarea rows="10" cols="50" name="contents" class="data" id="contents" placeholder="남기고 싶은 말 쓰세요" ></textarea>
					</li>
					
					<li>
						<button type="button" class="btn btnOK">확인</button> 
						<button type="reset"  class="btn">취소</button>
						<button type="button" class="btn btnClose">종료</button>
					</li>
				</ul>
			</fieldset>
		
		</form>
	</div>

</body>
</html>