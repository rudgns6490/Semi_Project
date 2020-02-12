<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/header_dog.jsp" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% String ctxPath = request.getContextPath(); %>


<style type="text/css">
	
	#cs_Container {
		margin: 0 auto;
		width: 90%;
	}
		
	.how ul {
		list-style: none;
		padding-left: 0px;
	}
	
	.when {
		float: left;
		margin: 20px 30px 20px 30px;
		padding-right: 0;
		width: 260px;
	    height: 180px;
	    padding: 30px 38px;
	    line-height: 20px;
	    border: 1px solid #eaeaea;
	 }	
	
	.how {
		float: left;
		margin: 20px 10px 20px 0px;
		width: 850px;
	    height: 180px;
	    padding: 5px 18px 20px 40px;
	    border: 1px solid #eaeaea;
	    
	 }
	 
	 .how > ul > li {
	 	display: inline-block;
	 }
	 
	 .tel {
	 	font-size: 21pt;
	 	font-weight: bold;
	 	margin-top: 0;
	 	color: red;
	 }
	 
	 .time {
	 	font-size: 9pt;
	 }
	 
	 .fax {
	 	font-size: 11pt;
	 	font-weight:bold;
	 }
	 
	 .hint {
	 	font-size: 14pt;
	 	color: gray;
	 	font-weight: bold;
	 	margin-top: 20px;
	 }
	 
	 .step {
	 	font-size: 20px;
	 	font-weight: bold;
	 	color: gray;
	 }
	 
	 .hintList {
	 	margin: 5px 5px;
	 	width: 30%;
	 }
	 
	.hintList dt {
	 	margin-top: 5px;
	 	font-size: 12pt;
	 	font-weight: bold;
	 }
	 
	 .hintList dd {
	 	font-size: 9pt;
	 }
	 
	 .gray_font {
		color:  #999999;
	}
	 
		 	
	/* tab */
	.tab_menu li {
		width: 33%;
	 	list-style: none;
	    float: left;
	    border-bottom: 2px solid #dcdcdc;
	    color: #000;
	    font-size: 20px;
	    font-weight: bold;
	    text-align: center;
	    cursor: pointer;
	    height: 55px;
	    line-height: 55px;
	}
	
	.tab_menu li a {
	    display: block;
	    color: inherit;
	    font: inherit;
	    text-decoration: none;
	    margin: 0 auto;
	}
	
	.tab_menu li.over {
	    border-bottom: 2px solid #9d6849;
	    color: #9d6849;
	}
	/* /tab */
	
	
	.btnSearch {
		width: 80px;
	    height: 40px;
	    border: 0;
	    background: #999;
	    color: #fff;
	    font-size: 13px;
	    font-weight: bold;
	    display: inline-block;
	    text-align: center;
	    line-height: 40px;
	    cursor: pointer;
    }
	
	.board_contents {
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
	
	.board_contents > table td {
		/* padding: 17px 0 16px; */
	    border-bottom: 1px solid #ececec;
	    color: #626262;
	    font-size: 14px;
	    text-align: center;
	    vertical-align: middle;
	}
	
		
	.board_search {
	    margin-top: 100px;
	    padding: 20px 0;
	    border: 1px solid #eaeaea;
	    background: #f4f4f4;
	    text-align: center;
	}
	
	.board_search select {
	    width: 150px;
	    height: 40px;
	    margin: 0 7px 0 18px;
	    padding-left: 20px;
	    border: 1px solid #ccc;
	    color: #666;
	    font-size: 14px;
	    line-height: 40px;
	    vertical-align: middle;
	}
	
	.faqSearchWord {
		width: 300px;
		vertical-align: middle;
		height: 39px;
	}
	
	#faqSearch {
	    width: 258px;
	    height: 38px;
	    padding: 0 10px;
	    border: 1px solid #ccc;
	    line-height: 40px;
	    color: #666;
	    font-size: 14px;
	    font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
	    margin-right: 0;
	}
	
	.faqSearch_btn {
	    width: 80px;
	    height: 40px;
	    margin-left: 6px;
	    border: 0;
	    background: #999;
	    color: #fff;
	    font-size: 14px;
	    font-weight: bold;
	    line-height: 40px;
	    cursor: pointer;
	    display: inline-block;
	    vertical-align: middle;
	}
	
	.cateList {
		text-align: center;
		padding-bottom: 10px;
	}
	
	.cateList li {
	    width: 150px;
	    height: 40px;
	    border: 2px solid #eaeaea;
	    font-size: 13px;
	    color: black;
	    line-height: 36px;
	    display: inline-block;
	    text-align: center;
	    font-family: "Lato",sans-serif;
	    cursor: pointer;
	    
	}
		
	.FAQthead th {
		padding: 18px 0;
	    border-top: 2px solid #666;
	    border-bottom: 1px solid #ccc;
	    color: #000;
	    font-size: 14px;
	    text-align: center;
	}
	
	.FAQtbody {
		padding: 17px 0 16px;
	    border-bottom: 1px solid #ececec;
	    color: #626262;
	    font-size: 14px;
	    text-align: center;
	    vertical-align: middle;
	}
	
	.left {
		text-align: left;
	}
	
	.Abox {
		overflow: hidden;
		padding: 20px 25px;
		background-color: #ececec;
	}
	
	.Abox dt {
		margin-right: 20px;
		width: 25px;
		float: left;
	}
	
	.Abox dd {
		width: 1000px;
		line-height: 30px;
		float: left;
	}
		
	.qst {
		float: left;
		text-align: left;
		border-bottom: dotted 1px #ececec;
	}
	
	.qst > dt {
		color: black;
		font-weight: bold;
		font-size: 15pt;
	}
			
	.adv {
		float: left;
		text-align: left;
	}
	
	.adv > dt {
		color: #9d6849;
		font-weight: bold;
		font-size: 15pt;
	}
		
	.pagination {
	    width: 100%;
	    margin: 20px auto;
	    padding-bottom: 10px;
	    font-size: 13pt;
	    cursor: pointer;
	    text-align: center;
	}
	
	.faqSearchChoice {
		border: 2px solid #9d6849 !important;
		color: #9d6849 !important;
		font-weight: bold;
	}

	
