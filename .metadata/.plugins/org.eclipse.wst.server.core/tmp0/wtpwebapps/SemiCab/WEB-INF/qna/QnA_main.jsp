<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../header.jsp"></jsp:include>

<style>

/* 제일 큰 틀 */
#wrap {
	width: 100%;
	margin: 0 auto;
	padding: 150px 0 50px;
	background: #f4f4f4;
}
/* Q&A 중간틀 */
#fixoContainer {
	width: 1400px;
	margin: 0 auto;
	padding: 40px;
	box-sizing: border-box;
	background: #fff;
}

#fixoWrap .path {
	float: right;
	line-height: 30px;
	font-family: "NanumGothicWeb", Dotum, 돋움, Gulim, 굴림, sans-serif;
}

.path ol {
	float: right;
}

#fixoWrap .path li {
	background-position: 0 55%;
}

/* Q&A | Q&A 상품입니다 --------------------------------*/
.boardSearch {
	border: 1px solid #f2f1f0;
	padding: 30px;
}

.title {
	margin: 0 0 20px;
	padding: 0 0 15px;
	border-bottom: 1px solid #e8e8e8;
	min-height: auto;
}

.title h2 {
	display: inline-block;
	padding: 0;
	color: #323232;
	font-size: 26px;
	*display: inline;
	*zoom: 1;
	background: none;
	line-height: 30px;
	font-weight: 700;
	vertical-align: top;
	line-height: 34px;
}

.title p {
	display: inline-block;
	margin: 0 0 0 6px;
	padding: 0 0 0 10px;
	background:
		url(http://img.echosting.cafe24.com/skin/base_ko_KR/common/ico_title.gif)
		no-repeat 0 12px;
	display: inline;
	font-size: 11px;
	color: #949494;
	line-height: 34px;
	font-weight: normal;
	height: 30px;
	vertical-align: top;
}

/* 상품분류별 검색 */
.search1:before {
	content: "상품분류별 검색";
	margin: 0 22px 0 0;
	color: #949494;
}

.search1 select {
	width: 230px;
	height: 36px;
	border: 1px solid #d5d5d5;
	line-height: 20px;
}


.search1 {
	float: left;
	width: 40%;
}

.search2 {
	float: right;
	width: 55%;
	text-align: right;
	margin-top: 7px;
}

#search_date {
	margin: 0 2px 0 22px;
	width: 72px;
    height: 36px;
    border: 1px solid #d5d5d5;
    line-height: 20px;
}

#search_key {
	margin: 0 2px 0 0;
    width: 72px;
    height: 36px;
    border: 1px solid #d5d5d5;
    line-height: 20px;
}

#search {
    padding: 0 4px;
    border: 1px solid #d5d5d5;
    line-height: 34px;
    height: 34px;
    vertical-align: top;
}

#searchFrm {
	overflow: hidden;
	margin-bottom: 20px;
}

table th {
	border: 0;
	border-top: 1px solid #000;
	border-bottom: 1px solid #e3e3e3;
	background: #fcfcfc;
	font-weight: 400;
}

.boardlist td {
	padding: 10px 6px;
	height: 32px;
	vertical-align: middle;
	border: 0;
	border-bottom: 1px solid #e8e8e8;
	font-size: 13px;
	color: #555;
}

/* 번호 */
.ec-base-table .center {
	text-align: center;
}

#cnum {
	width: 200px;
	height: 44px;
}

#ctitle {
	width: 1030px;
	height: 44px;
}

#cwriter {
	width: 290px;
	height: 44px;
}

.firsttable {
	border: none;
	width: 100%;
}

#first_table {
	width: 100%;
	border: none;
	border-spacing: 0px;
}

/* ---------------------------------------------------- */
.gRight {
	float: right;
	text-align: right;
}

/* 페이징 처리 */
.ec-base-paginate li {
	display: inline-block;
	margin: 0 0 0 -1px;
	border: 1px solid #d7d5d5;
	font-size: 12px;
	color: #757575;
	vertical-align: top;
}

.write_button



/* 상품분류별 검색 form ----------------------------*/
form {
	display: block;
	margin-top: 0em;
}

/* 공통 css 종료---------------------------- */
</style>
<%-- body 시작==================================================================== --%>

