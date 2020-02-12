<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../header_dog.jsp" %>
<link rel="stylesheet" type="text/css" href="/Semi_Team1/css/hm/style.css" />
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
#login_container {
	/* border: dashed 1px gray; */
	width: 70%;
	margin: 0 auto;
	margin-bottom: 10px;
	font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
	color: black;
}

#top_comment {
	color: gray;
	float: right;
	font-size: 9pt;
}

#myinfo{
	background: #f4f4f4;
	margin: 0 auto;
	margin-bottom: 50px;
	padding: 40px;
}

#myinfobox{
	width: 100%;
}

.myinfo_txt{
	text-align: center;
	font-size: 15pt;
	font-weight: bold;
	list-style-type: none;
	cursor: pointer;
}

.myinfobox_txt{
	text-align: center;
	font-size: 10pt;
	list-style-type: none;
	cursor: pointer;
}

.col-md-4{
	border-bottom: solid 2px #c1c1c1;
}

ul.hm{
	display: inline;
}

ul.hm li a {
	color: black;
}

li{
	list-style-type: none;
}

#gradeimg{
	float: left;
	margin-right: 30px;
}

#myinfobtn{
	/* border: solid 1px #ddd; */
	border: solid 1px #ddd;
	background-color: white;
	color: #666;
	width: 100px;
	height: 30px;
	font-size: 10pt;
}

#infoli{
	float: left;
	margin-right: 5px;
}

#gradetxt{
	font-size: 15pt;
	color: #666;
	padding-top: 10px;

}

.img{
	float: left;
	margin-right: 10px;
}

#bottom_img{
	float: left;
	margin-right: 15px;
}

.myinfo_left{
	/* border: dashed 1px black; */
	width: 60%;
	padding-bottom: 30px;
}

.hm_a{ text-decoration: none; color: black;}
.hm_a:hover{ text-decoration: none; color: #9d6849; }

.subtabli{
	display: inline-block;
	margin: 5px 10px;
	cursor: pointer;
	color: #666;
}

.tabClick{
	border-bottom: solid 2px #9d6849;
	color: #9d6849;
}

.subtabClick{
	color: #9d6849 !important;
	font-weight: bold;
}

.hm_h1{
	text-align: center;
	margin: 0 auto;
	margin-top: 40px;
	margin-bottom: 70px;
	font-weight: bold;
	font-family: 'Notokr', sans-serif;
}

.leftMenu{ cursor: pointer; }

.msg{
	color: #626262;
	padding-top: 20px;
}

#OrderDetailView{
	border: solid 1px black;
	display: inline-block;
	width: 40px;
	height: 20px;
	cursor: pointer;
}

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


</style>

<script type="text/javascript">
$(document).ready(function(){
	$(".subTab").hide();
	$("#subTab1").show();
	$("#tab1").addClass("tabClick")
	$("#subtabli1 > a").addClass('subtabClick');
	
	$(".tabMenu").click(function(){
		$(".subTab").hide();
		$(".tabMenu").removeClass("tabClick");
		var activeTab = $(this).attr("rel");
        $("#" + activeTab).show()
		$(this).addClass("tabClick");
	});
	
	
});

function orderDetail(orderNum){
	var url = "/Semi_Team1/mypage/orderDetail.dog?orderNum="+orderNum;
    var name = "orderDetail";
    var option = "width = 875px, height = 820px, location = no"
    window.open(url, name, option);
}
</script>


<title>마이페이지 메인</title>
<body>

