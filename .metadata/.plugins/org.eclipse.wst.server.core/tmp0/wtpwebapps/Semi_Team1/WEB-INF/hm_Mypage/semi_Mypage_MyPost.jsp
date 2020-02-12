<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String ctxPath = request.getContextPath(); %>
<jsp:include page="../header_dog.jsp"/>
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/css/hm/style.css" /> 
<title>내 문의내역</title>
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

.pagination a:hover:not(.active) {background-color: #ddd;}

.postTitle{
	cursor: pointer;
}
</style>
<script type="text/javascript">
	$("#subtabli8 > a").addClass('subtabClick');
	$(".subTab").hide();
	$("#tab2").addClass("tabClick")
	$(".subTab:eq(1)").show();
	$("#top_comment").html("Home>Mypage>내 게시글");
	
</script>

<table class="table" style="border-top: solid 2px gray; border-bottom: solid 1px gray;">
<h4 style="font-weight: bold; margin-top: 40px;">내 게시글</h4>
	<thead class="hm_thead">
		<tr>
			<th width="5%">NO.</th>
			<th width="10%">BOARD</th>
			<th width="50%">SUBJECT</th>
			<th width="20%">DATE</th>
			<th width="15%">STATUS</th>
		</tr>
	</thead>
	<tbody class="hm_tbody">
	<c:if test="${empty requestScope.postList}">
			<tr>
				<td colspan="5">문의 내역이 없습니다.</td>
			</tr>
	</c:if>

	<c:if test="${!empty requestScope.postList}">
		<c:forEach var="pvo" items="${requestScope.postList}" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${pvo.boardNum }</td>
				<td class="postTitle" style="text-align: left; padding-left: 30px;"><span onclick="location.href='<%= request.getContextPath() %>/customer/customerQnAdetail.dog?board_num=${pvo.boardNum }'">${pvo.title }</span></td>
				<td>${pvo.writeDay }</td>
				
				<c:set var = "replyStatus" value="${pvo.replyStatus}" />

				<c:if test="${replyStatus eq '답변완료'}">
					<td style="color:red">${replyStatus}</td>	
				</c:if>

				<c:if test="${replyStatus ne '답변완료'}">
					<td>${replyStatus}</td>	
				</c:if>

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