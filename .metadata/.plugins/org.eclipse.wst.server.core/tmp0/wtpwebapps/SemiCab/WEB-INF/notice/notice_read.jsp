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
	margin: 0 auto;
	padding: 150px 0 50px; 
} 

#second_container {   
	background-color: white;
	width : 1320px;
	margin : 0 auto;
	padding : 40px;
	
}

.title {
    margin: 0 0 20px;
    padding: 0 0 15px;
    border-bottom: 1px solid #e8e8e8;
    min-height: auto;
    overflow:hidden;
}



h2{
    display: inline-block;
    padding: 0;
    color: #323232;
    font-size: 20px;
    *display: inline;
    *zoom: 1;
    background: none;
    line-height: 30px;
    font-weight: 700;
    vertical-align: top;
    line-height: 34px;

	}

p { 
    margin: 0;
    padding: 0;
}

 #noti {
    display: inline-block;
    margin: 0 0 0 6px;
    padding: 0 0 0 10px;
    font-size: 11px;
    color: #949494;
    line-height: 34px;
    font-weight: normal;
    height: 30px;
    vertical-align: top;
}



table {
	width: 100%;
	border-collapse: separate;
    border-spacing: 0px;
    border: solid 0px;
}

th {
    padding: 11px 0 10px 18px;
    border: 1px solid #dfdfdf;
    width: 130px;
    color: #353535;
    text-align: left;
    font-weight: normal;
    background-color: #fbfafa;
    border-bottom-width: 0;
}

.tdtitle {
    padding: 10px 6px;
    height: 32px;
    border: 1px solid #dfdfdf;
    font-size: 13px;
    color: #555;
    border-bottom-width: 0;
} 

.detail{
	padding: 30px 20px;
    height: 32px;
    border: 1px solid #dfdfdf;
    font-size: 13px;
    color: #555;
    text-align: left;
}


.base-button {
    margin: 10px 0 40px;
	}   
   
   
</style>


<div id="main_container">
	
	<div id="second_container">
	
		<div class="title">
	            <h2><font>NOTICE</font> </h2>
				<p id="noti">공지사항입니다.</p>
        </div>

			<div class="typeWrite">
				<table border="1" summary="">
	
					
					<tbody>
						<tr>
							<th>제목</th>
							<td class="tdtitle">${nvoReadList.title}</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td class="tdtitle">${nvoReadList.username} <span class="displaynone"></span>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="border: 0">
								<div class="detail">
									${nvoReadList.content}
								</div>
							</td>
						</tr>
						
					</tbody>
				</table>
			</div>
		
		<div class="base-button ">
            <span class="gLeft">
                <a href="/SemiCab/notice.ej"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_list.gif" alt="목록"></a>
            </span>
        </div>
		
		
		

		</div>


</div>

<jsp:include page="../footer.jsp"/>