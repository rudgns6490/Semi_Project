<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<% 
	String ctxPath = request.getContextPath();
%>    
    
<jsp:include page="../header_dog.jsp" />

<title>이벤트</title>

<script type="text/javascript" src="<%= ctxPath%>/js/jquery-3.3.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

td {
	border-bottom: 0.5px solid lightgray;
	padding: 60px 40px;
	margin-left: 50px;
}

#display {
	width: 80%;
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

.container {
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

.content {
	width: 100%;
	margin: 0 auto;
}

.end {
	opacity: 0.2;
}

#btn {
	width: 100%;
	height: 250px;
	margin: 0 auto;
}

#btnMore {
	display: inline-block;
    width: 240px;
    height: 50px;
    font-size: 16px;
    color: #f5f5f5;
    text-align: center;
    line-height: 50px;
    background: #42362f;
    margin-top: 80px; 
    margin-left: 40%;
}

/* detail button */
.detail {
  display: inline-block;
  border-radius: 5px;
  background-color: lightgray;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 14px;
  padding: 8px;
  width: 170px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  margin-left: 30%;
  margin-top: 15px;
}

.detail span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.detail span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.detail:hover span {
  padding-right: 25px;
}

.detail:hover span:after {
  opacity: 1;
  right: 0;
}
/* /detail button */

</style>

<script type="text/javascript">

	$(document).ready(function(){

		$("#totalCount").hide();  
		$("#count").hide();
		
		display("1");
		
		$("#btnMore").click(function(){
				display($(this).val());				 
		});		
	
	});// end of $(document).ready()-----------------------
	     
	
	var len = 4; 
	
	function display(start) { 
		
		$.ajax({
			url:"/Semi_Team1/event/eventJson.dog", 
		 	data: {"start":start,  
		 		   "len":len},  
		 	dataType:"JSON", 
		 	success:function(json){  
		 		
		 		var html = "<table>";  

	 			$.each(json, function(index, item) {
	 				html += "<tr>";
		 				html += "<td><img src='/Semi_Team1/images/event/"+item.photoname+"' class='"+item.status+"'/></a></td>"; 
		 				html += "<td class='text'>";
			 				html += "<p style='font-weight:bold; font-size:16pt;'>"+item.name+"</p>";
			 				html += "<p> 이벤트 기간 : "+item.event_start+" ~ "+item.event_end+"</p>";
			 				if (item.status=='ing') {
			 					html += "<button onclick='go();' class='detail'><span>이벤트 상세보기</span></button>";
			 				}
			 				else {
			 					html += "<button onclick='stop();' class='detail'><span>이벤트 상세보기</span></button>";
			 				}
		 				html += "</td>";
	 				html += "</tr>";
	 			});
	 			
	 				html += "</table>";
	 			
		 		$("#display").append(html);
	 			  
	 			$("#btnMore").val(parseInt(start)+len);  
	 			
	 			$("#count").text( parseInt($("#count").text()) + json.length); 
	 			
	 			if( $("#count").text() == $("#totalCount").text() ) {
	 				$("#btnMore").hide();
	 				$("#count").text("0");
	 			} 		 				
		 	},
		 	error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}		 		 
		});// end of $.ajax()--------------------------------

	}// end of funtion display(start)-----------------------------
	
	
	function go() {
		
		location.href="eventDetail.dog";
	}
	
	function stop() {

		alert("종료된 이벤트는 조회할 수 없습니다.");	
	}
	
</script>


<div class="container">
	
	<div ><img src="/Semi_Team1/images/event/event_title.gif" style="width: 100%;"></div>

	<div class="s_title">
			EVENT
			<p>하림 펫푸드의 다양한 이벤트에 참여해 보세요.</p>
			
	</div>
	
	<div style="border-bottom: 5px solid #000;"></div>
	
	<div class="content">
		<div id="display"></div> 
		
		<div id='btn'>
			<button type="button" id="btnMore" value="">더보기</button>
			<span id="totalCount">${totalCount}</span>
			<span id="count">0</span>
		</div>
	</div>

</div>

<br/><br/><br/>

<jsp:include page="../footer_dog.jsp" />
