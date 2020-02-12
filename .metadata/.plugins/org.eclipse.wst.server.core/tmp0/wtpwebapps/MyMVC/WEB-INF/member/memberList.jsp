<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String ctxPath = request.getContextPath();
    //     /MyMVC
%>
    
<jsp:include page="../header.jsp" />

<style type="text/css">
	tr.memberInfo:hover {
		background-color: #e6ffe6;
		cursor: pointer;
	}
</style>


<script type="text/javascript">
  $(document).ready(function(){
      // console.log(${sizePerPage});
      // 10   5    3
    
     /* 
      console.log("searchType : " + "${searchType}");
      console.log("searchWord : " + "${searchWord}");
     */
      if("${searchWord}" != "") {
    	  $("#searchType").val("${searchType}");
    	  $("#searchWord").val("${searchWord}");
      }
     
	  
	  $("#sizePerPage").val("${sizePerPage}");
	  
	  // *** select 태그에 대한 이벤트는 click 이 아니라 change 이다. *** // 
	  $("#sizePerPage").bind("change", function(){
		  var frm = document.memberFrm;
		  
		  frm.method = "GET";
		  frm.action = "<%= ctxPath%>/member/memberList.up";
		  frm.submit();
	  });
	  
	  
	  $("#searchWord").bind("keydown", function(event){
		  if(event.keyCode == 13) {
			  goSearch();
		  }
	  });
	  
	  
	  $("tr.memberInfo").click(function(){
		  var idx = $(this).children(".idx").text();
	   // alert(idx);
	      location.href="<%= ctxPath%>/member/memberOneDetail.up?idx="+idx+"";  
	  });
	  
  });// end of $(document).ready()---------------------
  
  
  function goSearch() {
	  // alert("검색하러 갑니다.");
	  var frm = document.memberFrm;
	  frm.method = "GET";
	  frm.action = "memberList.up";
	  frm.submit();
  }
  
</script>

	<h2 style="margin: 20px;">::: 회원전체 목록 :::</h2>
	
	<form name="memberFrm">
		<select id="searchType" name="searchType">
			<option value="name">회원명</option>
			<option value="userid">아이디</option>
			<option value="email">이메일</option>
		</select>
		<input type="text" id="searchWord" name="searchWord" />
		<input type="text" style="display: none;">
		<button type="button" onclick="goSearch();" style="margin-right: 30px;">검색</button>
		
		<span style="color: red; font-weight: bold; font-size: 12pt;">페이지당 회원명수-</span>
		<select id="sizePerPage" name="sizePerPage">
			<option value="10">10</option>
			<option value="5">5</option>
			<option value="3">3</option>
		</select>
    </form>

	<table id="memberTbl" class="table table-bordered" style="width: 90%; margin-top: 20px;">
        <thead>
        	<tr>
        		<th>회원번호</th>
        		<th>아이디</th>
        		<th>회원명</th>
        		<th>이메일</th>
        		<th>성별</th>
        	</tr>
        </thead>
        
        <tbody>
		<c:if test="${empty requestScope.memberList}">
			<tr>
				<td colspan="5">가입된 회원이 없습니다.</td>
			</tr>
		</c:if>
	
		<c:if test="${not empty requestScope.memberList}">
			<c:forEach var="membervo" items="${memberList}">
				<tr class="memberInfo">
					<td class="idx">${membervo.idx}</td>
					<td>${membervo.userid}</td>
					<td>${membervo.name}</td>
					<td>${membervo.email}</td>
					<td>${membervo.gender}</td>
				</tr>
			</c:forEach>
		</c:if>
		</tbody>
	</table>

    <div>
    	<%-- <a href="memberList.up?currentShowPageNo=1&sizePerPage=${sizePerPage}">1</a>&nbsp; 
    	<a href="memberList.up?currentShowPageNo=2&sizePerPage=${sizePerPage}">2</a>&nbsp; 
    	<a href="memberList.up?currentShowPageNo=3&sizePerPage=${sizePerPage}">3</a> --%>
    	${pageBar}
    </div>
<jsp:include page="../footer.jsp" />








