<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberRegister.jsp</title>
<style type="text/css">
	.layer {width: 60%; margin: 0 auto;}
	ul {list-style-type: none;}
	li {margin: 20px 0 0 0;}
	button#btnOK {margin: 0 0 0 50px; padding: 5px 10px 5px 10px; font-size: 12pt; font-weight: bolder;}
</style>

<script type="text/javascript">
	function goRegister() {
		var frm = document.registerFrm;
		frm.action = "<%=ctxPath %>/ncstest/memberRegister.do";
		frm.method = "POST";
		frm.submit();
	}
</script>
</head>

<body>
	<div class="layer">
	<h2>회원가입</h2>

	<%-- *** (요구사항1) JSP 입력폼 페이지를 작성 하시오. *** --%>
    <form name="registerFrm">
	<ul>
		<li>아이디<br/>
			<input type="text" name="userId" value="" required="required" />
		</li>
		
		<li>성명<br/>
			<input type="text" name="userName" value="" required="required" />
		</li>
		
		<li>생년월일 (예: 19950402)<br/>
			<input type="text" name="birthday" value="" required="required" placeholder="19950402" />
		</li>
		
		<li><label for="man">남</label>
			<input type="radio" name="gender" id="man" value="1" checked="checked" />
		</li>
		
		<li><label for="woman">여</label>
			<input type="radio" name="gender" id="woman" value="2" />
		</li>
		
		<li>
			<button type="button" id="btnOK" onclick="goRegister();">확인</button>
		</li>
	</ul>
	</form>
	<%-- 
	//   == 1.강동하 == 	
	<form name="registerFrm">
		<ul>
		<li>
			<label>아이디</label><br>
			<input type="text" name="userId" id="userId"/>
		</li>

		<li>
			<label>성명</label><br>
			<input type="text" name="userName" id="userName"/>
		</li>

		<li>
			<label>생년월일(예: 19950402)</label><br>
			<input type="text" name="birthday" id="birthday" placeholder="19950402"/>
		</li>

		<li>
			<label>남</label>
			<input type="radio" name="gender" id="male" value="1"/><br><br>
			<label>여</label>
			<input type="radio" name="gender" id="female" value="2"/>
		</li>

		<li>
			<button type="button" id="btnOK" onclick="goRegister();">확인</button>
		</li>

		</ul>	
	</form>
	--%>
		
	<%--
	//   == 2.김경훈 == 
		
	--%>
		
	<%--
	//   == 3.김면중 == 
<div class="layer">
<div id="container">
		<fieldset>
			<legend>회원가입</legend>
			<ul>
				<li>
					<label for="userid">아이디</label>
					<input type="text" name="userid" id="userid" value="" maxlength="20" required autofocus autocomplete="off" />
				</li>

				<li>
					<label for="name">성명</label>
					<input type="text" name="name" id="name" value="" maxlength="20" required />
				    <span class="error name_error"></span>
				</li>

				<li>
					<label>생년월일 (예 : 19950402)</label>
					<input type="text" name="jubun1" id="jubun1" size="10" maxlength="6" required autocomplete="off" />&nbsp;-
				</li>

				<li>
					<label for="male">남자</label>
					<input type="radio" name="gender" id="male" value="1"/>							
					<label for="female">여자</label>
					<input type="radio" name="gender" id="female" checked="checked"/>
				</li>

				<li>
					<input type="submit" value="회원가입" />
					<input type="reset" value="취소" />
				</li>
			</ul>
		</fieldset>
	</form>
</div>
</div>		
	--%>	

	<%--
	//   == 4.김민태 == 
		
	--%>
	
	<%--
	//   == 5.김민하 == 
<form name="registerFrm">
<ul>
	<li>
		<label for="userId">아이디</label>
	</li>

	<li>
		<input type="text" id="userId" name="userId" />
	</li>

	<li>
		<label for="userName">성명</label>
	</li>

	<li>
		<input type="text" id="userName" name="userName" />
	</li>

	<li>
		<label for="birthday">생년월일 (예: 19950402)</label>
	</li>

	<li>
		<input type="text" id="birthday" name="birthday" placeholder="19950402"/>
	</li>

	<li>
		<input type="radio" id="male" name="gender" value="1" />
		<label for="male">남</label>
	</li>

	<li>
		<input type="radio" id="female" name="gender" value="2" />
		<label for="female">여</label>
	</li>
