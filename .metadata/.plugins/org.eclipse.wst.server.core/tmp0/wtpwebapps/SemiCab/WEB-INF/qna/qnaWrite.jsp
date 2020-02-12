<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../header.jsp"></jsp:include>

<% String ctxPath = request.getContextPath(); %>
<script>
$(document).ready(function(){
	$(".error").hide();

	
	
	// 글 등록시 비밀번호 4자리
	$("#password").keyup(function(){
		var password = $(this).val();
		
		var regExp_password = /^\d{4}$/g;
		// 숫자 4자리만 들어오도록 검사해주는 정규표현식
		
		var bool = false;
			
			bool = regExp_password.test(password);
			console.log(bool);
		
		if(!bool) {
			$(this).parent().find(".error").show();
		}
		else {
			$(this).parent().find(".error").hide();
		}			
	});
	
	
	// 글등록, 비밀글 radio
	$("#secure0").click(function(){
		var bool = $("#secure1").is(":checked");
		
		if(!bool) {
			alert("비밀글만 등록 가능합니다.");
			$("#secure0").prop("checked",false);
			$("#secure1").prop("checked",true);
		}
	});
	
	
	
	// 등록시 글 보내기
	$("#qclick").click(function(){
		var textarea = $("textarea").val();
		
		if(textarea == "") {
			alert("글 내용을 작성해 주세요");
		}
		
		else {
			var password = $("#password").val();
			
			if(password == "") {
				alert("비밀번호를 엽력해주세요");
			}
			 
			else if(password.length < 4) {
				alert(" 비밀번호는 4자리 이어야 합니다.");
			}	
			
		
			
		}
		
	});
	
	
	
});



</script>

<style>
#wrap {
	width: 100%;
	margin: 0 auto;
	padding: 150px 0 50px;
	background: #f4f4f4;
}

#fixoContainer {
	width: 1400px;
	margin: 0 auto;
	padding: 40px;
	box-sizing: border-box;
	background: #fff;
}

/* ------ */
#fixoWrap .xans-board-title .title p {
	display: inline-block;
	margin: 0 0 0 6px;
	padding: 0 0 0 10px;
	background:
		url(http://img.echosting.cafe24.com/skin/base_ko_KR/common/ico_title.gif)
		no-repeat 0 12px;
	*display: inline;
	*zoom: 1;
	font-size: 11px;
	color: #949494;
	line-height: 34px;
	font-weight: normal;
	height: 30px;
	vertical-align: top;
}

li {
	list-style: none;
}

.path li {
	float: left;
	padding: 0 0 0 12px;
	margin: 0 0 0 8px;
	color: #757575;
	background:
		url(https://img.echosting.cafe24.com/skin/base/layout/ico_path.gif)
		no-repeat 0 10px;
}

.path ol {
	float: right;
}

.title h2 {
	display: inline-block;
	padding: 0;
	color: #323232;
	font-size: 20px;
	*display: inline;
	*zoom: 1;
	background: none;
	line-height: 30px;
	font-weight: 700;
	vertical-align: top;
	line-height: 34px;
}

#fixoWrap .xans-board-title .title {
	margin: 0 0 20px;
	padding: 0 0 15px;
	border-bottom: 1px solid #e8e8e8;
	min-height: auto;
}

/* 글쓰는곳 @ @ @ @ @ @ @ @ @ @ */
#fixoWrap .ec-base-table table {
	font-size: 12px;
	table-layout: fixed;
}

.ec-base-table table {
	position: relative;
	margin: 10px 0 0;
	border: 1px solid #d7d5d5;
	border-top: 0;
	color: #fff;
	line-height: 1.5;
}

table {
	width: 100%;
	border: 0;
	border-spacing: 0;
	border-collapse: collapse;
}

.ec-base-table tbody th {
	padding: 11px 0 10px 18px;
	border: 1px solid #dfdfdf;
	border-bottom-width: 0;
	color: #353535;
	text-align: left;
	font-weight: normal;
	background-color: #fbfafa;
}

.ec-base-table.typeWrite td {
	padding: 8px 10px 7px;
}

#content_CONTAINER td, #bi_inquire_content_CONTAINER td {
	width: auto !important;
	padding: 0;
}

