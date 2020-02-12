<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 배송지 목록</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<style type="text/css">

@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);


	html, body {
		font-family: Nanum Gothic, "나눔고딕", sans-serif;
	}

	#container {
		margin:30px;
		padding:5px;
	}
	
	#titleBox {
		border-bottom: #2868de 2px solid;
		
	}
	
	#title{
		padding: 8px;
		border : solid 1px #ccc;
		width: 120px;
		color: #666666;
		text-align: center;
		vertical-align: middle;
		font-size: 9pt;
	}
	
	#ListBox {
	/*	border-bottom: #eaeaea 1px solid; ////////////////////////////////////*/
		border-top: #eaeaea 1px solid;
		overflow: hidden;
		padding:5px;
		word-wrap:break-word; word-break:break-all;
	}
	
	.address > li {
		list-style: none;
	}
	
	.check {
		float:left;
	   	padding:10px;
	   	margin:10px;
   	}
	
	
	.text {
		float: left;	
		display:inline-block;
		width: 60%;
	}
	
	#btnChooseDiv {
		float: right;
		vertical-align: middle;
		
	}
	
	#btnChoose {
		vertical-align: middle;
		position: relative;
		top:30px;
		left:70px;
		width:50px;
	}
	
	#forEachlist > li {
		position:relative;
		left:1px;
		margin:5px;
	}
	
	.name {
		font-weight: bold;
		position: relative;
		top:3px;
	}
	
	
	.btn-area {
		width: 100%;
		text-align: center;
		margin: 18px auto;
		display: inline-block;
	}
	
	#btnDelete {
		background-color: #555555;
		color:white;
		cursor: pointer;
		width:110px;
		height: 40px;
		position: relative;
		text-align: center;
		margin: 0 auto;
		
	}
	
	#forEachlist > input {
		border:none;
	}
	
	/* -------------------------------------------------------------*/
	.check-type {
		padding-left: 0;
		border-bottom: solid 1px #eaeaea;
	}
	
	.input_tell {
		width: 35px;
		text-align: center;
	}
	
	.pageBar {
		text-align: center;
	}
	
	.applyPost {
		margin: 0 auto;
		
	}
	
	
	
	
</style>

<script type="text/javascript">

function goPostEdit(addr1, addr2, postcode){
	$("input:radio[name=checkDel]").each(function(){ 
		if($(this).prop("checked")){
			var count = $(this).attr('id');
			var postFrm = "postFrm"+count;
			
			var addr1 = $(document).find("#addr1"+count).val();
			var addr2 = $(document).find("#addr2"+count).val();
			var postcode = $(document).find("#postcode"+count).val();
			var newName = $(document).find("#newName"+count).val();
			var newPhone11 = $(document).find("#newPhone11"+count).val();
			var newPhone12 = $(document).find("#newPhone12"+count).val();
			var newPhone13 = $(document).find("#newPhone13"+count).val();
			var newPhone21 = $(document).find("#newPhone21"+count).val();
			var newPhone22 = $(document).find("#newPhone22"+count).val();
			var newPhone23 = $(document).find("#newPhone23"+count).val();
			
			
			$(opener.document).find("#addr1").val(addr1);
		    $(opener.document).find("#addr2").val(addr2);
		    $(opener.document).find("#postcode").val(postcode);
		    $(opener.document).find("#sender").val(newName);
		    $(opener.document).find("#tel01").val(newPhone11);
		    $(opener.document).find("#tel02").val(newPhone12);
		    $(opener.document).find("#tel03").val(newPhone13);
		    $(opener.document).find("#tel04").val(newPhone21);
		    $(opener.document).find("#tel05").val(newPhone22);
		    $(opener.document).find("#tel06").val(newPhone23);
			window.opener.name = "parentPage"; // 부모창의 이름 설정
		         
			self.close();
		}
	});
}
	
</script>


</head>
<body>
<div id="container">
		<div id="titleBox">
		<div id="title">최근 배송지</div>
		</div>

		<div id="ListBox">
			
			<c:if test="${requestScope.postList == null}">
				<div style="text-align: center; width: 100%; padding: 30px;">최근
					배송지가 없습니다.</div>
			</c:if>
			
			<div id="forEachlist">
			
					<c:if test="${requestScope.postList != null}">
						<c:forEach var="post" items="${requestScope.postList}" varStatus="status">
						<form name="postFrm" id="postFrm${status.count}">
							<ul class="address check-type">
							
								<li id="postLi" style="overflow: hidden;">	
										
										<div class="check">
										<input type="radio" name="checkDel" id="${status.count}" />
										</div>
										
										<div class="text">
										<p class="name"><input type="text" value="${post.newName}" name="newName"/></p>
										<p class="ad"><input type="text" value="${post.newAddr1}" id="newAddr1" name="newAddr1"/>&nbsp;&nbsp;<input type="text" value="${post.newAddr2}" id="newAddr2" name="newAddr2"/></p>
									 	<p class="tell" style="font-size:10px;"><input type="text" value="${post.newPhone11}" class="input_tell" name="newPhone11"/>
																				-<input type="text" value="${post.newPhone12}" class="input_tell" name="newPhone12"/>
																				-<input type="text" value="${post.newPhone13}" class="input_tell" name="newPhone13"/>&nbsp;/&nbsp;
																				<input type="text" value="${post.newPhone21}" class="input_tell" name="newPhone21"/>
																				-<input type="text" value="${post.newPhone22}" class="input_tell" name="newPhone22"/>
																				-<input type="text" value="${post.newPhone23}" class="input_tell" name="newPhone23"/>
																				
																			
																				<input id="addr1${status.count}" type="hidden" value="${post.newAddr1}" />
																				<input id="addr2${status.count}" type="hidden" value="${post.newAddr2}" />
																				<input id="postcode${status.count}" type="hidden" value="${post.newPostcode}" />
																				<input id="newName${status.count}" type="hidden" value="${post.newName}" />
																				<input id="newPhone11${status.count}" type="hidden" value="${post.newPhone11}" />
																				<input id="newPhone12${status.count}" type="hidden" value="${post.newPhone12}" />
																				<input id="newPhone13${status.count}" type="hidden" value="${post.newPhone13}" />
																				<input id="newPhone21${status.count}" type="hidden" value="${post.newPhone21}" />
																				<input id="newPhone22${status.count}" type="hidden" value="${post.newPhone22}" />
																				<input id="newPhone23${status.count}" type="hidden" value="${post.newPhone23}" />
																			
																				</p>
										<input type="hidden" value="${post.newPostcode}" name="newPostcode"/>
										</div>	
										
										<div class="btnChooseDiv" class="btn-select">
										<button type="button" class="btn btn-primary" id="btnChoose" onclick="">삭제</button>
										</div>	
								</li>
							</ul>
							</form>
						</c:forEach>
					</c:if>
			
			</div>
			
		</div>
		<!-- ListBox -->

		<div class="pageBar">
		${requestScope.pageBar}
		</div>
	
	<div class="btn-area adress-btn">
			<%-- 바뀐부분 시작 --%>
			<button type="button" class="btn applyPost" id="btnDelete" onclick="goPostEdit()">선택</button>
			<%-- 바뀐부분 끝 --%>
	</div> <!-- adress-btn -->
</div> <!--container  -->

</body>
</html>