</ul>
	<button type="button" id="btnOK" onclick="goRegister()">확인</button>
</form>	
--%>
	
	<%--
	//   == 6.김용호 == 
	<ul>
				<li>
					<label for="userid">아이디</label>
					<input type="text" name="userid" id="userid"><br/>
					<label for="name">성명</label>
					<input type="text" name="name" id="name"><br/>
					<label for="birthday">생년월일 (예: 19950402)</label>
					<input type="text" name="birthday" id="birthday" placeholder="19950402"><br/>
					<label for="gender">남</label>
					<input type="radio" name="gender" id="gender" value="1"><br/>
					<label for="gender">여</label>
					<input type="radio" name="gender" id="gender" value="2"><br/>
					<input type="submit" value="회원가입">
				</li>
		</ul>	
	--%>
	
<%--
	//   == 7.김유나 == 
	<ul>
    <li>
		<label for="userid">아이디</label>
		<input type="text" name="userid" id="userid" value="" maxlength="20" required autofocus autocomplete="off" />
	    <span class="error userid_error">아이디는 5글자 이상 10글자 이하로 첫글자는 영문대문자이고 나머지는 영문자,숫자로 혼합되어져야 합니다.</span>     
	</li>
	<li>
		<label for="userid">성명</label>
		<input type="text" name="name" id="name" value="" maxlength="20" required autofocus autocomplete="off" />  
	</li>
	<li>
		<label for="userid">생년월일</label>
		<input type="text" name="userid" id="userid" value="" maxlength="8" required autofocus autocomplete="19950402" />   
	</li>
	<li>
			<div class="gender">
				<label for="gender1">남</label><input type="radio" name="gender" id="gender1" value="남" />&nbsp;
			    <label for="gender2">여</label><input type="radio" name="gender" id="genderl2" value="여" />&nbsp;
			</div> 
	</li>
	<li>
		<input type="submit" value="확인"/>
	</li>
	
 </ul>	
--%>
	
	<%--
	//   == 8.김학민 == 
	<form name="registerFrm">
			<ul>
				<li>
					<label for="userid">아이디</label>
					<input type="text" name="userid" id="userid" value="" maxlength="20" required autofocus autocomplete="off" />
				</li>

				<li>
					<label for="name">성명</label>
					<input type="text" name="username" maxlength="20" required />
				</li>

				<li>
					<label for="email">생년월일</label>
					<input type="email" name="birthday"  maxlength="40" placeholder="19950402" required />
				</li>

				<li>
					<label for="male" class="gender">남자</label>
					<input type="radio" name="gender" id="male" value="1" checked/>
					<br/>
					<label for="female" class="gender">여자</label>
					<input type="radio" name="gender" id="female" value="2"  />
				<li/>				

				<li>
					<button type="button" value="확인" onclick="goRegister();"/>
				</li>
			</ul>
		</form>		
	--%>
	
	<%--
	//   == 9.김현준 == 
