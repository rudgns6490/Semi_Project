<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/header_dog.jsp" />

<style type="text/css">

	.writeboard {
	    width: 1200px;
	    margin: 0 auto;
	}
	
	.board_row {
/* 	    table-layout: fixed; */
	    width: 100%;
	    margin: 0 auto;
	    border-top: 1px solid #000;
	}
	
	.board_row > tbody {
	    margin: 0;
	    padding: 0;
	    border: 0;
	    outline: 0;
	    color: inherit;
	    font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
	    font-size: 12px;
	    line-height: normal;
	    vertical-align: baseline;
	}
	
	.board_row th {
	    width: 200px;
	    padding: 10px 0 10px 30px;
	    border-bottom: 1px solid #d7d7d7;
	    color: #181818;
	    font-weight: normal;
	    text-align: left;
	    vertical-align: middle;
	}
	
	.board_row td {
	    padding: 10px 0 10px 10px;
	    border-bottom: 1px solid #d7d7d7;
	    color: #837d81;
	    text-align: left;
	    vertical-align: middle;
	}

	.writeform .btn {
	    padding: 20px 0;
	    text-align: center;
	}
	
	.box_btn {
	    display: inline-block;
	    width: 150px;
	    height: 40px;
	    margin: 0;
	    padding: 0 10px;
	    border: 1px solid #42362f;
	    box-sizing: border-box;
	    background: #42362f;
	    font-family: 'Nanum Gothic', '나눔고딕', 'dotum', '돋움', sans-serif;
	    font-size: 14px;
	    font-weight: bold;
	    text-align: center;
	    line-height: 40px;
	    cursor: pointer;
	}
	
		
	.box_btn {
	    display: inline-block;
	    zoom: 1;
	    overflow: hidden;
	    text-align: center;
	    vertical-align: top;
	}
	
	.btn_white {
	    border: 1px solid #ccc;
	    background: #fff;
	    color: black;
	    transition: 0.5s;
	}
	
	.btn_white:hover {
		background-color: black;
		color: white;
	}
	
	.btn_black {
		color: white;
		transition: 0.5s;
	}
	
	.btn_black:hover {
		background-color: white;
		color: black;
	}
	
	.text_area {
		width: 200px;
		height: 40px;
		font-size: 13pt;
	}
	
</style>

<script>
	
	$(document).ready(function(){
		
		var fk_product_code = "${ pnum }";
		$("#fk_product_code").val(fk_product_code);
		
		var loginuser_name = "${ sessionScope.loginuser.user_name }";
		$("#writer").val(loginuser_name);
		
		// 유효성 검사하기
		$("#submitBtn").click(function(){
			
			var title = $("#title").val();
			var writer = $("#writer").val();
			var password = $("#password").val();
			var txtAreaByte = $("#txtAreaByte").val();
			
			if(title == null || title.trim() == ""){
				alert("제목을 입력해주세요.");
				$("#title").focus();
				
				return false;
			}
			
			if(writer == null || writer.trim() == ""){
				alert("작성자를 입력해주세요.");
				$("#writer").focus();
				
				return false;
			}
			
			if( password == null || password.trim() == ""){
				alert("비밀번호를 입력해주세요.");
				$("#password").focus();
				
				return false;
			}
			
			if( password.length != 4){
				alert("비밀번호는 4글자로 입력해주세요.");
				$("#password").focus();
				
				return false;
			}
			
			if( parseInt(txtAreaByte) > 3000 ){
				alert("내용은 3000 byte를 넘을 수 없습니다.");
				$("#contents").focus();
				
				return false;
			}
			
			var frm = document.qnawritefrm;
			frm.action = "<%= request.getContextPath() %>/customer/customerQnAWrite.dog";
			frm.submit();
			
		});
		
		$("#backBtn").click(function(){
			
			<%-- location.href= "<%= request.getContextPath() %>/customer/customerQnA.dog"; --%>
			location.href = "javascript:history.back();";
		});
		
		
		
	}); // end of document ready ------------------------------

	function fnChkByte(obj, maxByte){
		
		var str = obj.value;
		var str_len = str.length;

		var rbyte = 0;
		var rlen = 0;
		var one_char = "";
		var str2 = "";

		for(var i=0; i<str_len; i++){
			
			one_char = str.charAt(i);
			
			if(escape(one_char).length > 4){
			    rbyte += 2;                                         //한글2Byte
			}else{
			    rbyte++;                                            //영문 등 나머지 1Byte
			}
	
			if(rbyte <= maxByte){
			    rlen = i+1;                                          //return할 문자열 갯수
			}
		}

		if(rbyte > maxByte){
			
		    alert("글 내용은 3000 	byte 를 넘을 수 없습니다.");
		    str2 = str.substr(0,rlen);                                  //문자열 자르기
		    obj.value = str2;
		    fnChkByte(obj, maxByte);
		    document.getElementById("txtAreaByte").value = rbyte;
		}else{
			document.getElementById("txtAreaByte").value = rbyte;
		}
	} // end of fnChkByte --------------------------------------------------------------


