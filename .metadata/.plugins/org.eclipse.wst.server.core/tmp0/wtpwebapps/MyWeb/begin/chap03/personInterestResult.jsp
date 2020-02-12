<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>    
    
<%
	Object obj = request.getAttribute("paramap");
    HashMap<String, String> paramap = (HashMap<String, String>) obj; 
    
    String ctxPath = request.getContextPath();
    //  ctxPath ==>  /MyWeb
    
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인성향 결과 페이지</title>

<style type="text/css">
	span.customFont {
		font-size: 14pt;
		font-weight: bold;
	}
	
	li {
		line-height: 200%;
	}
	
	label {
		/* border: solid 1px red; */
		
		display: inline-block;
		width: 150px;
		text-align: left;
	}
	
	div#colorDiv {
		display: inline-block;
		position: relative;
		top: 10px;
	}
	
	img {
		margin: 20px;
	}
	
</style>

<script type="text/javascript" src="<%= ctxPath%>/js/jquery-3.3.1.min.js"></script> 
<script type="text/javascript">
	$(document).ready(function(){

		var foodImages = "<%= paramap.get("foodImages") %>";
		
		var foodImageArr = foodImages.split(","); // 문자열 foodImages을 배열로 변환 
		
		$("div#colorDiv").css({'width':'30px'
			                  ,'height':'30px'
			                  ,'background-color':'<%= paramap.get("color")%>'
			                  });
		
		for(var i=0; i<foodImageArr.length; i++) {
			$("div#foodDiv").append("<img src='<%= ctxPath%>/begin/chap03/images/"+foodImageArr[i]+"' />");
		}// end of for-------------------
		
	});
</script>

</head>
<body>
	
	<ol>
		<li>
			<label>성명 :</label><span class="customFont"><%= paramap.get("name") %></span>
		</li>
		
		<li>
			<label>좋아하는 색 :</label><div id="colorDiv"></div>
		</li>
		
		<li>
			<label>학력 :</label><span class="customFont"><%= paramap.get("school") %></span> 
		</li>
		
		<li>
			<label>좋아하는 음식</label>
			<div id="foodDiv"></div>
		</li>
	</ol>
	
</body>
</html>





