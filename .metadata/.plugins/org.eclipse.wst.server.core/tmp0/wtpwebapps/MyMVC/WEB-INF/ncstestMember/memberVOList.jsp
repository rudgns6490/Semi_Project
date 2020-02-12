<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberVOList.jsp</title>
<style type="text/css">
	table {border: 1px solid gray; border-collapse: collapse;}
	th,td {border: 1px solid gray; padding: 5px 10px 5px 10px;}
</style>
</head>

<body>
<h2>회원정보</h2>
<table>
	<thead>
		<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>성명</th>
		<th>나이</th>
		<th>성별</th>
		</tr>
	</thead>
	<tbody>
	<%-- (요구사항 10) 번호, 아이디, 성명, 나이, 성별이 보여지도록 하시오. --%>
	<c:if test="${not empty memberVOList}">
		<c:forEach var="vo" items="${memberVOList}" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${vo.userId}</td>
			<td>${vo.userName}</td>
			<td>${vo.age}</td>
			<td>${vo.sexual}</td>
		</tr>
		</c:forEach>
	</c:if>

	<c:if test="${empty memberVOList}">
		<tr>
			<td colspan="5">가입된 회원이 없습니다.</td>
		</tr>
	</c:if>
	<%-- 
	//   == 1.강동하 == 	
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>memberVOList.jsp</title>

<style type="text/css">
table {
	border: 1px solid gray;
	border-collapse: collapse;
}

th, td {
	border: 1px solid gray;
	padding: 5px 10px 5px 10px;
}
</style>

</head>

<body>

	<h2>회원정보</h2>
<c:if test="${memberList == null }">
	회원이 없습니다.
</c:if>
<c:if test="${memberList != null }">
	<table>

		<thead>
			<tr>

				<th>번호</th>

				<th>아이디</th>

				<th>성명</th>

				<th>나이</th>

				<th>성별</th>

			</tr>

		</thead>

		<tbody>

			
			<c:forEach var="memberVOList" items="${memberList }" varStatus="status">
			<tr>
					<th>${status.count }</th>
					<th>${memberVOList.userId }</th>
					<th>${memberVOList.userName }</th>
					<th>${memberVOList.age }</th>
					<th>${memberVOList.sexual }</th>
			</tr>
			</c:forEach>


		</tbody>

	</table>
</c:if>
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
		<tr>

	<td>1</td>

	<td>${ userId }</td>

	<td>${ userName }</td>

	<td>${ age }</td>

	<td>${ gender }</td>

</tr>
	--%>
	
	<%--
	//   == 6.김용호 == 
		
	--%>
	
	<%--
	//   == 7.김유나 == 
	<c:if test="${!empty memberList}">
					<c:forEach var="memberVO" items="${memberVOList}" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${memberVO.userid}</td>
							<td>${memberVO.name}</td>
							<td>${memberVO.age}</td>
							<td>${memberVO.sexual}</td>
						</tr>
					</c:forEach>
				</c:if>
				
				<c:if test="${empty memberVOList}">
					<tr>
						<td colspan="5">가입된 회원이 없습니다.</td>
					</tr>
				</c:if>
		
	--%>
	
	<%--
	//   == 8.김학민 == 
		
	--%>
	
	<%--
	//   == 9.김현준 == 
		
	--%>
	
	<%--
	//   == 10.김현지 == 
	<c:if test="${ !empty memberVOList }">

		<c:forEach var="memberList" items="${ memberList }" varStatus="status">

			<tr>

				<td>${status.count }</td>

				<td>${memberList.userId}</td>

				<td>${memberList.userName}</td>

				<td>${memberList.age}</td>

				<td>${memberList.sexual}</td>

			</tr>

		</c:forEach>

	</c:if>



	<c:if test="${ empty memberVOList }">

		<span style="color:red;">등록된 회원이 없습니다 !</span>

	</c:if>	
	--%>
	
	<%--
	//   == 11.도우석 == 
		<c:forEach var="memberVOList" items="${memberList }" varStatus="status">
			<tr>
					<th>${status.count }</th>
					<th>${memberVOList.userId }</th>
					<th>${memberVOList.userName }</th>
					<th>${memberVOList.age }</th>
					<th>${memberVOList.sexual }</th>
			</tr>
			</c:forEach>
	--%>
	
	<%--
	//   == 12.박수빈 == 
		<c:if test="${ not empty memberList}">
				<c:forEach items="${memberList}" var="memberVO" varStatus="status">
					<tr>	
 						<td>${status.count}</td>
						<td>${memberVO.userId}</td>
						<td>${memberVO.userName}</td>
						<td>${memberVO.age}</td>
						<td>${memberVO.sexual}</td>
					</tr>
				</c:forEach>
			</c:if>
			
			<c:if test="${ empty memberList}">
				<c:forEach items="${memberList}">
					<td colspan="5"> 현재 등록된 회원이 없습니다. </td>
				</c:forEach>
			</c:if>
	--%>
	
	<%--
	//   == 13.박수연 == 
		<%
			if(memberVOList != null) {

				// 가입된 회원이 존재하는 경우

				for(int i=0; i<memberVOList.size(); i++){ %>

					<tr>

						<td><%= i+1%></td>

						<td><%= memberVOList.get(i).getUserId() %></td>

						<td><%= memberVOList.get(i).getUserName() %></td>

						<td><%= memberVOList.get(i).getAge() %></td>

						<td><%= memberVOList.get(i).getSexual() %></td>

					</tr>

				<%	} 

			}

			else { %>

				<tr>

					<td colspan="5">존재하는 회원이 없습니다.</td>

				</tr>

			<% } %>
	--%>
	
	<%--
	//   == 14.박시준 == 	
	
	--%>
	
	<%--
	//   == 15.박유진 == 
		
	--%>
	
	<%--
	//   == 16.서승헌 == 
		<c:if test="${ mbrList != null }">
		
			
			
			<c:forEach var="mbrList" items="${ mbrList }" varStatus="status" >
				<tr>
					<td>${ status.count }</td>
					
					<td>${ mbrList.userId }</td>
					
					<td>${ mbrList.userName }</td>
					
					<td>${ mbrList.age }</td>
					
					<td>${ mbrList.sexual }</td>
				</tr>
			</c:forEach>
					
		</c:if>
		
		<c:if test="${ mbrList == null }">
		
			<tr>
			
				<td colspan = "5">가입된 회원이 없습니다.</td>
				
			</tr>
		
		</c:if>
	--%>
	
	<%--
	//   == 17.송민하 == 	
	<span><%=member.getUserid() %></span>
	--%>
	
	<%--
	//   == 18.심예은 ==
	 	<c:if test="${!empty memberList}"> 

					<c:forEach var="memberVO" items="${memberList}" varStatus="status" >

						<tr>

							<td>${status.count}</td> 	

							<td>${memberVO.userId}</td> 

							

							<td>${memberVO.userName}</td>

							<td>${memberVO.age}</td>

							<td>${memberVO.sexual}</td>

						</tr>	

					</c:forEach>

				</c:if>		

				

				<c:if test="${empty memberList}"> 

					<tr>

						<td colspan="5">가입된 회원이 없습니다.</td>

					</tr>

				</c:if>	
	--%>
	
	<%--
	//   == 19.양현재 == 	
	<c:if test="${ memberList != null }">



	<c:forEach var="mvo" items="${ memberList }" varStatus="status" >

					

		<tr>

			<td>${ status.count }</td>

			<td>${ mvo.userId }</td>

			<td>${ mvo.userName }</td>

			<td>${ mvo.age }</td>

			<td>${ mvo.sexual }</td>

		</tr>

		

	</c:forEach>





