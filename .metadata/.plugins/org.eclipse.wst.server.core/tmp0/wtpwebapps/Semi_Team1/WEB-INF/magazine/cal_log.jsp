<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header_dog.jsp" />

<title>하루 칼로리 계산</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<style>

/* tab */
.tab_menu {
	display: table;
  	margin-left:auto;
  	margin-right: auto;
  	padding: 0px;
}

.tab_menu li {	
	padding: 20px 50px 3px 50px;
 	list-style: none;
    float: left;
    border-bottom: 2px solid #dcdcdc;
    color: #000;
    font-size: 20px;
    font-weight: bold;
    text-align: center;
    cursor: pointer;
    line-height: 280%;
}

.tab_menu li a {
    display: block;
    color: inherit;
    font: inherit;
    text-decoration: none;
    margin: 0 auto;
}

.tab_menu li.over {
    border-bottom: 2px solid #9d6849;
    color: #9d6849;
}
/* /tab */

.container {
	background-color: #f5f5f5;
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

.kcalArea {
    padding: 60px 100px 60px 100px;
    position: relative;
    background: #fff;
	width: 55%;
	margin: 0 auto; 
}

.kcalTitle {
	font-size: 20pt;
	text-align: center;
	margin-bottom: 25px;
}

dt {
	font-size: 15pt;
	font-weight: bold;
	line-height: 350%;
	display: inline-block;
	vertical-align: middle;
	margin-right: 20px;
}

dd {
	padding: 18px 0;
    font-size: 14px;
    font-weight: 400;
    display: inline-block;
    vertical-align: middle;
}

dd .inputArea {
    width: 100%;
    height: 30%;
    border-bottom: 1px solid #000;
}

/* submit button */
#kcalBtn {
    width: 30%;
    height: 10%;
    font-size: 16px;
    color: #f5f5f5;
    line-height: 50px;
    background: #42362f;
    margin-top: 7%;
    margin-left: 35%;
}
/* /submit button */

label {
	margin-right: 20px;
}

/* txt_title */
.txt_title {
	padding: 70px 0 0 0;
	text-align:center;
}

.k_s {
    margin-bottom: 5px;
    font-size: 18px;
    font-family: sans-serif;
}

.e_b {
    font-size: 56px;
    font-family: sans-serif;
    font-weight: bold;
    margin-bottom: 40px;
}
/* /txt_title */

</style>

<script type="text/javascript">
	
	$(document).ready(function(){
				
		var date = new Date();
		var year = date.getFullYear();
		var selectValue = document.getElementsByClassName("year");
		var optionIndex = 0;
		
		for( var j = 0; j<selectValue.length; j++){
		
			for(var i=year-50; i<=year ; i++){
	
				selectValue[j].add(new Option(i,i),optionIndex++);                        
	
			}
		}
	
		selectValue = document.getElementsByClassName("month"); 

		optionIndex = 0;

		for( var j=0; j<selectValue.length; j++){

			for(var i=1;i<=12;i++){
	
					selectValue[j].add(new Option(i,i),optionIndex++);
	
			}
		}
		
		selectValue = document.getElementsByClassName("day");

		optionIndex = 0;
		
		for( var j=0; j<selectValue.length; j++){
		
			for(var i=1;i<=31;i++){
	
					selectValue[j].add(new Option(i,i),optionIndex++);
	
			}
		}
		

		$(".year").change(function(){
			var year = $("select[class='year']").val();
			$("#birth_year").val(year);
		});

		$(".month").change(function(){
			var month = $("select[class='month']").val();
			$("#birth_month").val(month);
		});
		
		$(".day").change(function(){
			var day = $("select[class='day']").val();
			$("#birth_day").val(day);
		});
		
		
		//////////////////////////////////////////////////////////////////
		

		$("#kcalBtn").click(function(){  
			
			var flag = false; 
			
			$(".infoData").each(function() {  
				var val = $(this).val().trim(); 
				if(val == "") {  
					alert("모든 기본정보를 입력하세요!"); 
					flag = true;  
					return false;  
				}
				else if(!$('input:checkbox[name="ingredient"]').is(":checked")) {
					alert("선호하는 원료를 1개 이상 선택해주세요!");
					flag = true;  
					return false;
				}
				
				else if(!$('input:checkbox[name="texture"]').is(":checked")) {
					alert("선호하는 식감을 1개 이상  선택해주세요!");
					flag = true;  
					return false;
				}
			});
			
			if(!flag){  
						
				var frm = document.form_kcal;
				
				frm.action = "/Semi_Team1/magazine/calResult.dog";  
				frm.method = "post"; 
				frm.submit();
			
			}
			
		});// end of $("#kcalBtn").click()-------------------
		
		
		f_date();
		
		
		// 로그인한 회원의 반려견 정보
		var pet_type = "${pet.pet_type}";	
		$("#type").val(pet_type);
		
		
		var pet_neutral = "${pet.pet_neutral}";
		
		if(pet_neutral == 1){
			
			$("#operation1").attr("checked",true);
		}
		else if(pet_neutral == 0){
			
			$("#operation0").attr("checked",true);
		}
		
		
		var pet_gender = "${pet.pet_gender}";
		
		if(pet_gender == 1){
			
			$("#M").attr("checked",true);
		}
		else if(pet_gender == 2){
			
			$("#F").attr("checked",true);
		}
		
		
		var birthyyyy = "${pet.birthyyyy}"
		$("#year").val(birthyyyy);
		$("#birth_year").val(birthyyyy);
		
		var birthmm = "${pet.birthmm}"
		$("#month").val(birthmm);
		$("#birth_month").val(birthmm);
		
 		var birthdd = "${pet.birthdd}"
		$("#day").val(birthdd);
		$("#birth_day").val(birthdd);
		
	});// end of $(document).ready()-------------------------
	
	function f_date(){
		var date = new Date();
		
		var year  = date.getFullYear();
		var month = date.getMonth()+1;
		var day = date.getDate();	
		
		$("#today_year").val(year);
		$("#today_month").val(month);
		$("#today_day").val(day);
	}