</style>


<script type="text/javascript">
		
	$(document).ready(function() {
		
		var faqSearchType = "${faqSearchType}";
		var faqSearchWord = "${faqSearchWord}";
		
		$("#faqSearchType").val(faqSearchType);
		$("#faqSearchWord").val(faqSearchWord);
		
		
		// 자주묻는질문 목록 클릭하기		
		$(".faq_contents").hide();
		
		$(".faq_title").bind("click", function() {
			$(this).next(".faq_contents").toggle();
		}); 
		
		// 페이징 처리
		if("${faqSearchWord}" != "") {						// 검색어가 있을경우
			$("faqSearchType").val("${faqSearchType}");		// 검색기준
			$("faqSearchWord").val("${faqSearchWord}");		// 검색어에  값을 넣어준다.
		}
		
		// 검색창에 엔터입력
		$("#faqSearchWord").bind("keydown", function(event) {
			if(event.keyCode == 13) {
				faqSearh();
			}
		});
						
		// 분류 탭 클릭했을때
		$(".tabchoice").bind("click", function() {
			// 박스색 변화
			choicedIndex = $(this).index();
		
			$(".tabchoice").each(function(index, item) {
				if (index != choicedIndex)
					$(item).removeClass('faqSearchChoice');
				else
					$(this).addClass("faqSearchChoice");
			});
		
		}); 	// end of $(".tabchoice")click----
		
			
	});	// end of $(document).ready()---------------
	
	
	
	function faqSearh() {
		var frm = document.faqSearchFrm;
		frm.method = "GET";
		frm.action = "customerFAQ.dog";
		frm.submit();
	}	// end of faqSearh()-------------------
	
		
</script>


