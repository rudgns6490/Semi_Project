<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/header_dog.jsp" />


<style type="text/css">
	
	#cs_Container {
		margin: 0 auto;
		width: 90%;
/* 		border: solid 1px black; */
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
	
	#cs_Container th {
		padding: 18px 0;
	    border-top: 2px solid #666;
	    border-bottom: 1px solid #ccc;
	    color: #000;
	    font-size: 14px;
	    text-align: center;
	}
	
	#cs_Container td {
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
	
	.paging {
	    margin: 10px 0;
	    text-align: center;
	    padding: 70px 0;
	}
	
	.paging li {
	    display: inline;
	    padding: 0 2px;
	    color: #9e9e9e;
	    vertical-align: middle;
	}
	
	.paging li strong {
	    display: inline-block;
	    width: 28px;
	    height: 28px;
	    color: #000;
	    font-size: 14px;
	    line-height: 30px;
	    font-family: "Lato",sans-serif;
	}
	
	.btn_write {
	    margin: 20px 0;
	    text-align: right;
	    font-size: 13pt;
	}
	
	.gray_font {
		color:  #999999;
	}
	
	.title_hov:hover{
		cursor: pointer;
	}
	
	#writeBtn {
		text-decoration: none;
		color: black;
		cursor:pointer;
	}
	
	
</style>

<%-------------- script ----------------%>
<script type="text/javascript">
	
	$(document).ready(function(){
		
		var searchType = "${ searchType}";
		var searchWord = "${ searchWord}";
		
		if(searchType != null){
			
			$("select[name=searchType]").val(searchType);
			$("input[name=searchWord]").val(searchWord);
		}
		
		
			
		// 검색하기
		$("#btnSearch").click(function(){
			
			var searchWord = $("input[name=searchWord]").val().trim();
			
			/* if( searchWord == "" ){
				alert("검색하시려면 값을 입력해주세요.");
				$("input[name=searchWord]").focus();
				
				return false;
			} */
			
			var frm = document.searchForm;
			frm.action = "<%= request.getContextPath() %>/customer/customerQnA.dog";
			frm.submit();
		});
		
	}); // end of document ready -------------------------------------------
	
	// 게시글 제목을 클릭하면 상세 글 정보로 이동
	function goQnAdetail(board_num){
		
		location.href = "<%= request.getContextPath() %>/customer/customerQnAdetail.dog?board_num="+board_num;
		
	} // end goQnAdetail ---------------------------------------------------
	
</script>
<%-------------- script ----------------%>


<title>질문과 답변</title>
<div id="cs_Container" >
	<div style="text-align: center; padding-top: 50px;">
		<h1 style="font-weight: bold;">고객센터</h1>
	</div>
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
		      <li><a href="/Semi_Team1/customer/customerMain.dog">공지사항</a></li>
		      <li><a href="/Semi_Team1/customer/customerFAQ.dog">자주하는 질문(FAQ)</a></li> 
		      <li class="over"><a href="/Semi_Team1/customer/customerQnA.dog">묻고 답하기(Q&amp;A)</a></li>
		</ul>
	</div><%--tab_menu 끝 --%>
	
	
	<div id="board_List" style="clear: both; width: 1200px; margin: 70px auto; text-align: right; ">
	
		<%-- 검색 폼 --%>
		<form name="searchForm">
			<div class="board_Search" style="padding-top: 30px;">
				<select name="searchType" class="searchBox">
					<option value="">선택</option>
					<option value="writer">이름</option>
					<option value="title">제목</option>
					<option value="content">내용</option>
				</select>
				<input type="text" name="searchWord" class="searchBox" style="padding-left:15px;"/>
				<button type="button" id="btnSearch" class="btnSearch">검색</button>
			</div>
		</form>
		
		<div class="board_contents" style="margin-top: 25px; ">
			<table style="width: 100%; ">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col" style="width:50%;">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
						<th scope="col">답변상태</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${ requestScope.boardList != null }">
						
						<c:forEach var="map" items="${ boardList }">
							<tr>
								<td>${ map.board_num }</td>
								<td class="left title_hov" onclick="goQnAdetail('${ map.board_num }')" >${ map.title }</td>
								<td>${ map.writer }</td>
								<td>${ map.writeday }</td>
								
								<c:if test="${ map.replystatus == '1' }">
									<td >[<span style="color:red;">답변 완료</span>]</td>
								</c:if>
								<c:if test="${ map.replystatus == '0' }">
									<td>[답변대기중]</td>
								</c:if>
							</tr>
						</c:forEach>
					</c:if>
					<c:if test="${ requestScope.boardList == null }">
						<tr>
							<td colspan="6">게시글이 없습니다.<td>
						</tr>
					</c:if>
					
				</tbody>
			</table>
		</div>
	</div><%-- board_List 끝 --%>
	
	<div style="clear: both; width: 1200px; margin: 70px auto; text-align: right; ">
		<div class="btn_write">
    		<a href="<%= request.getContextPath() %>/customer/customerQnAWrite.dog" id="writeBtn">WRITE</a>
    	</div>
		
		<div style="text-align: center;">
			${ requestScope.pageBar }
		</div>
    </div><%--페이징 끝 --%>
		
</div><%--	cs_Container : 바깥 테두리	 --%>
		
	
    
<jsp:include page="/WEB-INF/footer_dog.jsp" />





  