</script>


<div class="container">
	
	<div ><img src="/Semi_Team1/images/magazine/magazine_title_img.jpg" style="width: 100%;"></div>
	
	<div>
		<ul class="tab_menu">
		      <li class="over"><a href="/Semi_Team1/magazine/cal.dog">하루 칼로리 계산</a></li>
		      <li><a href="/Semi_Team1/magazine/nutrient.dog">영양성분</a></li> 
		      <li><a href="/Semi_Team1/magazine/ingredient.dog">원료사전</a></li>
		      <li><a href="/Semi_Team1/magazine/humanGrage.dog">휴먼 그레이드</a></li>
		      <li><a href="/Semi_Team1/magazine/studio.dog">이달의 우수 제조시설</a></li>
		      <li><a href="/Semi_Team1/magazine/withDog.dog">반려견 동반출근</a></li>
		</ul>
	</div>
	
	<div class="txt_title">
	    <div class="k_s">하루 소비 칼로리 & 추천 제품</div>
	    <div class="e_b">RECOMMENDATION</div>
	</div>
 
	
	<div class="kcalArea">
   		<form name="form_kcal" method="post">
        	
        	<input type="hidden" name="action_type" value="kcal_search">            
        	
        	<div class="kcalTitle"><h3>01. 기본정보 입력</h3></div>
           
            <div class="petInfoArea pet-basic">   
                <dl style="margin-top: 30px;">
                    <dt>반려견 이름은</dt>
                    <dd><div class="inputArea"><input value="${pet.pet_name}" type="text" name="name" id="name" class="infoData" style="border: none; width: 280px; font-size: 13pt; text-align: center;" /></div></dd>
                </dl>
                
                <dl>
                    <dt>생년월일은</dt>
					<dt style="font-size: 12pt; font-weight: normal;" id="birth_select">
						<select class="year" id="year">
							<option value="" selected disabled hidden>선택</option>
						</select>년
						<select class="month" id="month">
							<option value="" selected disabled hidden>선택</option>
						</select>월
						<select class="day" id="day">
							<option value="" selected disabled hidden>선택</option>
						</select>일
						<input type="hidden" id="birth_year" name="birth_year" class="infoData" />
						<input type="hidden" id="birth_month" name="birth_month" class="infoData" />
						<input type="hidden" id="birth_day" name="birth_day" class="infoData" />
						<input type="hidden" id="today_year" name="today_year" />
						<input type="hidden" id="today_month" name="today_month" />
						<input type="hidden" id="today_day" name="today_day" />
					</dt>                                                 
                </dl>
               
                <dl>
                    <dt>견종은</dt>
                    <dd><select name="pet_type" id="type" class="infoData" style="font-size: 12pt;" >
                    <option value="골든리트리버">골든리트리버</option><option value="그레이트 덴">그레이트 덴</option><option value="그레이하운드">그레이하운드</option><option value="꼬똥">꼬똥</option><option value="닥스훈트">닥스훈트</option><option value="달마티안">달마티안</option><option value="도벨만">도벨만</option><option value="도사견">도사견</option><option value="독일 세퍼드">독일 세퍼드</option><option value="라브라도리트리버">라브라도리트리버</option><option value="로트와일러">로트와일러</option><option value="마스티프">마스티프</option><option value="말라뮤트">말라뮤트</option><option value="말티즈">말티즈</option><option value="바셋하운드">바셋하운드</option><option value="보르조이">보르조이</option><option value="보스턴테리어">보스턴테리어</option><option value="복서">복서</option><option value="불독">불독</option><option value="불테리어">불테리어</option><option value="비글">비글</option><option value="비숑프리제">비숑프리제</option><option value="빠삐용">빠삐용</option><option value="사모예드">사모예드</option><option value="삽사리">삽사리</option><option value="세인트 버나드">세인트 버나드</option><option value="셔틀랜드 쉽독">셔틀랜드 쉽독</option><option value="소프트 코티드 휘튼 테리어 ">소프트 코티드 휘튼 테리어 </option><option value="슈나우저">슈나우저</option><option value="스무스 폭스테리어">스무스 폭스테리어</option><option value="스피츠">스피츠</option><option value="시베리안허스키">시베리안허스키</option><option value="시츄">시츄</option><option value="실키테리어">실키테리어</option><option value="아메리칸 에스키모 도그">아메리칸 에스키모 도그</option><option value="아키다">아키다</option><option value="아프간하운드">아프간하운드</option><option value="에어데일테리어">에어데일테리어</option><option value="올드 잉글리쉬 쉽독">올드 잉글리쉬 쉽독</option><option value="와이어폭스테리어 ">와이어폭스테리어 </option><option value="요크셔테리어">요크셔테리어</option><option value="잉글리쉬 세터">잉글리쉬 세터</option><option value="진돗개">진돗개</option><option value="치와와">치와와</option><option value="친">친</option><option value="카디건웰시코기">카디건웰시코기</option><option value="캐리블루 테리어 ">캐리블루 테리어 </option><option value="코커스파니엘">코커스파니엘</option><option value="콜리">콜리</option><option value="퍼그">퍼그</option><option value="페키니스">페키니스</option><option value="펨브록 웰시 코기">펨브록 웰시 코기</option><option value="포메라니언">포메라니언</option><option value="포인터">포인터</option><option value="폼피츠">폼피츠</option><option value="푸들">푸들</option><option value="푸들(토이)">푸들(토이)</option><option value="풍산개">풍산개</option><option value="핀셔">핀셔</option>
                    <option value="기타">기타</option>
                	</select></dd>
                </dl>
                
                <dl>
                    <dt>중성화 수술은</dt>
                    <dd>
                        <label><input type="radio" name="operation" id="operation1" value="1" class="MS_input operation infoData"> 수술함</label>
                        <label><input type="radio" name="operation" id="operation0" value="0" class="MS_input operation infoData"> 안함</label>
                    </dd>
                </dl>
                
                <dl>
                    <dt>성별은</dt>
                    <dd>
                        <label><input type="radio" name="sex" id="M" value="1" class="MS_input sex infoData"> 남자</label>
                        <label><input type="radio" name="sex" id="F" value="2" class="MS_input sex infoData"> 여자</label>
                    </dd>
                </dl>                        
                
                <dl>
                    <dt>몸무게는</dt>
                    <dd><div class="inputArea"><input type="text" class="infoData" name="weight" value="${pet.pet_weight}" style="border: none; width: 250px; font-size: 13pt; text-align: center;" /><span style="font-size: 15pt; font-weight: bold;">kg</span></div></dd>
                </dl>
            </div>
            
            <br/><br/><br/>
            
            <div class="kcalTitle"><h3>02. 반려견 식사 정보 선택</h3></div>
            
            <div class="petInfoArea pet-food">    
                <dl>
                    <dt>선호하는 원료는</dt>
                    <dd>
                        <label><input type="checkbox" name="ingredient" value="1" class="MS_input ingredient"> 닭고기</label>
                        <label><input type="checkbox" name="ingredient" value="2" class="MS_input ingredient"> 오리고기</label>
                        <label><input type="checkbox" name="ingredient" value="3" class="MS_input ingredient"> 소고기</label>
                        <label><input type="checkbox" name="ingredient" value="4" class="MS_input ingredient"> 연어</label>
                        <label><input type="checkbox" name="ingredient" value="5" class="MS_input ingredient"> 양고기</label>
                    </dd>
                </dl>
    
                <dl>
                    <dt>선호하는 식감은</dt>
                    <dd>
                        <label><input type="checkbox" name="texture" value="1" class="MS_input texture"> 부드러운 식감(습식)</label>
                        <label><input type="checkbox" name="texture" value="2" class="MS_input texture"> 바삭바삭한 식감(건식)</label>
                    </dd>
                </dl>            
            
            	<button type="button" id="kcalBtn" style="text-decoration: none; color: white;">결과보기</button>   
            </div>
            
        </form>            
	</div>

	 
 	<br/><br/><br/>
</div>

<jsp:include page="../footer_dog.jsp" />