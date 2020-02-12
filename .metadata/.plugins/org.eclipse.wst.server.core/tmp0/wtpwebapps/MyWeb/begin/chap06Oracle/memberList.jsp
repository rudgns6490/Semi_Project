<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.* , begin.chap06.oracle.model.MemberVO" %>    
    
<%
	Object obj = request.getAttribute("memberList");

    List<MemberVO> memberList = null;
    
    if(obj != null) {
   	   memberList = (List<MemberVO>) obj;
    }
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록 보여주기</title>

<style type="text/css">
	div#container {
		width: 95%;
		margin: 0 auto;
	}
	
	table {
		width: 90%;
		border: solid 1px gray;
		border-collapse: collapse;
		margin-top: 30px;
	}
	
	th, td {
		border: solid 1px gray;
		border-collapse: collapse;
	}

	tbody tr:hover {
		background-color: #ccc;
		cursor: pointer;
	}
	
	button { 
		margin-top: 30px;
	}

</style>

<script type="text/javascript">
	function goMemberDetail(userid) {
	 //	alert("회원아이디 "+userid+"님의 상세 정보를 보여줄 것입니다.");
	
	 // 자바스크립트에서 페이지 이동하기
	 // location.href="이동해야할 페이지 URL주소"; 로 한다.
	    location.href="detailMemberInfo.do?userid="+userid;
	}

</script>

</head>
<body>
	<div id="container">
		<h2>회원목록 보기</h2>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>회원명</th>
					<th>이메일</th>
					<th>가입일자</th>
				</tr>
			</thead>
			<tbody>
		<%
			if(memberList != null) {
				// 가입된 회원이 존재하는 경우 
				for(int i=0; i<memberList.size(); i++) { %>
					<tr>
						<td onclick="goMemberDetail('<%= memberList.get(i).getUserid() %>');"><%= i+1%></td>
						<td onclick="goMemberDetail('<%= memberList.get(i).getUserid() %>');"><%= memberList.get(i).getUserid() %></td>
						<td onclick="goMemberDetail('<%= memberList.get(i).getUserid() %>');"><%= memberList.get(i).getName() %></td>
						<td onclick="goMemberDetail('<%= memberList.get(i).getUserid() %>');"><%= memberList.get(i).getEmail() %></td>
						<td onclick="goMemberDetail('<%= memberList.get(i).getUserid() %>');"><%= memberList.get(i).getRegisterday() %></td> 
					</tr>
			<%	}// end of for----------------------
			}
		
			else {
				// 가입된 회원이 1명도 없는 경우  %>
				<tr>
					<td colspan="5">존재하는 회원이 없습니다</td>
				</tr>
		 <%	} %>
			</tbody>
		</table>
		
		<button type="button" onclick="javascript:location.href='memberRegister.do'">회원가입</button> 
		
	</div>
</body>
</html>





