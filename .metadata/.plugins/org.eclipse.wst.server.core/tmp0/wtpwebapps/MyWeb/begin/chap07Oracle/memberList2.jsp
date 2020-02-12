<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
    
<%
    Object obj = request.getAttribute("memberList");

    List<HashMap<String, String>> memberList = null;
    
	if(obj != null) {
		memberList = (List<HashMap<String, String>>) obj;
	}
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록 보여주기2</title>
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
		location.href="detailMemberInfo2.do?userid="+userid;
	}

</script>

</head>
<body>
	<div id="container">
		<h2>회원목록 보기2</h2>
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
				for(int i=0; i<memberList.size(); i++){ %>
					<tr>
						<td onclick="goMemberDetail('<%= memberList.get(i).get("userid") %>');"><%= i+1%></td>
						<td onclick="goMemberDetail('<%= memberList.get(i).get("userid") %>');"><%= memberList.get(i).get("userid") %></td>
						<td onclick="goMemberDetail('<%= memberList.get(i).get("userid") %>');"><%= memberList.get(i).get("name") %></td>
						<td onclick="goMemberDetail('<%= memberList.get(i).get("userid") %>');"><%= memberList.get(i).get("email") %></td>
						<td onclick="goMemberDetail('<%= memberList.get(i).get("userid") %>');"><%= memberList.get(i).get("registerday") %></td> 
					</tr>
			<%	}// end of for---------
			
			}
		    
			else { %>
				   <tr>
				   	   <td colspan="5">가입된 회원이 없습니다</td>
				   </tr>
			<% } %>
			</tbody>
		</table>
		
		<button type="button" onclick="javascript:location.href='memberRegister2.do'">회원가입</button> 
		
	</div>
</body>
</html>



