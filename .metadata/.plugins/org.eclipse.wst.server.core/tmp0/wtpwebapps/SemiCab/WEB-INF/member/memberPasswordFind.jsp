<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- -----------------------------------------------------HEADER 부분------------------------------------------------------ -->
<jsp:include page="../header.jsp"></jsp:include>
<!-- -----------------------------------------------------HEADER 부분 끝------------------------------------------------------ -->

<%-- --------------------------------------- C S S 시작 ----------------------------------------------------------------- --%>
<style>
	.background{
  	    width: 100%;
  	    background-color: #f2f2f2;
  	    min-height: 400px;
  	}
	.boundary{
  	    width: 1200px;
  	    margin: 0 auto;
  	    padding: 0 auto;
  	    background-color: #ffffff;
  	    min-height: 200px;
  	}
 	.side{
 		display:inline-block;
		width: 8%;
   		vertical-align: middle; 
   		min-height: 100px;
	 }
  	  .main{
  	  	width: 83%;
  	    margin: 0 auto;
  	    background-color: #ffffff;
	  }
	  
	  .title > .title_1{
	  		border-bottom: solid thin gray;
	  		margin: 0 auto;
	  		width: 91%;
	  }
	  
	  .title > .title_1 > .title_1_1{
	/*   		border: solid 1px black; */
	  		display: inline-block;
	  		width: 49%;
	  		height: 40px;
	  		vertical-align: middle;
	  }
	  
	  .title > .title_1 > .title_1_1_1{
	  		font-size: 14pt;
	  }
	  
	  .title > .title_1 > .title_1_1_2{
	  		font-size: 8pt;
	  		text-align:right;
	  		margin-bottom: 3px;
	  		position: relative; top: 13px;
	  }
	  .title_1 > p {
	  		font-size: 8pt;
	  		color: gray;
	  }
	  .main > .main_body{
	  	  	border: solid 1px gray; 
	  	  	margin: 0 auto;
	  		width: 91%;
	  }

</style>
<%-- --------------------------------------- C S S 끝 ----------------------------------------------------------------- --%>

<%-- ---------------------------------------S C R I P T 시작----------------------------------------------------------------- --%> 
<script>	
	$(document).ready(function(){
		
		$("#radio_email").prop(":checked");
		$(".find_email").show();
		$(".find_mobile").hide();
		
		var flag = false;
		$("input:radio[name=select_type]").click(function(){
			var find_email = $("input:radio[id=radio_email]").prop("checked");
			var find_mobile = $("input:radio[id=radio_mobile]").prop("checked");
			
			if(find_email){
				$(".find_email").show();
				$(".find_mobile").hide();
				
				return;
			}
		
			if(find_mobile){
				$(".find_email").hide();
				$(".find_mobile").show();
				return;
			}
		});
		
	});

	function passwordFindGo(){
		
		var frm = document.userpasswordFindFrm
		
		frm.method = "POST";
		frm.action = "<%= request.getContextPath()%>/memberPasswordFindAction.ej";
		frm.submit();
	}
</script>
<!-- -----------------------------------------------------Password 찾기 부분 시작------------------------------------------------------ -->
<form name="userpasswordFindFrm">
<div class="background">
	<div style="height:150px; width: 100%; background-color: #f2f2f2;"></div>
	
	<div class="boundary">
		
		<div style="height:70px; width: 100%; background-color: #ffffff;"></div>
		
		<div class="side">
		</div>
	
		<div class="main">
			
			<div class="title">
				<div class="title_1" style="border-bottom: solid 1px gray;">
					<div class="title_1_1 title_1_1_1"><strong>비밀번호 찾기</strong></div>
					<div class="title_1_1 title_1_1_2"><span class="side_title"><a href="main.ej">홈</a>	>	비밀번호 찾기</span></div>
				</div>
			</div>
			
			<div style="height:20px; width: 100%; background-color: #ffffff;"></div>
			
			<div class="main_body">
				
				<div style="height:20px; width: 100%; background-color: #ffffff;"></div>
				
				<div style="text-align: center;"><b>비밀번호 찾기</b></div>
				
				<div style="height:20px; width: 100%; background-color: #ffffff;"></div>
				
				<div style="width:100%; text-align: center;">
					<div>	
						<div style="display:inline-block; width:20%;">▶  회원유형</div>
						<div style="display:inline-block; width:15%;">
							<select name="job" size="1">
							    <option value="memberstatus1">개인회원</option>
							    <option value="memberstatus2">개인 사업자회원</option>
						    </select>
						</div>
					</div>
					
					<div>
						<div style="display:inline-block; width:20%;"></div>
						<div style="display:inline-block; width:15%;">
							<input type="radio" name="select_type" id="radio_email" style="vertical-align: middle;" />
							<label for="radio_email" style="font-size: 8pt;">이메일</label>
							<input type="radio" name="select_type" id="radio_mobile" style="vertical-align: middle;" />
							<label for="radio_mobile" style="font-size: 8pt;">휴대전화</label>
						</div>
					</div>
					
					<div style="height:20px; width: 100%; background-color: #ffffff;"></div>
					
					<div>	
						<div style="display:inline-block; width:20%;">▶  아이디</div>
						<div style="display:inline-block; width:15%;">
							<input type="text" style="width: 120px;"/>
						</div>
					</div>
					
					<div>	
						<div style="display:inline-block; width:20%;">▶  이름</div>
						<div style="display:inline-block; width:15%;">
							<input type="text" style="width: 120px;"/>
						</div>
					</div>
					
					<div class="find_email" id="find_email">	
						<div style="display:inline-block; width:20%;">▶  이메일로 찾기</div>
						<div style="display:inline-block; width:20%;">
							<input type="text" style="width: 120px;"/>
						</div>
					</div>
									
					<div class="find_mobile" id="find_mobile">	
						<div style="display:inline-block; width:20%;">▶  휴대폰 번호로 찾기</div>
						<div style="display:inline-block; width:20%;">
							<select name="mobile1">
								<option value="010">010</option>
								<option value="010">011</option>
								<option value="010">016</option>
								<option value="010">017</option>
								<option value="010">019</option>
							</select>
							-
							<input name="mobile2" type="text" style="width: 30px;" maxlength="4"/>
							-
							<input name="mobile3" type="text" style="width: 30px;" maxlength="4"/>
						</div>
					</div>
					
					<div style="height:20px; width: 100%; background-color: #ffffff;"></div>
					
					<div>
						<button style="width: 15%; height:45px; background-color: black; color: white;" type="button" onclick="passwordFindGo()">확 인</button>
					</div>
					
					<div style="height:20px; width: 100%; background-color: #ffffff;"></div>
					
				</div>
				
				
	
			</div>
	
	
		</div>
		
		<div class="side">
		</div>
		
		<div style="height:50px; width: 100%; background-color: #f2f2f2;"></div>
		
	</div>
</div>
</form>
<!-- -----------------------------------------------------Password 찾기 부분 끝------------------------------------------------------ -->

<!-- -----------------------------------------------------FOOTER 부분------------------------------------------------------ -->
<jsp:include page="../footer.jsp"></jsp:include>
<!-- -----------------------------------------------------FOOTER 부분 끝------------------------------------------------------ -->
    
    