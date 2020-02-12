<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String ctxPath = request.getContextPath();  %> 

<jsp:include page="../header.jsp"/>

 

<style type="text/css">
	#wrap {
	    width: 100%;
	    margin: 0 auto;
	    padding: 150px 0 50px;
	    background: #f4f4f4;
	}
	#wrap {
	
	    position: relative;
	    
	    margin: auto 0;
	}
	
	#fixoContainer {
	    width: 1400px;
	    margin: 0 auto;
	    padding: 40px;
	    box-sizing: border-box;
	    background: #fff;
	}
	
	#sueccess {font-size: 30pt;}
	
	.spanBtn {
		border: solid 1px gray;
		padding: 10px 18px;
		background-color: #336699;
	}
	
	.homeBtn { padding: 10px 32px;}
	
	a { color: #fff; }
	a:hover{ color: black;  } 
	
</style>


<div id="wrap">
	
	<div id="fixoContainer" align="center">
 		
 		<span id="sueccess">결제가 성공적으로 완료 되었습니다.</span><br/><br/>
 		<span style="font-size: 20pt;">저희 쇼핑몰을 이용해 주셔서 감사합니다.</span><br/><br/><br/>
	
	<div>
		<span class="spanBtn homeBtn" style="font-size: 15pt;"><a href="<%= ctxPath%>/main.ej">Home</a></span>&nbsp;&nbsp;&nbsp;
		<span class="spanBtn" style="font-size: 15pt;"><a href="<%= ctxPath%>/orderSearch.ej">주문조회</a></span>
	</div>
	
	
	
	
	</div>
</div>



<jsp:include page="../footer.jsp"/>
