<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/header_dog.jsp" />

<title>질문과 대답-${ qnaMap.title }</title>

	<div class="col-xs-9 col-md-2"></div>
	<div id="qnaOne_body" class="col-xs-9 col-md-8">
		
		<div id="qnaOne_div1">Home > 상품 질문과 답변</div>
		<div id="qnaOne_div2">고객센터</div>
		
		<c:if test="${ qnaMap.fk_product_code != 0 }">
			<div style="overflow: hidden; display: flex; width: 100%; margin: 0 auto; margin-bottom: 2%;">
				<div style="display: inline-block; width: 15%; margin: 0 5%;"><img style="width: 100%;" src="../images/${thumb}"></div>
				<div style="display: inline-block; width: 80%; background: #fafbfb; padding:0 5%;">
					<div style="padding: 10px 0; font-size: 14px; font-weight: bold; font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;">${title}</div>			    
					<div style="font-size: 12px; font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;"><span>판매가 : </span>${price}<span>원</span></div>
					<div style="margin-top: 7%; border: 1px solid #c1c1c1; background: #fff; color: #837d81 !important; float: right; padding: 1%; cursor: pointer;" onclick="goDetail()">상품 상세보기</div>					     
				</div>	
			</div>
		</c:if>
		
		
		<div>
			<table style="width:100%;">
				<thead>
					<tr id="qnaOne_tb1_header">
						<td style="width:75%; text-align: center;">제목</td>
						<td style="width:15%; text-align: center;">작성자</td>
						<td style="width:15%; text-align: center;">작성일</td>
					</tr>
				</thead>
				
				<tbody>
					<tr id="qnaOne_tb1_2nd">
						<td style="padding-left: 20px;">
							${ qnaMap.title }
						</td>
						<td style="text-align: center;">
							${ qnaMap.writer }
						</td>
						<td style="text-align: center;">
							${ qnaMap.writeday }
						</td>
					</tr>
					
					<c:if test="${ not empty qnaMap.revisedate }">
						<tr>
							<td colspan="3" style="text-align:right;">
								<span style="font-size:9pt;color:red;">${ qnaMap.revisedate } 수정됨</span>
							</td>
						</tr>
					</c:if>
					
					<tr id="qnaOne_tb1_3rd">
						<td colspan="3" style="padding: 30px;">
							${ qnaMap.content }
						</td>
						
					</tr>
					
					<tr id="qnaOne_tb1_4th">
						<td>
							<button id="qnaReviseBtn" type="button">수정</button>
							<button id="qnaDeleteBtn" type="button">삭제</button>
						</td>
					</tr>
				</tbody>
			
			</table>
		</div>
		
		
		
		<div style="text-align: center;">
			
			<div id="replyDiv" style="padding: 30px;margin:20px 0;">
				
			</div>
			
			<c:if test="${ sessionScope.loginuser.user_id == 'admin' }">
				
				<form name="insertReplyForm">
					<input name="fk_board_num" id="fk_board_num" type="hidden" />
					<table>
						<tr>
							<td style="width: 10%;">내용</td>
							<td style="width: 83%;">
								<textarea name="content" rows="4" maxlength="300" style="width:95%;"></textarea>
							</td>
							<td style="width: 10%;">
								<button id="insertReplyBtn" type="button" style="border:solid 1px black;background-color: white;">등록하기</button>
							</td>
						</tr>
					</table>
				</form>
				
			</c:if>
		
		</div>
		
		<div style="padding:40px 0; text-align: center;">
			<button id="returnBtn" type="button" >목록으로 돌아가기</button>
		</div>
		
		
	</div>

<%-- 글 번호와 수정,삭제 여부 넘겨주는 hidden 폼 --%>
<form name="revDelForm" id="revDelForm">
	<input type="hidden" name="board_num">
	<input type="hidden" name="revDel">
</form>



<jsp:include page="/WEB-INF/footer_dog.jsp" /> 

<style>
	
	#qnaOne_div1 {
		color: gray;
		text-align: right;
		padding: 30px 30px 10px 0;
	}
	
	#qnaOne_div2 {
		text-align: center;
		font-family: 'Nanum Gothic', sans-serif;
		font-size: 32pt;
		font-weight: bold;
		padding: 20px 0 40px 0;
	}
	
	#qnaOne_tb1_header {
		border-top: solid 2px black;
		border-bottom: solid 1px #bfbfbf;
	}
	
	#qnaOne_tb1_header td {
		font-size: 12pt;
		font-weight: bold;
		padding: 10px 0 ;
	}
	
	#qnaOne_tb1_2nd {
		border-bottom: solid 1px #bfbfbf;
	}
	
	#qnaOne_tb1_2nd td {
		padding: 10px 0 ;
	}
	
	#qnaOne_tb1_3rd {
		border-bottom: solid 1px #bfbfbf;
	}
	
	#qnaOne_tb1_4th td {
		padding: 10px;
	}
	
	#qnaOne_tb1_4th button {
		background-color: white;
		border: solid 1px black;
		padding: 5px 40px;
		margin-right:10px;
		transition: 0.7s;
	}
	
	#qnaReviseBtn:hover, #qnaDeleteBtn:hover {
		background-color: black;
		color: white;
	}
	
	#returnBtn{
		transition: 0.7s;
		border:solid 1px black;
		background-color: white; 
		font-size:12pt; 
		font-weight: bold; 
		padding: 5px 30px;
	}
	
	#returnBtn:hover{
		background-color: black;
		color:white;
	}
	
	
