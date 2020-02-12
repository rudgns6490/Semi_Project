<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String ctxPath = request.getContextPath(); %>

<title>내가 쓴 리뷰</title>
<jsp:include page="../header_dog.jsp"/>
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/css/hm/style.css" /> 
<div id="login_container">
<span id="top_comment"></span>
<h1 class="hm_h1">마이페이지</h1>
<jsp:include page="semi_Mypage_Submenu.jsp"/>

<style>
.center {
  text-align: center;
}

.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
  margin: 0 4px;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border: 1px solid #4CAF50;
}

#prodNameTd{
	cursor: pointer;
}
.pagination a:hover:not(.active) {background-color: #ddd;}

.postTitle{
	cursor: pointer;
}
</style>
<script type="text/javascript">
	$("#subtabli12 > a").addClass('subtabClick');
	$(".subTab").hide();
	$("#tab2").addClass("tabClick")
	$(".subTab:eq(1)").show();
	$("#top_comment").html("Home>Mypage>내가 쓴 리뷰");
	
</script>

<table class="table" style="border-top: solid 2px gray; border-bottom: solid 1px gray;">
<h4 style="font-weight: bold; margin-top: 40px;">내 게시글</h4>
	<thead class="hm_thead">
		<tr>
			<th width="10%">NO.</th>
			<th width="20%">상품명</th>
			<th width="10%">등급</th>
			<th width="30%">리뷰내용</th>
			<th width="20%">작성일자</th>
		</tr>
	</thead>
	<tbody class="hm_tbody">
	<c:if test="${empty requestScope.reviewList}">
			<tr>
				<td colspan="5">내가 쓴 리뷰가 없습니다.</td>
			</tr>
	</c:if>

	<c:if test="${!empty requestScope.reviewList}">
		<c:forEach var="rvo" items="${requestScope.reviewList}" varStatus="status">
			<tr>
				<td style="vertical-align: middle;">${status.count}</td>
				<td id="prodNameTd" style="vertical-align: middle;"><span onclick="location.href='/Semi_Team1/purchase/purchaseContent.dog?prdcode=${rvo.fk_product_code}#section3'" >${rvo.prodName}</span></td>
				<td style="vertical-align: middle;">${rvo.grade}</td>
				<td style="text-align: left;">${rvo.content}</td>
				<td style="vertical-align: middle;">${rvo.registerday}</td>
			</tr>
		</c:forEach>
	</c:if>
	
	</tbody>
</table>

<div class="center">
		<div style="text-align: center;" class="pagination">
			${pageBar}
		</div>
</div>
	
</div>
<jsp:include page="../footer_dog.jsp"/>