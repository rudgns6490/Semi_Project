<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>

<%-- 
*** (요구사항6) ***
웹브라우저에서 회원가입창을 띄우게 한 후 데이터베이스의 NOT NULL 컬럼에 입력될 아이디와 성명을 입력하지 않고 가입할 경우나 
SQL구문에 오류가 있을시 SQLException 이 발생하는데 SQLException 발생시 에러페이지로 이동할 수 있도록
page 지시자의 isErrorPage 속성을 이용한 /WEB-INF/ncstestMember/error.jsp 를 생성하시오.
--%>
<%
	String ctxPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error.jsp</title>
</head>
<body>
	<h2>에러 : ${errorMsg}</h2>
	<a href="<%=ctxPath %>/ncstest/memberRegister.do">입력페이지로 돌아가기</a>
</body>
</html>

	<%-- 
	//   == 1.강동하 == 	
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<span style="font-weight: bold; font-size: 24pt">에러 : ${errorMsg }</span>
	<br>
	입력페이지로 돌아가기
</body>
</html>​	
	--%>
		
	<%--
	//   == 2.김경훈 == 
		
	--%>
		
	<%--
	//   == 3.김면중 == 
		
	--%>	

	<%--
	//   == 4.김민태 == 
		
	--%>
	
	<%--
	//   == 5.김민하 == 
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>error.jsp</title>

</head>

<body>



<h1>${ requestScope.errorMsg }</h1>

<h4 style="text-decoration: underline; color:purple;" onclick="javascript:history.back();">입력페이지로 돌아가기</h4>



</body>

</html>​		
	--%>
	
	<%--
	//   == 6.김용호 == 
		
	--%>
	
	<%--
	//   == 7.김유나 == 
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>SQL 관련 오류 발생 시 보여주는 것</title>

</head>

<body>

처리도중 SQL 관련 오류가 발생했습니다.<br/>

오류메시지: <span style="color: red;">${requestScope.errorMsg}</span>

</body>

</html>​		
	--%>
	
	<%--
	//   == 8.김학민 == 
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8" isErrorPage="true"%>



 



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>SQL 관련 오류 발생시 보여주는 것</title>

</head>

<body>

처리도중 SQL 관련 오류 발생했습니다.</br>

오류메시지 : <span style="color: red;">${errorMsg}</span>

</body>

</html>​		
	--%>
	
	<%--
	//   == 9.김현준 == 
	<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8" isErrorPage="true"%>

 

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>SQL 관련 오류 발생시 보여주는 것</title>

</head>

<body>

처리도중 SQL 관련 오류 발생했습니다.<br/>

오류메시지 : <span style="color: red;">${requestScope.errorMsg}</span> 

</body>

</html>​	
	--%>
	
	<%--
	//   == 10.김현지 == 
	<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8" errorPage="true"%>

<% 

	String errorMsg = (String)request.getAttribute("errorMsg"); 

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>error.jsp</title>

</head>

<body>

	

	<%= errorMsg %>

	<a href="memberRegister.do">입력페이지로 돌아가기</a>

	

</body>

</html>​	
	--%>
	
	<%--
	//   == 11.도우석 == 
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SQL 관련 오류 발생 시 보여주는 것</title>
</head>
<body>
	처리도중 SQL 관련 오류가 발생했습니다.<br/>
	오류 메시지: <span style="color: red;">${ errorMsg }</span>

</body>
</html>​
		
	--%>
	
	<%--
	//   == 12.박수빈 == 
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="margin-left: 20px;">
	<h2>에러 : SQL문 장애발생으로 데이터 입력 실패함!!</h2>
	
	<a href="/MyMVC/ncstest/memberRegister.do">입력페이지로 돌아가기</a>
</body>
</html>​	
	--%>
	
	<%--
	//   == 13.박수연 == 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>

    

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>error.jsp</title>

</head>

<body>

처리도중 SQL 관련 오류가 발생했습니다. <br/>

</body>

</html>​		
	--%>
	
	<%--
	//   == 14.박시준 == 	
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러</title>
</head>
<body>
	에러:SQL문 장애발생으로 데이터 입력 실패함!!!<br/>
	오류 메시지 : <span style="color: red;">${requestScope.errorMsg}</span>
</body>
</html>
	--%>
	
	<%--
	//   == 15.박유진 == 
		
	--%>
	
	<%--
	//   == 16.서승헌 == 
	<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8" isErrorPage="true" %>