.ec-base-table td {
	padding: 11px 10px 10px;
	border-top: 1px solid #dfdfdf;
	color: #353535;
	vertical-align: middle;
	word-break: break-all;
	word-wrap: break-word;
}
/* 목록 등록 취소 버튼 @ @ @ @ @ @ @ @ @ @ @ @ @ @ */
.gLeft {
	float: left;
	text-align: left;
}

.gRight {
	float: right;
	text-align: right;
}

.ec-base-button {
	margin: 10px 0 40px;
}

/* content 작성하는곳  */
#write_board {
	width: 1290px;
	height: 370px;
}

#subject{
	width: 390px;
}




</style>




<%--body 시작 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ --%>

<div id="fixoWrap">
	<div id="wrap">
		<div id="fixoContainer" class="clear">
			<div id="fixoContent">
				<div
					class="xans-element- xans-board xans-board-writepackage-4 xans-board-writepackage xans-board-4 ">
					<div
						class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
						<div class="path">
							<ol>
								<li><a href="/">홈</a></li>

								<li title="현재 위치"><strong>Q&amp;A</strong></li>
							</ol>
						</div>

						<div class="title">
							<h2>
								<font color="333333">Q&amp;A</font>
							</h2>
							<p>상품 Q&amp;A입니다.</p>
						</div>
					</div>
					<form id="boardWriteForm" name="boardWriteForm"
						action="/exec/front/Board/write/6" method="post" target="_self"
						enctype="multipart/form-data">
						<div
							class="xans-element- xans-board xans-board-write-4 xans-board-write xans-board-4">
							<!-- 상품정보선택 -->
							<div class="ec-base-table typeWrite ">
								<table border="1" summary="">
									<colgroup>
										<col style="width: 130px;">
										<col style="width: auto;">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">제목</th>
											<td><select id="subject" name="subject" fw-filter=""
												fw-label="" fw-msg="">
													<option value="Joyment에 문의 드립니다.">Joyment에 문의
														드립니다.</option>
											</select></td>
										</tr>

										<td colspan="2" class="clear">

											<%-- 작업도구 관리 나오는 곳 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@--%>
											<style type="text/css">
@import "https://editor.cafe24.com/css/style.css?ver=r3.4.0.20191127.1";

@import
	"https://editor.cafe24.com/css/styleie8.css?ver=r3.4.0.20191127.1";