<div id="wrap">

	<div id="fixoContainer" class="clear">

		<div id="fixoContent">

			<div id="fixo_product_board">
				<div class="title">
					<h2>
						<font color="333333">Q&amp;A</font>
					</h2>
					<p>상품 Q&amp;A입니다.</p>
				</div>

			</div>
			<p class="imgArea"></p>
		</div>

		<div id="searchFrm">
			<form id="boardSearchForm" name="" action="/board/qa/6" method="get"
				target="_top" enctype="multipart/form-data">
				<div class="search1 ">
					<select id="product_category_depth1" name="product_category_depth1"
						fw-filter="" fw-label="" fw-msg="">
						<option value="" selected="selected">전체분류</option>
						<option value="51">ONLINE STORE</option>
					</select>

				</div>

				<div class="search2">
					검색어 입력 <select id="search_date" name="search_date" fw-filter=""
						fw-label="" fw-msg="">
						<option value="all">전체</option>
					</select> <select id="search_key" name="search_key" fw-filter="" fw-label=""
						fw-msg="">
						<option value="subject">제목</option>
						<option value="writer_name">글쓴이</option>
						<option value="member_id">아이디</option>
					</select> <input id="search" name="search" fw-filter="" fw-label=""
						fw-msg="" class="inputTypeText" placeholder="" value=""
						type="text"> <a href="#none"
						onclick="BOARD.form_submit('boardSearchForm');" class="btn_write">검색</a>
				</div>
			</form>
		</div>
		<div class="firsttable">
			<table id="first_table">
				<colgroup
					class="xans-element- xans-board xans-board-listheader-3242 xans-board-listheader xans-board-3242 ">
					<col style="width: 70px;">
					<col style="width: 80px;">
					<col style="width: auto;">
					<col style="width: 110px;">
					<col style="width: 90px;" class="displaynone">
					<col style="width: 55px;" class="displaynone">
					<col style="width: 55px;" class="displaynone">
					<col style="width: 80px;" class="displaynone">
				</colgroup>

				<thead
					class="xans-element- xans-board xans-board-listheader-3242 xans-board-listheader xans-board-3242 ">
					<tr>
						<th id="cnum">번호</th>
						<th id="ctitle">제목</th>
						<th id="cwriter">작성자</th>
					</tr>
				</thead>

				<!-- QNA 정보  view@@@@@ -->
				<tbody class="boardlist">
					<c:if test="${not empty qnaList}">
						<c:forEach var="QNAVO" items="${qnaList}">
							<tr style="background-color: #FFFFFF; color: #555555;"
								class="xans-record-">
								<td class="thumb" style="text-align: center;">${QNAVO.qna_num}</td>
								<td><a name="num" href="readqna.ej?num=${QNAVO.qna_num}">${QNAVO.title}</a></td>
								<td style="text-align: center;">${QNAVO.username}</td>
							</tr>
						</c:forEach>
					</c:if>

					<c:if test="${empty qnaList}">
						<tr style="background-color: #FFFFFF; color: #555555;"
							class="xans-record-">
							<td colspan="4">데이터가 존재하지 않습니다.</td>
						</tr>
					</c:if>

				</tbody>
			</table>
		</div>
		
		<div style="border: solid 1px red;">
		<div class="write_button">
			<span class="gRight"> <a
				href="http://localhost:9090/SemiCab/qnaWrite.ej" class=""> <img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_write.gif"
					alt="글쓰기"></a>
			</span>
		</div>

		<%--페이징 버튼 --%>
		<div
			class="xans-element- xans-board xans-board-paging-3242 xans-board-paging xans-board-3242 ec-base-paginate crema-hide">
			<a
				href="?board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page=1"><img
				src="http://img.echosting.cafe24.com/skin/base/common/btn_page_prev.gif"
				alt="이전 페이지"></a>
			<ol>
				<li class="xans-record-"><a
					href="?board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page=1"
					class="this">1</a></li>
				<li class="xans-record-"><a
					href="?board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page=2"
					class="other">2</a></li>
				<li class="xans-record-"><a
					href="?board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page=3"
					class="other">3</a></li>
				<li class="xans-record-"><a
					href="?board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page=4"
					class="other">4</a></li>
				<li class="xans-record-"><a
					href="?board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page=5"
					class="other">5</a></li>
				<li class="xans-record-"><a
					href="?board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page=6"
					class="other">6</a></li>
				<li class="xans-record-"><a
					href="?board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page=7"
					class="other">7</a></li>
				<li class="xans-record-"><a
					href="?board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page=8"
					class="other">8</a></li>
				<li class="xans-record-"><a
					href="?board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page=9"
					class="other">9</a></li>
				<li class="xans-record-"><a
					href="?board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page=10"
					class="other">10</a></li>
			</ol>
			<a
				href="?board_no=6&amp;product_category_depth1=&amp;product_category_depth2=&amp;product_category_depth3=&amp;product_category_depth4=&amp;page=2"><img
				src="http://img.echosting.cafe24.com/skin/base/common/btn_page_next.gif"
				alt="다음 페이지"></a>
		</div>
	 </div>
	</div>

</div>




















<%-- body 종료==================================================================== --%>

<jsp:include page="../footer.jsp"></jsp:include>