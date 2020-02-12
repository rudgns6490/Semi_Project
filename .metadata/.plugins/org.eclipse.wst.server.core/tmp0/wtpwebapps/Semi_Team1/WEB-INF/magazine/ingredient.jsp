<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<% 
	String ctxPath = request.getContextPath();
%>

<jsp:include page="../header_dog.jsp" />

<title>원료사전</title>

<script type="text/javascript" src="<%= ctxPath%>/js/jquery-3.3.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

/* tab */
.tab_menu {
	display: table;
  	margin-left:auto;
  	margin-right: auto;
  	padding: 0px;
}

.tab_menu li {	
	padding: 20px 50px 3px 50px;
 	list-style: none;
    float: left;
    border-bottom: 2px solid #dcdcdc;
    color: #000;
    font-size: 20px;
    font-weight: bold;
    text-align: center;
    cursor: pointer;
    line-height: 280%;
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

.container {
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

/* txt_title */
.txt_title {
	padding: 70px 0 40px 0; 
	text-align:center;
}

.k_s {
    margin-bottom: 5px;
    font-size: 18px;
    font-family: sans-serif;
}

.e_b {
    font-size: 56px;
    font-family: sans-serif;
    font-weight: bold;
}
/* /txt_title */

/* searchbar */
* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 15px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: white;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: light gray;
  color: white;
  font-size: 15px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
  
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
/* /searchbar */

.line {
    width: 1300px;
    height: 2px;
    margin: 40px auto;
    background: gray;
}

/* table */
table{	
	width: 1250px;
	margin: 0 auto;	
	border: none;
}

td {
	padding: 35px 20px 35px 20px;
	border-bottom: 0.5px solid lightgray;
}
/* /table */

/* pageBar */
#pageBar {
	margin: 10px 0;
    text-align: center;
    padding: 65px 0;
    color: black;
    font-size: 14pt; 
}

.move {
	color: silver;
	padding: 7px;
}

.move:hover { 
	text-decoration: none;
	background-color: silver;
	color: white;
}
/* /pageBar */

</style>

<script type="text/javascript">

	$(document).ready(function(){
	
		if("${searchWord}" != "") {  
			$("#searchWord").val("${searchWord}");	
		}  
		
		$("#searchWord").bind("keydown", function(event){
			if(event.keyCode == 13) {  
				goSearch();	
			}
		});

	});// end of $(document).ready()-----------------------
	
	
	function goSearch() {
		var frm = document.searchFrm;
		frm.method = "GET";
		frm.action = "ingredient.dog"; 
		frm.submit();
	}	

		
</script>


<div class="container">
	
	<div><img src="/Semi_Team1/images/magazine/magazine_title_img.jpg" style="width: 100%;"></div>
	
	<div>
		<ul class="tab_menu">
		      <li><a href="/Semi_Team1/magazine/cal.dog">하루 칼로리 계산</a></li>
		      <li><a href="/Semi_Team1/magazine/nutrient.dog">영양성분</a></li> 
		      <li class="over"><a href="/Semi_Team1/magazine/ingredient.dog">원료사전</a></li>
		      <li><a href="/Semi_Team1/magazine/humanGrage.dog">휴먼 그레이드</a></li>
		      <li><a href="/Semi_Team1/magazine/studio.dog">이달의 우수 제조시설</a></li>
		      <li><a href="/Semi_Team1/magazine/withDog.dog">반려견 동반출근</a></li>
		</ul>
	</div>
	
	<div class="txt_title">
	    <div class="k_s">원료사전</div>
	    <div class="e_b">INGREDIENT DICTIONARY</div>
	</div>
	
  		
	<form name="searchFrm" class="example" style="margin:auto; width:600px; padding: 15px 0 ;">
  		<input type="text" placeholder="검색하실 원료를 입력해주세요" id="searchWord" name="searchWord" />
  		<input type="text" style="display: none;" />
  		<button type="button" onclick="goSearch();"><i class="fa fa-search"></i></button>
	</form>
		
	<div class="line"></div>
	
	<div class="content">
	
		<table>
			<c:if test="${empty requestScope.list}">
				<tr>
					<td colspan="3" style="text-align: center; font-size: 16pt;">해당하는 원료가 없습니다.</td>
				</tr>
			</c:if>
			
			<c:if test="${not empty requestScope.list}">
				<c:forEach var="ingredientvo" items="${list}">
					<tr>
						<td style="font-size: 13pt; font-weight: bold; width: 200px; text-align: center;">${ingredientvo.name}</td>
						<td><img src="/Semi_Team1/images/magazine/ingredient/${ingredientvo.photoname}.jpg" /></td> 
						<td style="font-size: 12pt; line-height: 200%; letter-spacing: 1px; word-spacing: 1px;">${ingredientvo.explanation}</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		
	</div>
	
</div>

<div id="pageBar">  
	${pageBar} 
</div>

<jsp:include page="../footer_dog.jsp" />