</style>

<script>

	$(document).ready(function(){
		
		var board_num = "${ qnaMap.board_num }";		
		
		$("#fk_board_num").val(board_num);
		$("#revDelForm input[name=board_num]").val(board_num);
		
		getReply(board_num);
		
		// 수정하기
		$("#qnaReviseBtn").click(function(){
			
			$("#revDelForm input[name=revDel]").val("revise");
			var frm = document.revDelForm;
			frm.method= "GET";
			frm.action="<%= request.getContextPath() %>/customer/customerQnArevDel.dog";
			frm.submit();
		});	
		
		
		// 삭제하기
		$("#qnaDeleteBtn").click(function(){
			
			$("#revDelForm input[name=revDel]").val("delete");
			var frm = document.revDelForm;
			frm.method= "GET";
			frm.action="<%= request.getContextPath() %>/customer/customerQnArevDel.dog";
			frm.submit();
		});	
			
		
		
		// 답글 달기 
		$("#insertReplyBtn").click(function(){
			
			var content = $("textarea[name=content]").val();
			
			if( content == null || content.trim() =="" ){
				
				alert("댓글을 입력해주세요.");
				$("textarea[name=content]").focus();
				
				return false;
			}
			
			var formData = $("form[name=insertReplyForm]").serialize();
			
			$.ajax({
				
				url:"<%= request.getContextPath()%>/customer/customerQnAreply.dog",
				type: "POST",
				data : formData ,
				dataType: "json",
				success: function(json) {
					
					alert(json.message);
					$("textarea[name=content]").val("");
					getReply(board_num);
					
				},
				error: function(request, status, error){
					alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
				}
			});
			
		});
		
		
		// 목록으로 돌아가기
		$("#returnBtn").click(function(){
			
			var goBackURL = "${ sessionScope.goBackURL }";
			if( goBackURL != ""){
				location.href="<%= request.getContextPath() %>/"+goBackURL;
			}
			else{
				location.href="javascript:history.back()";
			}
			
		});
		
		
	}); // end of document.ready ---------------------------------------
	
	// 답글 가져오기 
	function getReply(board_num){
		
		$.ajax({
			
			url:"<%= request.getContextPath()%>/customer/customerQnAgetRep.dog",
			type: "POST",
			data : { "board_num":board_num } ,
			dataType: "json",
			success: function(json){
				
				if(json.length != 0) {
					
					
					
					var html = "<table style='width:100%;'><thead>";
					html += "<tr style='border-bottom:solid 2px black;'>";
					html += "<td colspan='2' style='font-weight:bold; text-align:left;padding:10px 0;'>관리자의 답변</td><td></td></tr></thead>";
					html += "<tbody>";
					
					$.each(json, function(index, item){
						html += "<tr style='border-bottom:solid 1px #bfbfbf;'>";
						html += "<td>▷</td>";
						html += "<td style='padding:15px 0 15px 20px;text-align:left;'><span style='font-size: 8pt;color: #8c8c8c;'>"+item.writeday+"</span><br>";
						html += "<span style='font-family: 'Nanum Gothic', sans-serif;'>"+item.content;
						html += "</span></td>";
						html += "<td><c:if test="${ sessionScope.loginuser.user_id == 'admin' }">";
						html += "<button type='button' id='deleteReply' onclick='goDeleteReply("+item.reply_seq+")' style='background-color:white;border:solid 1px black; font-size:8pt;'>삭제하기</button>";
						html += "</c:if></td>";
						html += "</tr>";
					});
					
					html+="</tbody></table>";
					
					
					$("#replyDiv").html(html);
					
				}
				
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		});
		
	} // end getReply ----------------------------------------------
	
	// 답글 삭제하기 
	function goDeleteReply(reply_seq){
		
		$.ajax({
			
			url: "<%= request.getContextPath() %>/customer/customerQnAdelRep.dog",
			type: "POST",
			data : { "reply_seq":reply_seq, "board_num":$("#fk_board_num").val() } ,
			dataType: "json",
			success: function(json){
				
				alert(json.message);
				
				var board_num = $("#fk_board_num").val();
				$("#replyDiv").html("");
				getReply(board_num);
				
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
			
		});
		
	} // end of goDeleteReply -----------------------------------------
	
</script>