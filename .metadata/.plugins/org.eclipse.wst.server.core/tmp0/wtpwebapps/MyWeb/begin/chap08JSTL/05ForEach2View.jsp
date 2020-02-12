<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    Object obj = request.getAttribute("nameArr");
    String[] nameArr = null;
    
    if(obj != null) {
    	nameArr = (String[]) obj;
    }
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원명단 출력하기</title>
</head>
<body>
    <h2>회원명단(스크립틀릿을 사용한 것)</h2>
	<ol>
<% 
	if(nameArr != null) {
		for(int i=0; i<nameArr.length; i++) { %>
			<li><%= nameArr[i]%></li>
	<%	}// end of for------------------------
	}

	else { %>
		<li>등록된 회원이 없습니다.</li>
 <%	} %>	
	</ol>
</body>
</html>





