<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String ctxPath = request.getContextPath();
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    
<jsp:include page="../header.jsp"/>

<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<style type="text/css">

#main_container{ 
	background-color: #f2f2f2;	
	font-family: 'Roboto', sans-serif;
	
	min-width:1400px;
	width:100%;
	margin:0 auto;
	padding: 150px 0 50px; 
} 

#second_container {   
	background-color: white;
	width : 1320px;
	margin : 0 auto;
	padding : 40px;
	
}

.main_title {
    margin: 0 0 20px;
    padding: 0 0 15px;
    border-bottom: 1px solid #e8e8e8;
    min-height: auto;
    overflow:hidden;
}

h2 {
	width: 100px;
	display: inline-block;
}


.main_title p {
    display: inline-block;
    margin: 0 0 0 6px;
    padding: 0 0 0 10px;
    font-size: 11px;
    color: #949494;
    font-weight: normal;
    height: 30px;
    width: 100px;

}

.search {
    float: right;
    width: 55%;
    text-align: right;
}


#search_date {
    margin: 0 2px 0 22px;
}

.search select {
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


.btn_write {
    display: inline-block;
    vertical-align: top;
    width: 56px;
    height: 36px;
    font-size: 13px;
    color: #fff;
    line-height: 36px;
    letter-spacing: 1px;
    text-decoration: none;
    background: #464646;
    border-radius: 2px;
    text-align: center;
}


.search_main{
    margin-bottom: 20px;
    overflow:hidden;
}


table {
	width: 100%;
	border-collapse: separate;
    border-spacing: 0px;
    border: solid 0px;
}

 th {
    padding: 12px 0;
    border: 0;
    border-top: 1px solid #000;
    border-bottom: 1px solid #e3e3e3;
    background: #fcfcfc;
    font-weight: 400;
}

.td_title{
	text-align: center;
	width: 70px;
}

td {
    padding: 10px 6px;
    height: 32px;
    border: 0;
    border-bottom: 1px solid #e8e8e8;
    font-size: 13px;
    color: #555;
} 

.txtBreak{
	width: 1120px;
}
.notice_content{
	width: 100%;
	text-align: center;
	padding: 50px 0;
	
}





</style>




<div id="main_container">
	
	<div id="second_container">
	
		<div class="main_title">
            <h2><font>NOTICE</font> </h2>
			<p>공지사항입니다.</p>
        </div>
		
		<form method="GET">
			
		   <div class="search_main">	
		   
				<div class="search">
					검색어 입력
					<select id="search_date" name="search_date" fw-filter="" fw-label="" fw-msg="">
						<option value="week">일주일</option>
						<option value="month">한달</option>
						<option value="month3">세달</option>
						<option value="all">전체</option>
					</select> 
					<select id="search_key" name="search_key" fw-filter="" fw-label="" fw-msg="">
						<option value="subject">제목</option>
						<option value="content">내용</option>
						<option value="writer_name">글쓴이</option>
						<option value="member_id">아이디</option>
						<option value="nick_name">별명</option>
					</select> 
					<input id="search" name="search" fw-filter="" fw-label="" fw-msg="" class="inputTypeText" placeholder="" value="" type="text">
					 <a href="#none" onclick="BOARD.form_submit('boardSearchForm');" class="btn_write">검색</a>
				</div>
				
		  </div>	
		</form>


			<div class="notice_first_title">
				<table border="1" summary="">
					<thead
						class="listheader">
						<tr style="">
							<th scope="col">번호</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
						</tr>
					</thead>
					<tbody
						class="notice_second_title">
						
					<c:forEach var="noticevo" items="${nvoList}">
						<tr style="background-color: #FFFFFF; color: #555555;">
							<td class="td_title">공지</td>
							<td class="txtBreak"><strong>
								 <a name="num" href="notice_read.ej?num=${noticevo.notice_num}">${noticevo.title}</a> 
							<span class="txtEm"></span></strong></td>
							<td style="text-align: center;">${noticevo.username}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<p class="notice_content">검색결과가 없습니다.</p>
			</div>

		</div>


</div>


<jsp:include page="../footer.jsp"/>