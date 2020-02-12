<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String ctxPath = request.getContextPath();
%>
    
<jsp:include page="../header_dog.jsp" />

<title>현재 진행중인 이벤트</title>

<script type="text/javascript" src="<%= ctxPath%>/js/jquery-3.3.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

/* button */
#back_btn {
    width: 240px;
    height: 50px;
    font-size: 16px;
    color: #f5f5f5;
    text-align: center;
    line-height: 50px;
    background: #42362f;
    margin: 6% 0 0 42%; 
}

#bottom {
	width: 100%;
	height: 250px;
}
/* /button */

.content {
	width: 100%;
	margin: 0 auto;
}

.s_title {
    padding: 18px 0 14px;
    color: #333;
    font-size: 18px;
    font-weight: bold;
    text-align: left;
    margin-left: 10%;
}

.s_title p {
    padding-top: 10px;
    color: #666;
    font-size: 14px;
}

.boxtitle {
    padding: 42px 30px 36px;
    border-top: 5px solid #000;
    border-bottom: 1px solid #ccc;
    text-align: center;
}

.boxtitle .title {
    padding-bottom: 19px;
    color: #000;
    font-size: 32px;
}

.container {
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

.heart {
	color: red;
	display: inline;
}

</style>

<script type="text/javascript">

	function goBack() {
		
		javascript:history.back();
		
	}

</script>


<div class="container">
	<div><img src="/Semi_Team1/images/event/event_title.gif" style="width: 100%;"></div>

	<div class="content">

		<div class="s_title">
			EVENT
			<p>하림 펫푸드의 다양한 이벤트에 참여해 보세요.</p>
		</div>
	
		<div class="boxtitle">
          <div class="title"><p class="heart">♡</p> 댕댕이 친구들에게 특별한 크리스마스 선물을 <p class="heart">♡</p></div>
          <p style="font-size: 13pt;">이벤트 기간 : 2019.12.3 ~ 2019.12.24</p>
        </div>
	
	    <div>
			<img src="/Semi_Team1/images/event/eventDetail.jpg" style="display: block; margin: 0 auto;" />
		</div>
	
	</div>

	<div id="bottom">
     	<button type="button" id="back_btn" onclick="goBack();">목록으로</button>
     </div>

</div>

<jsp:include page="../footer_dog.jsp" />