<title>자주하는 질문(FAQ)</title>
<div id="cs_Container" >
	<div style="text-align: center; padding-top: 50px;"><h1 style="font-weight: bold;">고객센터</h1></div>
	<div id="cs_top" style="margin: 0 auto; width: 1200px; height: 250px;">	
		<div class="when">
			<p class="tel">080-850-0085</p>
			<p class="time gray_font"> 
				평일 09:00 AM ~ 06:00 PM<br>
				(점심  12:00 PM ~ 13:00 PM)<br>
				주말, 공휴일 휴무 </p>
			<p class="fax">FAX 02-6933-4402</p>
		</div><%-- when 끝 --%>
		
		<div class="how">
		  <p class="hint">회원님의 궁금증을 해결하는 방법</p>
		  <ul>
		    <li class="hintList">
		      <div class="step">STEP 1</div>
		      <dl>
		        <dt>FAQ</dt>
		        <dd class="gray_font">궁금한 사항을 자주묻는 질문에서<br/>
		        	 찾아보세요!</dd>
		      </dl>
		    </li>
		    <li class="hintList">
		      <div class="step">STEP 2</div>
		      <dl>
		        <dt>1:1 문의하기</dt>
		        <dd class="gray_font"> 자주묻는 질문에 없다면<br/>
		          1:1 문의를 등록해주세요 </dd>
		      </dl>
		    </li>
		    <li class="hintList">
		      <div class="step">STEP 3</div>
		      <dl>
		        <dt>전화문의하기</dt>
		        <dd class="gray_font"> 1:1 문의로 해결이 어려우시면<br/>
		          	전화문의를 해주세요. </dd>
		      </dl>
		    </li>
		  </ul>
		</div><%-- how 끝 --%>
		
		
		<%-- <div class="when">
			<p class="tel">080-850-0085</p>
			<p class="time"> 평일 09:00 AM ~ 06:00 PM<br>
				(점심 12PM~13PM) 주말, 공휴일 휴무 </p>
			<p class="fax">FAX 02-6933-4402</p>
		</div>when 끝
		
		<div class="how">
			<p class="hint">회원님의 궁금증을 해결하는 방법</p>
			<ul>
				<li class="hintList">
					<div class="step">STEP 1</div>
					<dl>
						<dt>FAQ</dt>
						<dd>궁금한 사항을 자주묻는 질문에서 <br/>
							찾아보세요!</dd>
					</dl>
				</li>
				<li class="hintList">
					<div class="step">STEP 2</div>
					<dl>
						<dt>1:1 문의하기</dt>
						<dd> 자주묻는 질문에 없다면<br/>
						  1:1 문의를 등록해주세요 </dd>
					</dl>
				</li>
				<li class="hintList">
					<div class="step">STEP 3</div>
					<dl>
						<dt>전화문의하기</dt>
						<dd> 1:1 문의로 해결이 어려우시면<br/>
						  	전화문의를 해주세요. </dd>
					</dl>
				</li>
			</ul>
		</div>how 끝 --%>
	</div><%--cs_top 끝--%>	
	
	
	
	<div style="margin: 0 auto; width: 1200px; ">
		<ul class="tab_menu" style="padding:0;">
		      <li><a href="/Semi_Team1/customer/customerMain.dog">공지사항</a></li>
		      <li class="over"><a href="/Semi_Team1/customer/customerFAQ.dog">자주하는 질문(FAQ)</a></li> 
		      <li><a href="/Semi_Team1/customer/customerQnA.dog">묻고 답하기(Q&amp;A)</a></li>
		</ul>
	</div><%--tab_menu 끝 --%>
	
		
	 
	<div id="board_List" style="clear: both; width: 1200px; margin: 70px auto; text-align: right; ">
		<div class="board_search">
			<form name="faqSearchFrm">
				<fieldset>
					<span style="font-size: 13pt; font-weight: bold;">SEARCH</span>
					<select class="MS_input_select select-category" id="faqSearchType" name="faqSearchType">
						<option value="0">전체검색</option>
						<option value="1" >상품/주문/결제</option>
						<option value="2" >취소/반품/교환</option>
						<option value="3" >배송(정기배송)</option>
						<option value="4" >회원</option>
						<option value="5" >기타</option>
					</select>
					<input type='text' id='faqSearchWord' name="faqSearchWord" class="faqSearchWord"/>
					<input type="text" style="display: none;"> 
					<div class="faqSearch_btn" onclick='faqSearh();'>검색</div>
				</fieldset>
			</form>
		</div><%-- board_search 끝 --%>
		
				
		
		<div class="board_contents" style="margin-top: 25px; ">
			<form name="tabchoiceFrm">
			<input type="hidden" id="tabchoi" name="tabchoi" value="" />
			<div class="cateList">
				<ul>
					<li class="tabchoice" onclick="javascript:location.href='<%=ctxPath%>/customer/customerFAQ.dog'">전체보기</li>
					<li class="tabchoice" onclick="javascript:location.href='<%=ctxPath%>/customer/customerFAQ.dog?faqSearchType=1&faqSearchWord='">상품/주문/결제</li>
					<li class="tabchoice" onclick="javascript:location.href='<%=ctxPath%>/customer/customerFAQ.dog?faqSearchType=2&faqSearchWord='">취소/반품/교환</li>
					<li class="tabchoice" onclick="javascript:location.href='<%=ctxPath%>/customer/customerFAQ.dog?faqSearchType=3&faqSearchWord='">배송(정기배송)</li>
					<li class="tabchoice" onclick="javascript:location.href='<%=ctxPath%>/customer/customerFAQ.dog?faqSearchType=4&faqSearchWord='">회원</li>
					<li class="tabchoice" onclick="javascript:location.href='<%=ctxPath%>/customer/customerFAQ.dog?faqSearchType=5&faqSearchWord='">기타</li>					 
				</ul>
			</div>
			</form>
			
			<table class="FAQtable" style="width: 100%; ">
				<thead class="FAQthead">
					<tr>
						<th scope="col">번호</th>
						<th scope="col">분류</th>
						<th scope="col">제목</th>
					</tr>
				</thead>
				
				<tbody>

					<c:if test="${empty faqList}">
						<td colspan="4" >자주묻는 질문이 없습니다.</td>
					</c:if>
					
					<c:if test="${not empty faqList}">
						<c:forEach var="faqmap" items="${faqList}" varStatus="status">
							<tr class="faq_title">
								<td><div class="FAQtbody FAQno">${faqmap.faq_seq}</div></td>
								<td><div class="FAQtbody FAQctg">${faqmap.category}</div></td>
								<td><div class="FAQtbody left" >${faqmap.faq_title}</div></td>
							</tr>
							<tr class="faq_contents">
								<td colspan="3">
									<div class="Abox">
										<dl class="qst">
											<dt>Q</dt>
											<dd>${faqmap.faq_title}</dd>
										</dl>
										<dl class="adv">
											<dt>A</dt>
											<dd>${faqmap.faq_contents}</dd>
										</dl>
									</div>
								</td>
							</tr>
						</c:forEach>
					</c:if> 
					
				</tbody>
			</table>
		</div>
		
	</div><%-- board_List 끝 --%>
	
	
	
	<div class="pagination">
		${pageBar}
	</div><%--페이징 끝 --%> 
		
		
</div><%--	cs_Container : 바깥 테두리	 --%>
		
	

    
    
<jsp:include page="/WEB-INF/footer_dog.jsp" />





  