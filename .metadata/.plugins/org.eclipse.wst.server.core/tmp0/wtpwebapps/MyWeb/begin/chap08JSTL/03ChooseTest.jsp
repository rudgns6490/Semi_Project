<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자를 입력받아서 1,3(남자)/2,4(여자)로 나타내기</title>

<script type="text/javascript">
	function goSubmit() {
		var frm = document.myFrm;
		frm.action = "03ChooseTestEnd.jsp";
	//	frm.method = "get";
		frm.submit();
	}
</script>

</head>
<body>
	<form name="myFrm">
    	숫자입력 : <input type="text" name="num" /><br/><br/>
    	<button type="button" onclick="goSubmit();">확인</button>
    	<button type="reset">취소</button>
    </form>
</body>
</html>