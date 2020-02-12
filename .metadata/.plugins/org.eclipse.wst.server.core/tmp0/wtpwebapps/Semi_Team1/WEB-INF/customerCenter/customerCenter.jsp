<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/header_dog.jsp" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
	
	#cs_Container {
		margin: 0 auto;
		width: 90%;
	}
		
	#cs_Container ul {
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
/* 	 	border: solid 1px blue; */
	 	font-size: 20px;
	 	font-weight: bold;
	 	color: gray;
	 }
	 
	 .hintList {
/* 	 	border: solid 1px red; */
	 	margin: 5px 5px;
	 	width: 30%;
/* 	 	height: 90px; */
	 	
	 }
	 
	 #cs_Container dt {
	 	margin-top: 5px;
/* 	 	border: solid 1px red; */
	 	font-size: 12pt;
	 	font-weight: bold;
	 }
	 
	 #cs_Container dd {
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
	
	.serarch_notice {
		margin-top: 40px;
		height: 40px;
	}
	
	.searchBox {
		height: 40px;
	}
	
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
	
	.board_contents > table th {
		padding: 18px 0;
	    border-top: 2px solid #666;
	    border-bottom: 1px solid #ccc;
	    color: #000;
	    font-size: 14px;
	    text-align: center;
	}
	
	.board_contents > table td {
		padding: 17px 0 16px;
	    border-bottom: 1px solid #ececec;
	    color: #626262;
	    font-size: 14px;
	    text-align: center;
	    vertical-align: middle;
	}
	
	.title {
		text-align: left !important;
		cursor: pointer !important;
	}
	
	
	.paging {
	    margin: 10px 0;
	    text-align: center;
	    font-size: 13pt;
	    padding: 70px 0;
	}
	
</style>


<%-------------- script 시작 ----------------%>
<script type="text/javascript">
	
	$(document).ready(function() {
	
		$(".title").bind("click", function() {
			
			var notice_seq = $(this).prev(".notice_seq").text();
			// .find(".notice_seq")
			location.href = "/Semi_Team1/customer/customerNoticeRead.dog?notice_seq="+notice_seq;
				
		});	// end of $("#title").bind()---
		
		
		// 페이징 처리
		if("${noticeSearchWord}" != "") {		// 검색어가 있을경우
			$("noticeSearchType").val("${noticeSearchType}");		// 검색기준
			$("noticeSearchWord").val("${noticeSearchWord}");		// 검색어에  값을 넣어준다.
		}
		
		// 검색창에서 앤터사용
		$("#noticeSearchWord").bind("keydown", function(event) {
			if(event.keyCode == 13) {
				noticeSearch();
			}
		});
		
	});	// end of $(document).ready()-------------------
	
	
	function noticeSearch() {
		
		var frm = document.noticeSerachFrm;
		frm.method = "GET";
		frm.action = "customerMain.dog";
		frm.submit();
		
	}	// end of function noticeSearch()-----------
		
</script>
<%-------------- script 끝 ----------------%>


<title>공지사항</title>
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
	</div><%--cs_top 끝--%>	
	
	<div style="margin: 0 auto; width: 1200px; ">
		<ul class="tab_menu">
		      <li class="over"><a href="/Semi_Team1/customer/customerMain.dog">공지사항</a></li>
		      <li><a href="/Semi_Team1/customer/customerFAQ.dog">자주하는 질문(FAQ)</a></li> 
		      <li><a href="/Semi_Team1/customer/customerQnA.dog">묻고 답하기(Q&amp;A)</a></li>
		</ul>
	</div><%--tab_menu 끝 --%>
	
	
	
	<div id="board_List" style="clear: both; width: 1200px; margin: 70px auto; text-align: right; ">
		
		<form name="noticeSerachFrm">
			<div class="board_Search" style="padding-top: 30px; ">
				<select id="noticeSearchType" name="noticeSearchType" class="searchBox">
					<option value="none">선택</option>
					<option value="title">제목</option>
				</select>
				<input type="text" id="noticeSearchWord" name="noticeSearchWord" class="searchBox" />
				<input type="text" style="display: none;">
				<div class="btnSearch" onclick="noticeSearch();">검색</div>
			</div>
		</form>
		<div class="board_contents" style="margin-top: 25px; ">
			<table style="width: 100%; ">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">작성일</th>
						<th scope="col">조회수</th>
					</tr>
				</thead>
				<tbody>
					
				<c:if test="${empty requestScope.noticeList}">
					<tr>
						<td colspan="4">등록된 공지사항이 없습니다.</td>
					</tr>
				</c:if>	
					
				<c:if test="${not empty requestScope.noticeList}">
					<c:forEach var="noticeMap" items="${noticeList}" >
						<tr>
							<td class="notice_seq">${noticeMap.notice_seq}</td>
							<td class="title">${noticeMap.title}</td>
							<td>${noticeMap.registerday}</td>
							<td>${noticeMap.readcount}</td>
						</tr>
					</c:forEach>
				</c:if>	
				</tbody>
			</table>
		</div>
	</div><%-- board_List 끝 --%>
	
	
	
	<div class="paging">
		${pageBar}
    </div><%--페이징 끝 --%>

		
</div><%--	cs_Container : 바깥 테두리	 --%>
		
	

    
    
<jsp:include page="/WEB-INF/footer_dog.jsp" />





  