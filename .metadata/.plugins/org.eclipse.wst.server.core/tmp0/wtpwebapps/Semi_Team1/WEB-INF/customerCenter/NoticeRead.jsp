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
	 	font-size: 20px;
	 	font-weight: bold;
	 	color: gray;
	 }
	 
	 .hintList {
	 	margin: 5px 5px;
	 	width: 30%;
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
	
	.notice_head {
		margin: 0 auto;
		margin-top: 100px;
	    padding: 0;
	    border-top: solid 1.5px black;
	    width: 75%;
	    font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
	    font-size: 12px;
	    line-height: normal;
	    vertical-align: baseline;
	}
	
	.notice_head tr th {
	    width: 120px;
	    padding: 10px 0 10px 30px;
	    border-bottom: 1px solid #d7d7d7;
	    color: #181818;
	    font-weight: normal;
	    text-align: left;
	    vertical-align: middle;
	}
	
	.notice_head tr td {
	    padding: 10px 0 10px 10px;
	    border-bottom: 1px solid #d7d7d7;
	    color: #837d81;
	    text-align: left;
	    vertical-align: middle;
	}
	
	.notice_contents {
		margin: 0px auto;
		min-height: 500px;
		width: 75%;
		border-bottom: 1px solid #d7d7d7; 
	}
	
	#content {
		float: left;
		width: 70%;
		margin: 30px 40px;
	}
	
	.btn_cover {
		margin: 20px auto;
		width: 75%;
		text-align: right;
	}
	
	.box_btn {
	    display: inline-block;
	    width: 150px;
	    height: 40px;
	    margin: 0;
	    padding: 0 10px;
	    border: 1px solid #42362f;
	    box-sizing: border-box;
	    background: #42362f;
	    color: #fff !important;
	    font-family: 'Nanum Gothic', '나눔고딕', 'dotum', '돋움', sans-serif;
	    font-size: 14px;
	    font-weight: bold;
	    text-align: center;
	    line-height: 40px;
	    cursor: pointer;
	}

</style>	

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



	<table class="notice_head">
		<tr>
			<th>제목</th>
			<td>${oneNotice.title}</td>

			<th>조회수</th>
			<td style="width: 100px;">${oneNotice.readcount}</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td class="space_right">하빈펫푸드</td>

			<th>작성일</th>
			<td style="width: 150px;">${oneNotice.registerday}</td>
		</tr>
	</table>
		
	<div class="notice_contents">

		<c:if test="${empty oneNotice.photoname}">
			<div></div><br/><br/>
		</c:if>
		
		<c:if test="${not empty oneNotice.photoname}">
			<div id="imagecontent" style="margin: 40px;"><img src="/Semi_Team1/images/customerCenter/${oneNotice.photoname}"/></div><br/><br/>
		</c:if>

		<div id="content">${oneNotice.content}</div>
	</div>
	
	<div class="btn_cover">
		<a href="javascript:history.back();"><span class="box_btn">목록</span></a>
	</div>
		
</div><%--	cs_Container : 바깥 테두리	 --%>	
	
	
	
<jsp:include page="/WEB-INF/footer_dog.jsp" />









	
	    
    