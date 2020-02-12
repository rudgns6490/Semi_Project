<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String ctxPath = request.getContextPath(); %>
<title>관심 상품</title>
<jsp:include page="../header_dog.jsp"/>
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/css/hm/style.css" /> 
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

.wishProd{
	padding-left: 30px;
}

.prodImg{
	cursor: pointer; 
}

.ProdTop{

}

.ProdBottom{
	height: 80px;
}
</style>

<script>

function goDelete(){
	var frm = document.interestFrm;
	var checkCnt = $("input:checkbox[name=interestSeq]:checked").length;
	if(checkCnt < 1) {
    	alert("선택된 제품이 없습니다");
    	return;
    }
	else{
		frm.method="POST";
		frm.submit();
	}
}

function goCheckAll(){
	$("input:checkbox[name=interestSeq]").prop('checked',true);
}

function goCheckDisable(){
	$("input:checkbox[name=interestSeq]").prop('checked',false);
}

</script>

<div id="login_container" style="margin-bottom: 100px; width: 70%;">
	<span id="top_comment"></span>
	<h1 class="hm_h1">마이페이지</h1>
	<jsp:include page="semi_Mypage_Submenu.jsp"/>
	
	<script type="text/javascript">
			$("#subtabli6 > a").addClass('subtabClick');
			$(".subTab").hide();
			$("#tab2").addClass("tabClick")
			$(".subTab:eq(1)").show();
			$("#top_comment").html("Home>Mypage>관심 상품");
	</script>
	
	<hr style="border: solid 0.5px gray; margin-top: 50px;">
	<div class="wishListDiv">
	<c:if test="${empty requestScope.wishList}">
			<div style="text-align: center;">
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
				<span>관심상품이 없습니다</span>
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
			</div>
	</c:if>
	<form name ="interestFrm" >
	<c:if test="${!empty requestScope.wishList}">
		<c:forEach var="ivo" items="${requestScope.wishList}" varStatus="status">
			<div class="wishProd col-md-3" >
				<div class="ProdTop">
					<img class="prodImg" src="<%= request.getContextPath() %>/images/${ivo.photoname }" onclick="location.href='/Semi_Team1/purchase/purchaseContent.dog?prdcode=${ivo.fkProductCode}'" />
				</div>
				<div class="ProdBottom">
					<p id="prodName"><input type="checkbox" class="interestSeq" name="interestSeq" value="${ivo.interestSeq}" /><br/>${ivo.product_name}</p>
				</div>
				<p id="prodPrice">${ivo.product_price}원</p>
				
				<input type="hidden" value="${ivo.interestSeq}"/>
			</div>
		</c:forEach>
	</c:if>
	</form>
	</div>
	
	<hr style="border: solid 0.5px gray;">
	<div>
		<button id="selectProdDel" type="button" onclick="goDelete()">선택상품 삭제</button>
		<button id="selectProdAll" type="button" onclick="goCheckDisable()">선택해제</button>
		<button id="selectProdAll" type="button" onclick="goCheckAll()">전체선택</button>
	</div>
	<br/><br/>
	<div class="center">
		<div style="text-align: center;" class="pagination">
			${pageBar}
		</div>
	</div>
</div>

<jsp:include page="../footer_dog.jsp"/>