<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../header.jsp" />

<style type="text/css">
	div#memberInfo {
		width: 50%; 
		text-align: left;
		border: solid 0px red;
		margin-top: 30px; 
		font-size: 13pt;
		line-height: 200%;
	}
	
	span.myli {
		display: inline-block;
		width: 90px;
		border: solid 0px blue;
	}
</style>
	
 <c:if test="${empty member}">
 	존재하지 않는 회원입니다.<br/>
 </c:if>	
	
 <c:if test="${not empty member}">	
	 <h3>::: ${member.name}님의 회원 상세정보 :::</h3>
	 <div id="memberInfo">
	 <ol>	
		 <li><span class="myli">회원번호 : </span>${member.idx}</li>
		 <li><span class="myli">아이디 : </span>${member.userid}</li>
		 <li><span class="myli">회원명 : </span>${member.name}</li>
		 <li><span class="myli">이메일 : </span>${member.email}</li>
		 <li><span class="myli">휴대폰 : </span>${member.hp1}-${member.hp2}-${member.hp3}</li>
		 <li><span class="myli">우편번호 : </span>${member.post1}-${member.post2}</li>
		 <li><span class="myli">주소 : </span>${member.addr1}&nbsp;${member.post2}</li>
		 <li><span class="myli">성별 : </span>${member.gender}</li>
		 <li><span class="myli">생년월일 : </span>${member.birthyyyy}.${member.birthmm}.${member.birthdd}</li>
		 <li><span class="myli">나이 : </span>${member.age}세</li> 
		 <li><span class="myli">코인액 : </span><fmt:formatNumber value="${member.coin}" pattern="###,###" /> 원</li>
		 <li><span class="myli">포인트 : </span><fmt:formatNumber value="${member.point}" pattern="###,###" /> POINT</li>
		 <li><span class="myli">가입일자 : </span>${member.registerday}</li>
	  </ol>
	  </div>
  </c:if>
  
  <button style="margin-top: 20px;" type="button" onclick="javascript:history.back();">회원목록</button>
    
<jsp:include page="../footer.jsp" /> 
   