<div id="login_container">
	<span id="top_comment">Home>Mypage>마이페이지 메인</span><br>
	<h1 class="hm_h1">마이페이지</h1>
	<div id="myinfo">
		<div class="row" style="margin: 0 auto;">
			<table id="myinfobox">
			    <tr>
				    <td class="myinfo_left" colspan="4" >
					    <p id="gradeimg"><img src="../hm_img/gradeimg.gif" style="border-radius: 100%;"/></p>
					    <p id="gradetxt" style="padding-bottom: 5px;"><span style="color: #916b4a; font-weight: bold;">[${requestScope.name}]</span>님 환영합니다.</p>
					    <p id="gradetxt" style="font-size: 9pt; padding-top: 0;">마지막 로그인: ${lastLogin}</p>
					    <ul class="hm">
					    <li id="infoli"><button id="myinfobtn" type="button" onclick="location.href='/Semi_Team1/mypage/passwordCheck.dog'">회원정보수정</button></li>
					    </ul>
				    </td>
				    <td rowspan="2" style="background-color: #2d2926; color: white;">
				    	<img src="../hm_img/mypageImg.png" width="100%" height="100%"/>
				    </td>
			    </tr>
			    <tr >
				    <td>
				    	<a class="leftMenu hm_a" href="<%= ctxPath %>/mypage/recentlyOrder.dog">
					    <p id="bottom_img"><img src="../hm_img/orderList.png" width=50px  style="background-color:white; border-radius: 100%;"/></p>
						주문<br/>
					    <strong style="color: #ff4800;"><fmt:formatNumber maxFractionDigits="3" value="${totalOrder}" />원</strong>
				    	</a>
				    </td>
				    <td>
				    	<a class="leftMenu hm_a" href="<%= ctxPath %>/mypage/reserve.dog">
					    <p id="bottom_img"><img src="../hm_img/reserve.png" width=50px  style="background-color:white; border-radius: 100%;"/></p>
					    적립금<br/>
					    <strong style="color: #ff4800;"><fmt:formatNumber maxFractionDigits="3" value="${totalReserve}" />원</strong>
					    </a>
					    
					</td>

			    </tr>
		    </table>
  		</div>
	</div>
	
	<%@include file="semi_Mypage_Submenu.jsp" %>
  
<div id="recentlyOrderList">
	<!-- 최근주문내역 -->
	<table class="table" style="border-top: solid 2px gray; border-bottom: solid 1px gray;">
	<thead class="hm_thead">
		<tr>
			<th width="8%">번호</th>
			<th width="8%">주문번호</th>
			<th width="40%">상품명</th>
			<th width="15%">결제금액</th>
			<th width="10%">주문일자</th>
			<th width="5%">상태</th>
		</tr>
	</thead>
	<tbody class="hm_tbody">
		<c:if test="${empty requestScope.orderList}">
			<tr>
				<td colspan="5">주문 내역이 없습니다.</td>
			</tr>
		</c:if>
	
		<c:if test="${!empty requestScope.orderList}">
			<c:forEach var="ovo" items="${requestScope.orderList}" varStatus="status">
				<tr>
					<td style="vertical-align: middle;">${status.count }</td>
					<td style="vertical-align: middle;">${ovo.order_num }</td>
					
					<c:if test="${ovo.orderProdCnt != 1}" >
						<td style="text-align: left; padding-left: 40px; vertical-align: middle;">[${ovo.product_name}] 외 ${ovo.orderProdCnt-1}건</td>
					</c:if>
					
					<c:if test="${ovo.orderProdCnt == 1}" >
						<td style="text-align: left; padding-left: 40px; vertical-align: middle;">${ovo.product_name}</td>
					</c:if>
					
					<td style="vertical-align: middle;"><fmt:formatNumber maxFractionDigits="3" value="${ovo.totalPrice}" /></td>
					<td style="vertical-align: middle;">${ovo.order_day }</td>
					<td style="vertical-align: middle;"><span id="OrderDetailView" onclick="orderDetail(${ovo.fk_order_num})">VIEW</span></td>
				</tr>
			</c:forEach>
		</c:if>
		<%--
		<tr>
			<td>John</td>
			<td>Doe</td>
			<td>john@example.com</td>
			<td>test</td>
			<td>테스트</td>
			<td><span id="OrderDetailView" onclick="orderDetail()">VIEW</span></td>
		</tr>
		 --%>
	</tbody>
	</table>
	 </div>
	 <div class="center">
		<div style="text-align: center;" class="pagination">
			${pageBar}
		</div>
	</div>
	
	</div>
 	
</body>



<%@include file="../footer_dog.jsp" %>