<form>
		<ul>
			<li>
				<label for="userid">아이디</label>
				<input type="text" name="userid" id="userid" value="" maxlength="20" required autofocus autocomplete="off" />
			</li>

			<li>
				<label for="name">성명</label>
				<input type="text" name="name" id="name" value="" maxlength="20" required />
			</li>

			<li>
				<label for="birthday">생년월일</label>
				<input type="number" name="birthday" id="birthday" value="" maxlength="20" required />
			</li>

			<li>
				<input type="radio" id="male" name="gender" value="1" /><label for="male" style="margin-left: 2%;">남자</label>
			    <input type="radio" id="female" name="gender" value="2" style="margin-left: 10%;" /><label for="female" style="margin-left: 2%;">여자</label>
			</li>

			<li>
				<input type="submit" onclick="goRegister();" value="확인" />
			</li>
		</ul>
	</form>		
	--%>
	
	<%--
	//   == 10.김현지 == 
	<form name="registerFrm">
		<div class="layer">
		
		<h2>회원가입</h2>
			<ul>
				<li>
					<label>아이디</label>
					<input type="text" id="userId" name="userId" autofocus />
				</li>
				
				<li>
					<label>성명</label>
					<input type="text" id="userName" name="userName"/>
				</li>
				
				<li>
					<label>생년월일 (예: 19950402)</label>
					<input type="text" id="birthday" name="birthday" placeholder="19950402"/>
				</li>
				
				<li>
					<label>남</label>
					<input type="radio" id="male" name="gender" value="1"/>
					
					<label>여</label>
					<input type="radio" id="female" name="gender" value="2"/>
				</li>
			</ul>
			<button type="button" onclick="goRegister();">확인</button>
		</div>
	</form>		
	--%>
	
	<%--
	//   == 11.도우석 == 
	<form name="registerFrm">

		<ul>
		<li>
			<label>아이디</label><br>
			<input type="text" name="userId" id="userId"/>
		</li>

		<li>
			<label>성명</label><br>
			<input type="text" name="userName" id="userName"/>
		</li>

		<li>
			<label>생년월일(예: 19950227)</label><br>
			<input type="text" name="birthday" id="birthday" placeholder="19950227"/>
		</li>

		<li>
			<label>남</label>
			<input type="radio" name="gender" id="male" value="1"/><br><br>
			<label>여</label>
			<input type="radio" name="gender" id="female" value="2"/>
		</li>

		<li>
			<button type="button" id="btnOK" onclick="goRegister();">확인</button>
		</li>
		</ul>	

		</form>		
	--%>
	
	<%--
	//   == 12.박수빈 == 
<form name="registerFrm">
<h2>회원가입</h2>
<ul>
	<li>
		<label for="userid">아이디</label><br/>
		<input type="text" name="userId" id="userid" value="" maxlength="20" required autofocus autocomplete="off" />
	</li>

	<li>
		<label for="name">성명</label><br/>
		<input type="text" name="userName" id="name" value="" maxlength="20" required />
	    <span class="error name_error"></span>
	</li>

	<li>
		<label for="birthday">생년월일 (예:19950402)</label><br/>
		<input type="text" name="birthday" id="birthday" placeholder="19950402" maxlength="20" required />
	    <span class="error name_error"></span>
	</li>

	<li>
		<label for="gender">남 </label>
		<input type="radio" name="gender" id="gender1" checked="checked" value="1" maxlength="20" required />
	    <br/><br/>

	    <label for="gender">여 </label>
		<input type="radio" name="gender" id="gender2" value="2" maxlength="20" required />
	</li>

	<li>
		<button type="button" id="btnOK" onclick="goRegister()">확인</button>
	</li>
</ul>	
</form>		
	--%>
	
	<%--
	//   == 13.박수연 == 
<form name="registerFrm">
<ul>
	<li>
		<label>아이디</label><br/>
		<input type="text" name="userId"/>
	</li>
	<li>
		<label>성명</label><br/>
		<input type="text" name="userName"/>
	</li>
	<li>
		<label>생년월일 (예: 19950402)</label><br/>
		<input type="text" placeholder="19950402" name="birthday"/>
	</li>
	<li>
		<label for="male">남</label>
		<input type="radio" name="gender" id="male" value="1"/>
	</li>
	<li>
		<label for="female">여</label>
		<input type="radio" name="gender" id="female" value="2"/>
	</li>
	<li>
		<button type="button" id="btnOK" onClick="goRegister()">확인</button>
	</li>
