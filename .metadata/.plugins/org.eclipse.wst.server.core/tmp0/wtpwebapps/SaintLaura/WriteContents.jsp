<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역</title>
<style type="text/css">
	/* Tag */
	table{
		width: 100%;
    	border-top: 1px solid #ccc;
    	border-collapse: collapse;
	}
	
	tr, td {
		border-bottom: solid 1px #ccc;
    	border-collapse: collapse;
		padding: 5px;
		
	}
	
	td {
		height: 40px;
	}
	
	input {
		height: 33px;
	}
	
	th {
		border-Right: 1px solid white;
		
	}
	form {
		margin: 200px;
	}
	
	body {
		margin: 100px;
	}
	
	/* Class . */
	.A {
		background-color: black;
		color: white;
		width: 80px;
		
	}
	
	/* ID # */
	#contents {
		width: 100%;
		height: 200px;
	}

</style>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	
		<h2>주문/배송조회</h2>
		<h5>고객님의 최근 주문내역입니다. 상담을 원하시면 주문번호.상품명을 선택해주세요.</h5>
		    <table align="center">
		    	<tr>
		    		<td style="border: solid 1px black; height: 0px; background-color: black;" colspan="5"></td>
		    	</tr>
		    	
				<tr>
					<td style="width: 100px;">주문번호</td>
			        <td style="width: 100px">주문일자</td>
			        <td style="width: 100px">결제금액</td>
			        <td style="width: 100px">상품명</td>
			        <th style="width: 100px">배송상태</th>
				</tr>
				
				<tr>
		    		<td></td>
		    		<td></td>
		    		<td></td>
		    		<td></td>
		    		<td></td>
		    	</tr>    
				
		    </table>
</body>
</html>