<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
	alert("${message}");
	location.href="${loc}"; // 페이지 이동
	
	self.close(); // 팝업창 닫기
	opener.location.reload(true); // 부모창 새로고침

 	
</script>    