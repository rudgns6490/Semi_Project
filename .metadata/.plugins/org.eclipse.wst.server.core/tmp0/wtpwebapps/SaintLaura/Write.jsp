<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <!-- bootstrap button -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<title>Write</title>
<style type="text/css">
	/* Tag */
	table{
		width: 100%;
    	border-top: 1px solid #ccc;
    	border-collapse: collapse;
	}
	
	tr, td {
		border-bottom: solid 1px #ccc;
		border-Right: solid 1px #ccc;
    	border-collapse: collapse;
		padding: 5px;
		
	}
	
	td {
		height: 40px;
	}
	
	input {
		height: 33px;
		outline: none;
		vertical-align: top;
	}
	
	th {
		border-Right: 1px solid white;
		
	}
	form {
		margin: 200px;
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
	
	textarea {
		list-style: none;
 		font-family: "campton", "Apple SD Gothic Neo", NanumBarunGothic, "나눔바른고딕", Malgun Gothic, "맑은 고딕", dotum, sans-serif;
/*  		margin: 0; */
/*  		border-radius: 0; */
/* 		-webkit-appearance: none; */
/* 		display: block; */
/* 		width: 100%; */
/* 		overflow: auto; */
		padding: 9px 14px;
		border: 1px solid #ccc;
/* 		background: transparent; */
		outline: none; /* 아웃라인 파란틀 제거 */
		vertical-align: top; /* 틀을 table 에 맞추어줌*/
		box-sizing: border-box;
		font-size: 16px;
		color: #303033;
		line-height: 20px;
		font-weight: 400;
		resize: none; /* 오른쪽 밑에 화살표 없애주는것 */
	}

</style>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

</script>


</head>
<body>
	<form id="writeForm" name="writeForm" action="writeForm.do" method="post" enctype="multipart/form-data">
<!-- 	   <fieldset> -->
<!-- 			<legend align="center">글쓰기</legend> -->

				<h2>문의하기</h2>
			    <table align="center">
			    	<tr>
		    			<td style="border: solid 1px black; height: 0px; background-color: black;" colspan="4"></td>
		    		</tr>
					<tr>
						<td style="width: 100px;">주문번호</td>
				        <td style="width: 100px"><input>&nbsp<button type="button" class="btn btn-default">주문번호</button></td>
						<td style="width: 100px">주문금액</td>
						<th style="width: 100px">원</th>
					</tr>
					
					<tr>
						<td>주문일자</td>
						<td></td>
						<td>결제방법</td>
						<th></th>
					</tr>
					
					<tr>
						<td>성명</td>
						<td colspan="3" style="border-Right: 1px solid white;"></td>
					</tr>
					   
					<tr>
						<td>아이디</td>
						<td colspan="3" style="border-Right: 1px solid white;"></td>
					</tr>
					   
					<tr>
						<td>이메일</td>
						<td colspan="3" style="border-Right: 1px solid white;"></td>
					</tr>
					
					<tr>
						<td>제목</td>
					  	<td colspan="3" style="border-Right: 1px solid white;"><input name="title" maxlength="50"></td>
					</tr>
					
					<tr>
						<td>내용</td>
						<td colspan="3" style="border-Right: 1px solid white;"><textarea type="textarea" style="width: 100%; height: 200px" name="memo" maxlength="300" ></textarea></td>
					</tr>
					
					<tr align="center">
						<td colspan="4" style="border-Right: 1px solid white;">
							<button type="button" class="btn btn-default A" value="등록">등록</button>
<!-- 							<button type="reset" class="btn btn-default A" value="취소">수정</button> -->
							&nbsp&nbsp&nbsp&nbsp&nbsp
							<button type="button" class="btn btn-default A" value="취소">목록이동</button>
						</td>	
					</tr>
			    </table>
			    
<!-- 	    </fieldset> -->
	</form>
</body>
</html>