</script>


<title>질문과 대답</title>
<div id="cs_Container" >
	<div style="text-align: center; padding-top: 50px; margin-bottom: 50px;"><h1 style="font-weight: bold;">고객센터</h1></div>
	
	<c:if test="${ not empty pnum  }">
		<div style="overflow: hidden; display: flex; width: 1200px; margin: 0 auto; margin-bottom: 2%;">
			<div style="display: inline-block; width: 15%; margin: 0 5%;"><img style="width: 100%;" src="../images/${thumb}"></div>
			<div style="display: inline-block; width: 80%; background: #fafbfb; padding:0 5%;">
				<div style="padding: 10px 0; font-size: 14px; font-weight: bold; font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;">${title}</div>			    
				<div style="font-size: 12px; font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;"><span>판매가 : </span>${price}<span>원</span></div>
				<div style="margin-top: 7%; border: 1px solid #c1c1c1; background: #fff; color: #837d81 !important; float: right; padding: 1%; cursor: pointer;" onclick="goDetail()">상품 상세보기</div>					     
			</div>	
		</div>
	</c:if>
	
	
	<div class="writeboard">
		<form class="qnaWriteForm" name="qnawritefrm" id="qnawritefrm" method="POST" >
			<table class="board_row">	<%-- cellspacing="0" cellpadding="0"  --%>
			
				<tbody>
					<tr>
						<th scope="row">
							<label>제목 </label>
						</th>
						<td>
							<input name="title" id='title' class="text_area" type='text' style="width: 400px;" maxlength="30" />
						</td>
					</tr>
					<tr>
						<th scope="row">
							<label>작성자</label>
						</th>
						<td>
							<input name="writer" id='writer' type='text'  class="text_area" maxlength="15" />
						</td>
					</tr>
					<tr>
						<th scope="row">
							<label>비밀번호</label>
						</th>
						<td>
							<input name="password" id='password' type='password' class="text_area" maxlength="4"  />
						</td>
					</tr>
					
					
				</tbody>
			</table>
			
			<textarea name="contents" id="contents" cols="80" rows="30" style="width: 100%; margin: 20px auto; padding:10px 20px;" 
				onKeyUp="javascript:fnChkByte(this,'3000')">
				
주문 관련 문의 시 주문번호, 성함, 전화번호를 남겨주시면, 더욱 빠른 답변을 받으실 수 있습니다. (상품 품질 관련 문의는 제조일자를 남겨주세요.)

주문번호 :

주문자명 :

주문자 연락처 :

제조일자 (품질 문의 시 작성) :

문의 내용 :
</textarea>		
			
			<input type="hidden" id="txtAreaByte" />
			<input type="hidden" id="fk_product_code" name="fk_product_code" />		
			<div style="width: 100%; margin: 20px 0 60px 0; text-align: center;">
				<button type="button" id="backBtn" class="box_btn btn_white">취소</button>
				<button type="button" id="submitBtn" class="box_btn btn_black">확인</button>
			</div>
		</form><%-- writeform 끝  --%>
	</div>
	
</div><%-- cs_Container 큰 틀 끝 --%>
	
	
	
<jsp:include page="/WEB-INF/footer_dog.jsp" />





