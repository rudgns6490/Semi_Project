<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

.recentlyProd{
	margin-bottom: 40px;
}

.wishProd{
	padding-left: 30px;
}

.prodImg{
	cursor: pointer; 
}

.ProdTop{

}

.ProdBottom{
	height: 60px;
}

</style>
<% String ctxPath = request.getContextPath(); %>
<title>최근 본 상품</title>
<jsp:include page="../header_dog.jsp"/>
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/css/hm/style.css" /> 

<div id="login_container" style="margin-bottom: 100px;">
	<span id="top_comment"></span>
	<h1 class="hm_h1">마이페이지</h1>
	<jsp:include page="semi_Mypage_Submenu.jsp"/>
	
	<script type="text/javascript">
			$("#subtabli5 > a").addClass('subtabClick');
			$(".subTab").hide();
			$("#tab2").addClass("tabClick")
			$(".subTab:eq(1)").show();
			$("#top_comment").html("Home>Mypage>최근 본 상품");
	</script>
	
	<hr style="border: solid 0.5px gray; margin-top: 50px;">
	<div class="recentlyProdDiv" >
	
		<c:if test="${empty requestScope.recentShowList}">
			<div style="text-align: center;">
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
				<span>최근 본 상품이 없습니다</span>
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
			</div>
		</c:if>
	
		<c:if test="${!empty requestScope.recentShowList}">
			<c:forEach var="ivo" items="${requestScope.recentShowList}" varStatus="status">
				<div class="recentlyProd col-md-3">
				<div class="ProdTop">
					<img class="prodImg" src="<%= request.getContextPath() %>/images/${ivo.photoname }" onclick="location.href='/Semi_Team1/purchase/purchaseContent.dog?prdcode=${ivo.fkProductCode}'" />
				</div>
				<div class="ProdBottom">
					<p id="prodName">${ivo.product_name}</p>
				</div>
					<p id="prodPrice">${ivo.product_price}원</p>
				</div>
			</c:forEach>
		</c:if>
		
	</div>
	<hr style="border: solid 0.5px gray; margin-top: 50px;">
</div>
<jsp:include page="../footer_dog.jsp"/>