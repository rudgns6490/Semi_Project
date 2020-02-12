<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>
<jsp:include page="../header.jsp" />

<link rel="stylesheet" href="css/myAccount.css">
<script src="<%=ctxPath %>/js_ysl/myAccount.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	
	// 주문&목록 리스트
	getOrderList("${sessionScope.loginuser.idx}");
	
	$(".logoutMenu").click(function(){
	      
	      alert("로그아웃 되었습니다.");
	      location.href="logout.ysl";
	      
	});
	
	$.ajax({
		url:"/SaintLaura/myWishJSON.ysl", 
		type:"GET", 
		data:{"email":"${(sessionScope.loginuser).email}"},
		dataType:"json",
		success:function(json){
			var html = "";
			
			if(json.length == 0) { // 데이터가 존재하지 않는 경우 
				
				html += "<div class='wish-contents'>"
	   			      + "	<div style='width: 100%; text-align: center; font-size: 8pt;'><br><br><br><br><br><br><br>위시리스트가 비었습니다. <br>"
	   			      + "</div>";
	   			      
				$("#displayYSL").append(html);
				
			}
			else { // 데이터가 존재하는 경우 
				$.each(json, function(index, item){
					if(index < 2) {
						html += " <div class='showWishImage' > "
							  + "    <a href='/SaintLaura/productDetail.ysl?pnum="+item.pnum+"' style='text-decoration: none;'> "
							  + " 			<img class='listViewImage mainImage' src='/SaintLaura/images_Product/"+item.pimage1+"' style='width: 120px; height: 180px;'> "
							  + "    </a>"
						      + " </div> ";
					}
					else {
						
					}
				});
			
				//YSL 상품결과를 출력하기
				$("#displayYSL").append(html);
			}
		}, 
		error: function(request, status, error){
			alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
		}
	});
	
});

</script>

<body>


	<div class="container">
		<img src="images/myAccount_Banner.jpg" class="myAccountBanner"/>
		<div style="border: solid rgb(239, 239, 239) 1px; height: 79px;" >
			<ul class="logged">
				<li class="profileMenu basicMenu" onclick="javascript:location.href='<%=ctxPath%>/myAccountUpdate.ysl'">나의 정보</li>
				<li class="orderMenu basicMenu" onclick="javascript:location.href='<%=ctxPath%>/orderNReturnList.ysl'">주문 &amp; 반품</li>
				<li class="wishlistMenu basicMenu" onclick="javascript:location.href='<%=ctxPath%>/myWishList.ysl'">위시리스트</li>
				<li class="logoutMenu"><span style="cursor:pointer">로그아웃</span></li>
			</ul>
		</div>
		<div class="welcomeMsg" style="border: solid rgb(239, 239, 239) 1px; border-top: hidden;">
			<div class="hello">안녕하세요, <span>${ sessionScope.loginuser.name }</span> 고객님</div>
			<div class="explanation">고객님의 개인 계정의 모든 개인정보, 설정 내용, 저장된 아이템을 안전하게 보관합니다.</div>
		</div>
		<div class="overview">
			<div class="profileContainer col-xs-4 row-eq-height">
				<div class="firstWrapper">
					<div class="myinfo info">나의 정보</div>
					<ul class="title info">
						<li class="listinfo info">이름<br/><span class="datainfo">${ sessionScope.loginuser.name }</span></li>
						<li class="listinfo info">이메일<br/><span class="datainfo">${ sessionScope.loginuser.email }</span></li>
						<li class="listinfo info" style="padding-bottom: 25px;">생년월일<br/><span class="datainfo">${ sessionScope.loginuser.birthday }</span></li>
					</ul>
					<div class="updateInfo moreBtn">
						<span class="spanBtn" onclick="javascript:location.href='<%=ctxPath%>/myAccountUpdate.ysl'">수정</span>
					</div>
				</div>
			</div>
			<div class="orderContainer col-xs-4 row-eq-height">
				<div class="secondWrapper">
					<div class="myinfo info">주문&amp;반품</div>
					<ul class="title info">
						<li class="moreinfo info">
							<table class="accountOrderTable">
							</table>
						</li>
					</ul>
					<div class="moreinfo moreBtn">
						<span class="spanBtn" onclick="javascript:location.href='<%=ctxPath%>/orderNReturnList.ysl'">모두보기</span>
					</div>
				</div>
			</div>
			<div class="wishlistContainer col-xs-4 row-eq-height">
				<div class="thirdWrapper">
					<div class="myinfo info">위시리스트</div>
						<div id="displayYSL" ></div>
					<div class="updateInfo moreBtn">
						<span class="spanBtn" onclick="javascript:location.href='<%=ctxPath%>/myWishList.ysl'">모두보기</span>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>