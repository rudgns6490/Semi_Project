<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트에서 객체 표현 방법</title>

<script type="text/javascript" src="/MyMVC/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">

	var object = {"name":"이순신",
			      "age":25,
			      "address":"서울시"};
	
	var objArr = [{"name":"강감찬","age":20,"address":"서울시"}
	             ,{"name":"홍길동","age":35,"address":"인천시"}
	             ,{"name":"엄정화","age":45,"address":"경기도"}];

	$(document).ready(function(){
		
		$("#btn1").click(function(){
			$("#result").html("성명 : "+object.name+"<br/>"+"나이 : "+object.age+"<br/>"+"주소 : "+object.address);           
		});
		
		$("#btn2").click(function(){
			$("#result").empty();
			
			$.each(objArr, function(index, item){
				$("#result").append("번호:"+(index+1)+"&nbsp; 성명:"+item.name+"&nbsp; 나이:"+item.age+"&nbsp; 주소:"+item.address+"<br/>");
			});
		});
		
	});
</script>

</head>
<body>
	<button id="btn1">확인1</button>
	<button id="btn2">확인2</button>
	
	<div id="result">
	</div>
</body>
</html>