</c:if>
	--%>
		
	<%--
	//   == 20.오세진 == 	
	<c:if test="${not empty memberList}">
			
				<c:forEach var="memberVO" items="${memberList}" varStatus="status">
				
					<tr>
						<td>${status.count}</td>
						<td>${memberVO.userid}</td>
						<td>${memberVO.username}</td>
						<td>${memberVO.age}</td>
						<td>${memberVO.sexual}</td>
					</tr>
				</c:forEach>
				
			</c:if>
			
			<c:if test="${empty memberList}">
			
				<tr>
					<td colspan="5">가입된 회원이 없습니다.</td>
				</tr>
				
			</c:if>
	
	--%>
	
	<%--
	//   == 21.유기현 == 	
	<c:forEach var="memberVOList" items="${memberList }" varStatus="status">
			<tr>
					<th>${status.count }</th>
					<th>${memberVOList.userId }</th>
					<th>${memberVOList.userName }</th>
					<th>${memberVOList.age }</th>
					<th>${memberVOList.sexual }</th>
			</tr>
			</c:forEach>
	--%>
	
	<%--
	//   == 22.윤정유 == 	
	<c:if test="${memberlist ne null}">
				<c:forEach var="memberVO" items="${memberList}" varStatus="status" >
				<tr>		
					<td>${status.count}</td>		
					<td>${memberVO.userId}</td>	
					<td>${memberVO.userName}</td>	
					<td>${memberVO.age}</td>	
					<td>${memberVO.sexual}</td>	
				</tr>
				</c:forEach>
				</c:if>
	--%>
	
	<%--
	//   == 23.이민형 == 	
	
	--%>
	
	<%--
	//   == 24.이병희 == 	
	
	--%>
	
	<%--
	//   == 25.임소미 == 	
	<c:if test="${not empty requestScope.memberList}">	
				<c:forEach var="memberVO" items="${memberList}" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${memberVO.userId}</td>
						<td>${memberVO.userName}</td>
						<td>${memberVO.age}</td>
						<td>${memberVO.sexual}</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty memberList}">
				<tr>
					<td colspan="5" >가입된 회원이 없습니다</td>
				</tr>
			</c:if>
	--%>
	
	<%--
	//   == 26.임용준 == 	
	<%	if(memberList != null) {

				// 가입된 회원이 존재하는 경우.

				for(int i=0; i<memberList.size(); i++ ) { 

	%>

		<tr>

			<td><%= i+1 %></td>

			<td><%= memberList.get(i).get("userId") %></td>

			<td><%= memberList.get(i).get("userName") %></td>

			<td><%= memberList.get(i).get("age") %></td>

			<td><%= memberList.get(i).get("gender") %></td>

		</tr>	

	<%	}	%>
	--%>
	
	<%--
	//   == 27.정하빈 == 	
	
	--%>
	
	<%--
	//   == 28.지서영 == 	
	
	--%>
	
	<%--
	//   == 29.최효민 == 	
	<%

	if(memberList != null){ //가입된 회원 존재

		for( int i=0; i<memberList.size(); i++ ){ 

	%>

			<tr>

				<td><%=i+1 %></td>

				<td><%=memberList.get(i).getUserId()%></td>

				<td><%=memberList.get(i).getUserName()%></td>

				<td><%=memberList.get(i).getBirthday()%></td>

				<td><%=memberList.get(i).getGender()%></td>

			</tr>

	<% 

	}

	}

	else{ //가입된 회원 없음 

	%> 

		<tr>

			<td colspan="5">존재하는 회원이 없습니다</td>

		</tr>

	<%

	}

	%>
	--%>
	
	<%--
	//   == 30.호정풍 == 	
	
	--%>	

	</tbody>
</table>
</body>
</html>
