<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String ctxPath = request.getContextPath();
    //     /MyMVC
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery Ajax 예제(XML)</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style type="text/css">

	span.custom {
		display: inline-block;
	}

	span.mytitle {
		color: navy; 
		font-size: 12pt; 
		font-weight: bold;
	}
	
</style>

<script type="text/javascript">
	$(document).ready(function(){
	//	alert("하하하");
	
		func_imgList();
		
		func_newsTitleList();
		
		func_memberList();
		
		
		$("#searchBtn").click(function(){
			func_searchName();
		}); 
		
		
		$("#name").bind("keydown", function(event){
			if(event.keyCode==13) {
				// 엔터이라면 
				func_searchName();
			}
		});
		
	}); // end of $(document).ready()-------------------
	
	
	function func_imgList() {
		
		$.ajax({
			url:"<%= ctxPath%>/ajaxstudy/xmltestImage.up",
			dataType:"xml",
			success: function(xml){
				// xml => ajax 요청에 의해 url(xmltestImage.up)서버로 부터 리턴받은 데이터이다. 
				
				var rootElement = $(xml).find(":root");
				// 넘겨받은 결과물 xml 에서 최상위 root 엘리먼트를 찾아주는 것.
				
			//	console.log("확인용 : " + $(rootElement).prop("tagName"));
				// 확인용 : pictures
				
				var pictureArr = $(rootElement).find("picture");
				/*
				    최상위 root 엘리먼트에서 picture 라는 엘리먼트를 찾는 것.
				    검색되어진 picture 라는 엘리먼트는 복수개 이므로
				  pictureArr 변수는 타입이 배열타입으로 되어진다.  
				*/
				
			    var html = "<div id='myCarousel' class='carousel slide' data-ride='carousel'>";
					    
			       <%-- Indicators --%>
				   html += "<ol class='carousel-indicators'>";
			
			       for(var i=0; i<pictureArr.length; i++) {
			    	    if(i==0) {
			    		   html += "<li data-target='#myCarousel' data-slide-to='"+i+"' class='active'></li>";  
			    	    }
			    	    else {
			    		   html += "<li data-target='#myCarousel' data-slide-to='"+i+"'></li>";
			    	    }
			       }// end of for-------------------
					      
				   html += "</ol>";
				 
				 
				   <%-- Wrapper for slides --%>
				   html += "<div class='carousel-inner'>";
				   
				   var cnt = 0;
				   pictureArr.each(function(){ // 반복문
					    cnt++;	// alert(cnt++);
					    if(cnt==1) {
					    	html += "<div class='item active'>";	
						    html +=    "<img src='/MyMVC/images/"+$(this).find("imgfilename").text()+"' style='width:100%;' />"; 
						    html += "</div>";
					    }
					    else {
					    	html += "<div class='item'>";	
						    html +=    "<img src='/MyMVC/images/"+$(this).find("imgfilename").text()+"' style='width:100%;' />"; 
						    html += "</div>";
					    }    
					});
				
				   html += "</div>";
				   
				   <%-- Left and right controls --%>
				   html += "<a class='left carousel-control' href='#myCarousel' data-slide='prev'>";
				   html +=   "<span class='glyphicon glyphicon-chevron-left'></span>";
				   html +=   "<span class='sr-only'>Previous</span>";
				   html += "</a>";
				   html += "<a class='right carousel-control' href='#myCarousel' data-slide='next'>";
				   html +=   "<span class='glyphicon glyphicon-chevron-right'></span>";
				   html +=   "<span class='sr-only'>Next</span>";
				   html += "</a>";
				   
				   html += "</div>";
				   
				   $("#imgList").html(html);
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		});
		
	}// end of function func_imgList()-----------------
	
	
	function func_newsTitleList() {
		
		$.ajax({
			url:"<%= ctxPath%>/ajaxstudy/xmltestNewsTitle.up",
			dataType:"xml",
			success: function(xml){
				// xml => ajax 요청에 의해 url(xmltestImage.up)서버로 부터 리턴받은 데이터이다. 
				
				var rootElement = $(xml).find(":root");
				// 넘겨받은 결과물 xml 에서 최상위 root 엘리먼트를 찾아주는 것.
				
			//	console.log("확인용 : " + $(rootElement).prop("tagName"));
				// 확인용 : newsTitleList
				
				var newsTitleArr = $(rootElement).find("newsTitle");
				/*
				    최상위 root 엘리먼트에서 newsTitle 라는 엘리먼트를 찾는 것.
				    검색되어진 newsTitle 라는 엘리먼트는 복수개 이므로
				  newsTitleArr 변수는 타입이 배열타입으로 되어진다.  
				*/
				
				var html = "<div>";
				html += "<ul style='list-style-type: none;'>";
				
				html += "<span class='custom mytitle' style='width: 50px;'>연번</span>";
				html += "<span class='custom mytitle' style='width: 300px;'>기사제목</span>";
				html += "<span class='custom mytitle' style='width: 200px;'>입력일자</span>";
				
				newsTitleArr.each(function(){ // 반복문
					html += "<li>";
					html += "<span class='custom' style='width: 50px;'>"+$(this).find("no").text()+"</span>";
					html += "<span class='custom' style='width: 300px;'>"+$(this).find("title").text()+"</span>";
					html += "<span class='custom' style='width: 200px;'>"+$(this).find("registerday").text()+"</span>";
					html += "</li>";
				});
				
				html += "</ul>";
				html += "</div>";
				
				$("#newsTitleList").html(html);
				
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		});
		
	}// end of function func_newsTitleList()-----------------
	
	
	function func_memberList() {
		
		$.ajax({
			url:"<%= ctxPath%>/ajaxstudy/xmltestMember.up",
			dataType:"xml",
			success: function(xml){
				// xml => ajax 요청에 의해 url(xmltestMember.up)서버로 부터 리턴받은 데이터이다. 
				
				var rootElement = $(xml).find(":root");
				// 넘겨받은 결과물 xml 에서 최상위 root 엘리먼트를 찾아주는 것.
				
			//	console.log("확인용 : " + $(rootElement).prop("tagName"));
				// 확인용 : memberList
				
				var memberArr = $(rootElement).find("member");
				/*
				    최상위 root 엘리먼트에서 member 라는 엘리먼트를 찾는 것.
				    검색되어진 member 라는 엘리먼트는 복수개 이므로
				    memberArr 변수는 타입이 배열타입으로 되어진다.  
				*/
				
				var html  = "<table class='table table-bordered'>";
				    html += "<thead>";
				    html += "<tr>";
				    html += "<th>아이디</th>";
				    html += "<th>성명</th>";
				    html += "<th>이메일</th>";
				    html += "<th>성별</th>";
				    html += "</tr>";
				    html += "</thead>";
				    html += "<tbody>";
				    
				    memberArr.each(function(){ // 반복문
				    	html += "<tr>";
				    	html += "<td>"+$(this).find("userid").text()+"</td>";
				    	html += "<td>"+$(this).find("name").text()+"</td>";
				    	html += "<td>"+$(this).find("email").text()+"</td>";
				    	html += "<td>"+$(this).find("gender").text()+"</td>";
				    	html += "</tr>";
				    });
				    
				    html += "</tbody>";
				    html += "</table>";
				    
				    $("#memberList").html(html);
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		});
		
	}// end of function func_memberList()-----------------
	
	
	function func_searchName() {
		
		$.ajax({
	    	url:"<%= ctxPath%>/ajaxstudy/xmltestMember.up",
	    	type:"GET", 
	    	data:{'name':$("#name").val()},
	    	dataType:"xml",
	    	success:function(xml){
				var rootElement = $(xml).find(":root");
				
				var memberArr = $(rootElement).find("member");
				
				var html  = "<table class='table table-bordered'>";
				    html += "<thead>";
				    html += "<tr>";
				    html += "<th>아이디</th>";
				    html += "<th>성명</th>";
				    html += "<th>이메일</th>";
				    html += "<th>성별</th>";
				    html += "</tr>";
				    html += "</thead>";
				    html += "<tbody>";
				    
				    memberArr.each(function(){ // 반복문
				    	html += "<tr>";
				    	html += "<td>"+$(this).find("userid").text()+"</td>";
				    	html += "<td>"+$(this).find("name").text()+"</td>";
				    	html += "<td>"+$(this).find("email").text()+"</td>";
				    	html += "<td>"+$(this).find("gender").text()+"</td>";
				    	html += "</tr>";
				    });
				    
				    html += "</tbody>";
				    html += "</table>";
				    
				    $("#memberList").html(html);
	    	},
	    	error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
	    });	
		
	}// end of function func_searchName()---------------
	
</script>

</head>
<body>
	<h3> 여기는 URL이 MyMVC/ajaxstudy/xmltestMain.up 인 페이지 입니다.</h3>
		
	<div id="imgList" style="width: 40%; margin: 0 auto; padding: 30px 0 0 0;">
	</div>
	
	<div id="newsTitleList" style="display: inline-block; border: solid 0px red; margin: 30px 20px;">
	</div>
	
	<div style="display: inline-block; border: solid 0px red; margin: 30px 20px;">
		<div id="memberList">
		</div>
		<div>
			<form name="searchFrm">
				<label for="name" style="margin-right: 20px;">이름검색</label>
				<input type="text" id="name" />
				<input type="text" style="display: none;" />   
				<span id="searchBtn" style="display: inline-block; width: 70px; height: 20px; border: solid 1px navy; border-radius: 10px; text-align: center; font-size: 9pt; background-color: navy; color: white; cursor: pointer; margin-left: 20px;">확인</span>
			</form>
		</div>
	</div>
	
</body>
</html>








