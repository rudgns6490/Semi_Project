<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="header.jsp"></jsp:include>

<head>

<!-- bootstrap button -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
	<title>oderList</title>

	<style type="text/css">
		/* Tag */
	
		
		/* Class . */
		.orderLineColor1 {
			font-weight: bold;
			width: 100%;
		}
		
		.orderLineColor2 {
			font-weight: bold;
			color: grey;
		}
		
		.orderline1 {
			width: 100px;
			text-align: center;
		}
		
		.orderline2 {
			width: 350px;
		}
		
		.orderline3 {
			width: 100px;
			text-align: center;
		}
		
		/* ID # */
/* 		#line {
			overflow: scroll;
			overflow-x: hidden;
 		} 							*/
		
		#order {
			width: 0 auto;
			margin: 250px;
		}
		
		#status {
			background-color: #cccccc;
			text-align: center;
			border-radius: 5px;
		}
		
	</style>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		
	
	</script>
	
</head>
<body>
<div id="line">
	<div id="order">
		<form id="orderList">
			<h2>주문내역</h2>
			<hr style="border: solid 1px #ccc;">
			<table>
				<tr class="orderLineColor1">
					<th class="orderline1">주문정보</th>
					<th class="orderline1">구매상품</th>
					<th class="orderline2"></th>
					<th class="orderline1">주문상태</th>
					<th class="orderline3">수량</th>
					<th class="orderline1">결제금액</th>
				</tr>
				
				<tr class="orderLineColor2">
					<th class="orderline1">#102585301<br>(2019.11.09)</th>
					<th class="orderline1"><img src="">이미지</th>
					<th class="orderline2">Saint Laura Quilt Calf Skin Laura Bag<br>Black<br>Medium</th>
					<th class="orderline1">배송중<div id="status">배송추</div></th>
					<th class="orderline3">1</th>
					<th class="orderline1">₩3,562,000</th>
				</tr>
				
				<tr class="orderLineColor2">
					<th class="orderline1">#102585301<br>(2019.11.09)</th>
					<th class="orderline1"><img src="">이미지</th>
					<th class="orderline2">Saint Laura Quilt Calf Skin Laura Bag<br>Black<br>Medium</th>
					<th class="orderline1">배송중<div id="status">반품신</div></th>
					<th class="orderline3">1</th>
					<th class="orderline1">₩3,562,000</th>
				</tr>
			</table>
		</form>
		<br><br><br>
		<form id="returnList">
			<h2>반품내역</h2>
			<hr style="border: solid 1px #ccc;">
			<table>
					<tr class="orderLineColor1">
						<th class="orderline1">반품정보</th>
						<th class="orderline1">반품상품</th>
						<th class="orderline2"></th>
						<th class="orderline1">반품상태</th>
						<th class="orderline3">수량</th>
						<th class="orderline1">반품금액</th>
					</tr>
				
				<tr class="orderLineColor2">
					<th class="orderline1">#17829412<br>(2019.05.14)</th>
					<th class="orderline1"><img src="">이미지</th>
					<th class="orderline2">Saint Laura Quilt Calf Skin Laura Bag<br>Black<br>Medium</th>
					<th class="orderline1">반품완료</th>
					<th class="orderline3">1</th>
					<th class="orderline1">-₩3,562,000</th>
				</tr>
			</table>
		</form>
	</div>
</div>
</body>
</html>