</ul>
</form>​		
	--%>
	
	<%--
	//   == 14.박시준 == 	
	<form name="registerFrm">
	<ul>
	    <li>아이디<br/>
            <input type="text" name="userId" value="" required="required" />
            </li>

            <li>성명<br/>
            <input type="text" name="userName" value="" required="required" />
            </li>

            <li>생년월일 (예: 19950402)<br/>
            <input type="text" name="birthday" value="" required="required" placeholder="19950402" />
            </li>

            <li><label for="man">남</label>
            <input type="radio" name="gender" id="man" value="1" checked="checked" />
            </li>

            <li><label for="woman">여</label>
            <input type="radio" name="gender" id="woman" value="2" />
            </li>

            <li>
            <button type="button" id="btnOK" onclick="goRegister();">확인</button>
            </li>
	</ul>
	</form>	
	--%>
	
	<%--
	//   == 15.박유진 == 
		
	--%>
	
	<%--
	//   == 16.서승헌 == 
	<form name = "registerFrm">
	<div>
		<div>아이디</div>
		<input type = "text" name = "userId" /> <br><br>

		<div>성명</div>
		<input type = "text" name = "userName" /> <br><br>

		<div>생년월일 (예:19950402)</div>
		<input type = "text" name = "birthday" placeholder="19950402" /> <br><br>

		<div>
			<label>남</label><input type = "radio" name = "gender" value = "1" /><br><br>
			<label>여</label><input type = "radio" name = "gender" value = "2" /><br><br>
		</div>

		<button type = "button" onclick = "goRegister();" >확인</button>
	</div>
</form>​	
	--%>
	
	<%--
	//   == 17.송민하 == 	
	<ul>
				<li>
					<label for="userId">아이디</label>
					<input type="text" name="userId" id="userId" value="" maxlength="20" required autofocus autocomplete="off" />
					  
				</li>
				<li>
					<label for="userName">성명</label>
					<input type="text" name="userName" id="userName" value="" maxlength="20" required />
					<span class="error name_error"></span>     
				</li>
				<li>
					<label for="birthday">생년월일</label>
					<input type="text" name="birthday" id="birthday" value="" maxlength="10" required />
					<span class="error name_error"></span>     
				</li>
				<label>학력</label>
					<div class="gender">
						<label for="gender">남</label><input type="radio" name="gender" id="gender1" value="1" />&nbsp;
				        <label for="gender">여</label><input type="radio" name="gender" id="gender2" value="2" />&nbsp;
				        <button type="button" onclick="">확인</button>
				    </div> 
			</ul>	
	--%>
	
	<%--
	//   == 18.심예은 ==
	<form name="registerFrm">
			<ul>
				<li>
					<label for="userId">아이디</label>
					<input type="text" name="userId" id="userId" value="" maxlength="20" required autofocus autocomplete="off" />
				</li>

				<li>
					<label for="userName">성명</label>
					<input type="text" name="userName" id="userName" value="" maxlength="20" required />
				    <span class="error name_error"></span>
				</li>

				<li>
					<label for="birthday">생년월일(예 : 19950402)</label><br/>
					<input type="text" name="birthday" id="birthday" placeholder="19950402"/>
				</li>

				<li>
					<label for="male" class="gender">남</label> 
					<input type="radio" name="gender" id="male" value="1"/>
					
					<label for="female" class="gender">여</label> 
					<input type="radio" name="gender" id="female" value="2"/>	
				</li>
	
				<li>
					<button type="button" id="btnOK" onclick="goRegister();">확인</button>
				</li>
			</ul>
	</form> 	
	--%>
	
	<%--
	//   == 19.양현재 == 	
	<form name="registerFrm">
		<ul>
			<li><label for="userId">아이디</label><br>
				<input type="text" id="userId" name="userId">
			</li>

			<li><label for="userName">성명</label><br>
				<input type="text" id="userName" name="userName">
			</li>

			<li><label for="birthday">생년월일 (예: 19950402)</label><br>
				<input type="text" id="birthday" name="birthday">
			</li>

			<li><label for="gender1">남</label><input type="radio" value="1" name="gender" id="gender1"></li>
			<li><label for="gender2">여</label><input type="radio" value="2" name="gender" id="gender2"></li>

			<li><button id="btnOK" type="button" onclick="goRegister();">확인</button></li>
		</ul>
	</form>	
	--%>
		
	<%--
	//   == 20.오세진 == 	
	<form name="registerFrm">
			<h2>회원가입</h2>	
			<ul>
				<li>
					<label for="userId">아이디</label><br>
					<input type="text" name="userId" id="userId" value="" autofocus="autofocus" />
				</li>

				<li>
					<label for="userName">성명</label><br>
					<input type="text" name="userName" id="userName" value=""/>

				</li>

				<li>
					<label for="birthday">생년월일 (예: 19950402)</label><br>
					<input type="text" name="birthday" id="birthday" value="" placeholder="19950402"/>
				</li>

				<li>
					<span>남</span><input type="radio" name="gender" id="gender0" value="1"/>
				</li>

				<li>
					<span>여</span><input type="radio" name="gender" id="gender1" value="2"/>
				</li>
			</ul>

			<button type="button" id="btnOK" onclick="goRegister()" >확인</button>
		</form>	
	--%>
	
	<%--
	//   == 21.유기현 == 	
	<form name="registerFrm">
		<ul>
		<li>
			<label>아이디</label><br>
			<input type="text" name="userId" id="userId"/>
		</li>
		<li>
			<label>성명</label><br>
			<input type="text" name="userName" id="userName"/>
		</li>
		<li>
			<label>생년월일(예: 19950402)</label><br>
			<input type="text" name="birthday" id="birthday" placeholder="19950402"/>
		</li>
		<li>
			<label>남</label>
			<input type="radio" name="gender" id="male" value="1"/><br><br>
			<label>여</label>
			<input type="radio" name="gender" id="female" value="2"/>
		</li>
		<li>
			<button type="button" id="btnOK" onclick="goRegister();">확인</button>
		</li>
		</ul>	
		</form>	
	--%>
	
	<%--
	//   == 22.윤정유 == 	