<%

String ctxPath = request.getContextPath();

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>error.jsp</title>

</head>

<body>

<h2>에러 : ${errorMsg}</h2>

<a href="<%=ctxPath %>/ncstest/memberRegister.do">입력페이지로 돌아가기</a>

</body>

</html>	
	--%>
	
	<%--
	//   == 17.송민하 == 	
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>

   

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title></title>

</head>

<body>

에러 :SQL문 장애로 데이터 입력 실패함 <br/>  

오류메세지:<span style="font-weight: bold;">${requestScope.errorMsg}</span>

<label>입력페이지로돌아가기</label>

</body>

</html>​
	--%>
	
	<%--
	//   == 18.심예은 ==
	 	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SQL관련 오류 발생 시 보여주는 페이지</title>
</head>
<body>
처리 도중 SQL관련 오류가 발생했습니다.<br/>
오류메세지 : <span style="color:red;">${errorMsg}</span>
</body>
</html>​
	--%>
	
	<%--
	//   == 19.양현재 == 	
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	에러 :  <%= request.getAttribute("errorMsg") %><br>

	<a href=  "<%= request.getContextPath() %>/ncstest/memberRegister.do">입력페이지로 돌아가기</a>

</body>
</html>​
	--%>
		
	<%--
	//   == 20.오세진 == 	
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SQL 오류 </title>
</head>
<body>
처리도중 SQL 관련 오류 발생했습니다.<br/>
오류메시지 : <span style="color: red; font-weight: bold;">${requestScope.errorMsg}</span> 
</body>
</html>
	--%>
	
	<%--
	//   == 21.유기현 == 	
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<span style="font-weight: bold; font-size: 24pt">에러 : ${errorMsg }</span>
	<br>
	입력페이지로 돌아가기
</body>
</html>
	--%>
	
	<%--
	//   == 22.윤정유 == 	
	<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8" isErrorPage="true"%>

    					

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>SQL 관련 오류 발생시 보여주는 것</title>

</head>

<body>

에러 :${requestScope.errorMsg}<br/>

<a href="/MyMVC/ncstest/memberRegister.do">입력페이지로 돌아가기</a>

</body>

</html>
	--%>
	
	<%--
	//   == 23.이민형 == 	
	
	--%>
	
	<%--
	//   == 24.이병희 == 	
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SQL 관련 외외 오류 발생시 보여주는 것</title> 
</head>
<body>
<h1>에러 : <span style="color: blue;">${requestScope.errorMsg}</span></h1>
<a href="http://localhost:9090/MyMVC/ncstest/memberRegister.do">입력페이지로 돌아가기</a> 
</body>
</html>
	--%>
	
	<%--
	//   == 25.임소미 == 	
	<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8" isErrorPage="true"%>



    

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>error.jsp</title>

</head>

<body>

<span style="color: red;">${requestScope.errorMsg}</span>

</body>

</html>
	--%>
	
	<%--
	//   == 26.임용준 == 	
	<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8" isErrorPage="true"%>





<!DOCTYPE html>



<html>

<head>

<meta charset="UTF-8">

<title>SQL관련 오류</title>

</head>

<body>

	처리도중 SQL관련 오류가 발생했습니다.<br/>

	오류메시지 : <span style="color: red;">${requestScope.errorMsg}</span>

</body>

</html>​
	--%>
	
	<%--
	//   == 27.정하빈 == 	
	<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8" isErrorPage="true"%>

 

<% String ctxPath = request.getContextPath(); %>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>error.jsp</title>

</head>

<body>

	<span style="font-weight: bold; font-size: 22pt;">에러 : SQL문 장애발생으로 데이터 입력 실패함!!</span><br><br>

	<a href="<%= ctxPath %>/ncstest/memberRegister.do">입력페이지로 돌아가기</a>

</body>

</html>​
	--%>
	
	<%--
	//   == 28.지서영 == 	
	
	--%>
	
	<%--
	//   == 29.최효민 == 	
	<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8" isErrorPage="true"%>

<!DOCTYPE html>s

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>

에러페이지<br/>

<%=request.getAttribute("errorMsg") %>

</body>

</html>​
	--%>
	
	<%--
	//   == 30.호정풍 == 	
	
	--%>
	
	   