</style>

											<div id="content_CONTAINER" class="nneditor-container">
												<table class="seLayout">
													<tbody>
														<tr>
															<td id="content_toolbar_container"
																class="nneditor-toolbar-container">
																<div id="content_TOOLBAR" class="SE_TOOLBAR">
																	<ul class="se_toolbar_left2">
																		<li>
																			<div class="divide"></div>
																		</li>
																		<li class="mode">
																			<table class="nneditor-table">
																				<tbody>
																					<tr>
																						<td>
																							<div style="cursor: pointer" rel="viewSrc"
																								class="img_button mode"></div>
																						</td>

																						<td>
																							<div style="cursor: pointer" rel="viewSrc">소스</div>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</li>

																		<li class="fonttype">
																			<table class="nneditor-table">
																				<tbody>
																					<tr>
																						<td>
																							<button type="button" class="nneditor-fonttype"
																								title="폰트" rel="fonttypePanel"
																								id="fonttypePanel">글꼴</button>
																						</td>

																						<td><a href="#" rel="fonttypePanel"
																							class="fieldButton"></a></td>
																					</tr>
																				</tbody>
																			</table>
																		</li>

																		<li class="fontsize">
																			<table class="nneditor-table">
																				<tbody>
																					<tr>
																						<td>
																							<button type="button" class="nneditor-fontsize"
																								title="글자 크기" rel="fontsizePanel"
																								id="fontsizePanel">크기</button>
																						</td>

																						<td><a href="#" rel="fontsizePanel"
																							class="fieldButton"></a></td>
																					</tr>
																				</tbody>
																			</table>
																		</li>
																	</ul>

																	<ul class="se_toolbar_left2">
																		<li>
																			<div class="divide"></div>
																		</li>

																		<li class="undo">
																			<button id="content_BUTTON_undo" type="button"
																				title="취소" rel="undo" rel2="m" class=""></button>
																		</li>

																		<li class="redo">
																			<button id="content_BUTTON_redo" type="button"
																				title="재실행" rel="redo" rel2="m" class=""></button>
																		</li>
																	</ul>

																	<ul class="se_toolbar_left2">
																		<li>
																			<div class="divide"></div>
																		</li>

																		<li class="fontcolor">
																			<table class="nneditor-table">
																				<tbody>
																					<tr>
																						<td><span class="simpleIcon forecolor"
																							title="글자 색상" rel="evtPickColorDirect"></span>
																							<div id="content_content_forecolor_preview"
																								class="content-forecolor-preview"></div></td>

																						<td><a href="#" class="nneditor-da"
																							rel="fontcolorPanel"></a></td>
																					</tr>
																				</tbody>
																			</table>
																		</li>

																		<li class="fontbgcolor">
																			<table class="nneditor-table">
																				<tbody>
																					<tr>
																						<td><span class="simpleIcon bgcolor"
																							title="배경 색상" rel="evtBgColorDirect"></span>
																							<div id="content_content_bgcolor_preview"
																								class="content-bgcolor-preview"></div></td>

																						<td><a href="#" class="nneditor-da"
																							rel="fontbgcolorPanel"></a></td>
																					</tr>
																				</tbody>
																			</table>
																		</li>
																	</ul>

																	<ul class="se_toolbar_left2">
																		<li>
																			<div class="divide"></div>
																		</li>

																		<li class="bold">
																			<button id="content_BUTTON_bold" type="button"
																				title="진하게" rel="basic" argv1="bold" rel2="m"
																				class=""></button>
																		</li>

																		<li class="underline">
																			<button id="content_BUTTON_underline" type="button"
																				title="밑줄" rel="basic" argv1="underline" rel2="m"
																				class=""></button>
																		</li>

																		<li class="italic">
																			<button id="content_BUTTON_italic" type="button"
																				title="이텔릭" rel="basic" argv1="italic" rel2="m"
																				class=""></button>
																		</li>

																		<li class="strikethrough">
																			<button id="content_BUTTON_strikethrough"
																				type="button" title="" rel="basic"
																				argv1="strikethrough" rel2="m" class=""></button>
																		</li>

																		<li class="superscript">
																			<button id="content_BUTTON_superscript" type="button"
																				title="위 첨자" rel="basic" argv1="superscript"
																				rel2="m" class=""></button>
																		</li>

																		<li class="subscript">
																			<button id="content_BUTTON_subscript" type="button"
																				title="아래 첨자" rel="basic" argv1="subscript" rel2="m"
																				class=""></button>
																		</li>

																	</ul>

																	<ul class="se_toolbar_left2">
																		<li>
																			<div class="divide"></div>
																		</li>

																		<li class="justifyleft">
																			<button id="content_BUTTON_justifyleft" type="button"
																				title="왼쪽 정렬" rel="basic" argv1="justifyleft"
																				rel2="m" class=""></button>
																		</li>

																		<li class="justifycenter">
																			<button id="content_BUTTON_justifycenter"
																				type="button" title="가운데 정렬" rel="basic"
																				argv1="justifycenter" rel2="m" class=""></button>
																		</li>

																		<li class="justifyright">
																			<button id="content_BUTTON_justifyright"
																				type="button" title="오른쪽 정렬" rel="basic"
																				argv1="justifyright" rel2="m" class=""></button>
																		</li>

																		<li class="justifyfull">
																			<button id="content_BUTTON_justifyfull" type="button"
																				title="양쪽 맞춤" rel="basic" argv1="justifyfull"
																				rel2="m" class=""></button>
																		</li>
																	</ul>

																	<ul class="se_toolbar_left2">
																		<li>
																			<div class="divide"></div>
																		</li>

																		<li class="insertorderedlist">
																			<button id="content_BUTTON_insertorderedlist"
																				type="button" title="순서있는 목록" rel="basic"
																				argv1="insertorderedlist" rel2="m" class=""></button>
																		</li>

																		<li class="insertunorderedlist">
																			<button id="content_BUTTON_insertunorderedlist"
																				type="button" title="순서없는 목록" rel="basic"
																				argv1="insertunorderedlist" rel2="m" class=""></button>
																		</li>

																		<li class="outdent">
																			<button id="content_BUTTON_outdent" type="button"
																				title="내어쓰기" rel="default" argv1="outdent" rel2="m"
																				class=""></button>
																		</li>

																		<li class="indent">
																			<button id="content_BUTTON_indent" type="button"
																				title="들여쓰기" rel="default" argv1="indent" rel2="m"
																				class=" "></button>
																		</li>

																		<li class="inserthorizontalrule">
																			<button id="content_BUTTON_inserthorizontalrule"
																				type="button" title="수평선 삽입" rel="basic"
																				argv1="inserthorizontalrule" rel2="m" class="  "></button>
																		</li>
																	</ul>

																	<ul class="se_toolbar_left2">
																		<li>
																			<div class="divide"></div>
																		</li>

																		<li class="link">
																			<button id="content_BUTTON_link" type="button"
																				title="링크" rel="default" argv1="link" rel2="m"
																				class=""></button>
																		</li>

																		<li class="unlink">
																			<button id="content_BUTTON_unlink" type="button"
																				title="링크 삭제" rel2="m" style="opacity: 0.3;"
																				class=" "></button>
																		</li>
																	</ul>

																	<ul class="se_toolbar_left2">
																		<li>
																			<div class="divide"></div>
																		</li>

																		<li class="table">
																			<button id="content_BUTTON_table" type="button"
																				title="표" rel="table" rel2="m" class=""></button>
																		</li>
																	</ul>
																</div>
															</td>
														</tr>

														<tr>
															<%--@	@	@	@	@ 글	  	작		성	 	하	는	곳  @		@	@	@	@ --%>
															<td id="content_iframe_container"
																class="nneditor-iframe-container" align="left">
																<textarea
																	id="qContent" name="content"
																	style=" width: 1293px; height: 400px; border: 0px none; clear: both; font-size: 9pt; font-family: gulim; margin: 0px; padding: 0px; resize: none;"></textarea>
															</td>
														</tr>
																
														<tr>
															<td>
																<button type="button" id="content_seResize"
																	class="seResize2" onfocus="this.blur()"
																	tabindex="100000"></button>
															</td>
														</tr>
													</tbody>
												</table>
											</div></td>
										<tr class="ucc">
											<th scope="row">UCC URL</th>
											<td><input id="ucc" name="ucc" size="35" fw-filter=""
												fw-label="UCC URL" value="" type="text">&nbsp;&nbsp;&nbsp;<label
												class="size" for="ucc_width">넓이</label><input id="ucc_width"
												name="ucc_width" size="2" value="400" type="text">&nbsp;&nbsp;&nbsp;<label
												class="size" for="ucc_height">높이</label><input
												id="ucc_height" name="ucc_height" size="2" value="300"
												type="text"></td>
										</tr>
									</tbody>

									<tbody>
										<tr class="">
											<th scope="row">비밀번호</th>
											<td>
												<input id="password" name="password"
												fw-filter="isFill" fw-label="비밀번호" fw-msg="" value=""
												maxlength="4" type="password"/>
												<span class="error">숫자 4자리만 입력 가능합니다.</span>	
											</td>
										</tr>
										<tr class="">
											<th scope="row">비밀글설정</th>
											<td>
												<input id="secure0" name="secure" fw-filter="isFill"
												fw-label="비밀글설정" fw-msg="" value="" type="radio"
												checked="checked">
												<label for="secure0">공개글</label>
												
												<input id="secure1" name="secure" fw-filter="isFill"
												fw-label="비밀글설정" fw-msg="" value="" type="radio" checked>
												<label for="secure1">비밀글</label>
												
											</td>
												
										</tr>

									</tbody>
								</table>
							</div>
							<div class="ec-base-button ">
								<span class="gLeft"> <a href="/SemiCab/qna.ej"><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_list.gif"
										alt="목록"></a>
								</span> 
								<span class="gRight">
								<%-- 등록 버튼 눌렀을때 --%> 
								<span style="cursor: pointer;" id="qclick">
									<img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_register.gif" alt="등록">
								</span>
										
										<%-- 취소 버튼 눌렀을때 --%> 
										<a href="/SemiCab/qna.ej"><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_cancel.gif"
										alt="취소"></a>
								</span>
							</div>
						</div>
					</form>
				</div>

			</div>
		</div>

	</div>



</div>




<%--body 끝 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ --%>


<jsp:include page="../footer.jsp"></jsp:include>