<form name="registerFrm">
	<ul>
		<li>아이디<br/><input type="text" name="userId" id="userId" required/></li>
		<li>성명<br/><input type="text" name="userName" id="userName" required/></li>
		<li>생년월일(예:19950402)<br/><input type="text" name="birthday" id="birthday" placeholder="19950402" required/></li>
		<li>남<input type="radio" name="gender" id="gender1" value="1" required/></li>
		<li>여<input type="radio" name="gender" id="gender2" value="2" required/></li>
		<li><button type="button" id="btnOK" onclick="goRegister();">확인</button></li>	
	</ul>
</form>	
	--%>
	
	<%--
	//   == 23.이민형 == 	
	<ul>
		<li>
			<label for="userid">아이디</label>
			<input type="text" name="userid" id="userid" value="" maxlength="20" required autofocus autocomplete="off" />
			<span class="error userid_error">5글자이상, 첫글자는 대문자이고 영문자, 숫자만 가능</span>     
		</li>
		<li>
			<label for="passwd">암호</label>
			<input type="password" name="passwd" id="passwd" value="" maxlength="20" required />
			<span class="error password_error">패스워드를 입력하세요</span>
		</li>
		<li>
			<label for="name">성명</label>
			<input type="text" name="name" id="name" value="" maxlength="20" required />
		    <span class="error name_error"></span>
		</li>
		<li>
			<label for="male" class="gender">남자</label>
			<Input type="radio" name="gender" id="male" value="1" checked/>
			<label for="female" class="gender">여자</label>
			<Input type="radio" name="gender" id="female" value="2"/>
		</li>	
		<li>	
			<input type="submit" class="button" id="btnOK" value="확인" />
		</li>	
	--%>
	
	<%--
	//   == 24.이병희 == 	
	<from >
			<ul>
			
			
				<li>
					<label for="userid">아이디</label><br>
					<input type="text" name="userid" id="userid" value="" maxlength="20" required autofocus autocomplete="off" />
<!-- 					<span class="error userid_error">아이디는 5글자 이상 10글자 이하로 첫글자는 영문대문자이고 나머지는 영문자,숫자로 혼합되어져야 합니다.</span> -->
				</li>
				<li>
					<label for="name">성명</label><br>
					<input type="text" name="name" id="name" value="" maxlength="20" required />
				    <span class="error name_error"></span>
				</li>
				<li>
					<label for="birthYear">생일월일 (예: 19950402)</label><br>
					<input type="number" name="birthYear" id="birthYear" maxlength="8" placeholder="19950402" />
				</li>
				<li>
					<label>남<input type="radio" name="gender" value="M" checked></label> <br>
					<label>여<input type="radio" name="gender" value="F"></label>
				</li>
				<li>
				<button type="button" id="btnOK" class="btn" onClick="goRegister();">확인</button>
				</li>
				
			</ul>
		</from>	
	--%>
	
	<%--
	//   == 25.임소미 == 	
<form name="registerFrm">

	<label>아이디</label><br/>
	<input type="text" name="userId" />
	<br/><br/>
	<label>성명</label><br/>
	<input type="text" name="userName" />
	<br/><br/>
	<label>생년월일(예: 19950402)</label><br/>
	<input type="text" placeholder="19950402" name="birthday" />
	<br/><br/>
	<label>남</label><input type="radio" name="gender" value="1"/><br/>
	<label>여</label><input type="radio" name="gender" value="2" />
	<br/><br/>
	<button type="button" onclick="goRegister();">확인</button> 

</form>​	
	--%>
	
	<%--
	//   == 26.임용준 == 	
<form name="registerFrm" action="<%= ctxPath%>/ncstest/memberRegister.do" method="post">
	<h2>회원가입</h2>
	<ul>
		<li>
			<label>아이디</label>
			<input type="text" name="userId"/>	
		</li>

		<li>
			<label>성명</label>
			<input type="text" name="userName"/>
		</li>

		<li>
			<label>생년월일 (예:19550402)</label>
			<input type="text" name="birthday"/>
		</li>

		<li>
			<label>남</label>
			<input type="radio" name="gender" class="gender" value="1"/>
			<label>여</label>
			<input type="radio" name="gender" class="gender" value="2"/>
		</li>

		<li>
			<input type="submit" value="확인" />
		</li>
	</ul>
	</form>	
	--%>
	
	<%--
	//   == 27.정하빈 == 	
	<form name="registerFrm">
			<h2>회원가입</h2>
			<ul>
				<li>
					<label for="userid">아이디</label><br>
					<input type="text" name="userId" id="userid" maxlength="20" required autocomplete="off">
				</li>

				<li>
					<label for="name">성명</label><br>
					<input type="text" name="userName" id="name" maxlength="20" required>

				</li>

				<li>
					<label for="birthday">생년월일 (예: 19950402)</label><br>
					<input type="number" name="birthday" id="birthday" maxlength="20" required placeholder="19950402">
				</li>

				<li>
					<label for="man">남</label>
					<input type="radio" name="gender" id="man" value="1"><br><br>
					<label for="woman">여</label>
					<input type="radio" name="gender" id="woman" value="2">
				</li>

				<li>
					<button type="button" onclick="goRegister();" id="btnOK">확인</button>
				</li>
			</ul>
		</form>	
	--%>
	
	<%--
	//   == 28.지서영 == 	
	
	--%>
	
	<%--
	//   == 29.최효민 == 	
	<form name="registerFrm">
			<table>
			<ul>
				<li><label>아이디</label></li>
				<li style="margin-top: 3px;"><input name="userId" type="text"></li>

				<li><label>성명</label></li>
				<li style="margin-top: 3px;"><input name="userName" type="text"></li>

				<li><label>생년월일(예: 19950402)</label></li>
				<li style="margin-top: 3px;"><input name="birthday" type="text" placeholder="19950402"></li>

				<li><label for="gender1">남</label><input id="gender1" name="gender" type="radio" value="1" checked="checked"></li>
				<li><label for="gender2">여</label><input id="gender2" name="gender" type="radio" value="2"></li>

				<li><button type="button" onclick="goRegister()">확인</button> </li>
			</ul>
			</table>
		</form>
	--%>
	
	<%--
	//   == 30.호정풍 == 	
<form action="/ncstest/memberRegister.do">
	<ul>
		<li>
			<label for="userId">아이디</label><br/>
			<input type="text" name="userId " id="userId "/> 
		</li>
		
		<li>
			<label for="userName">성명</label><br/>
			<input type="text" name="userName" id="userName"/> 
		</li>
		
		<li>
			<label for="birthday">생년월일</label><br/>
			<input type="text" name="birthday" id="birthday"/> 
		</li>
		<li>
			<label for="gender1">남</label><br/>
			<input type="radio" name="gender" id="gender1" value="1"/>
		</li>
		<li>
			<label for="gender2">여</label><br/>
			<input type="radio" name="gender" id="gender2" value="2"/>
		</li>
		<li>
			<input type="submit" value="확인" />
		</li>
	</ul>
</form>	
	--%>
	</div>
</body>
</html>