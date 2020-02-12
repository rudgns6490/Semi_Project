<!DOCTYPE html>
<html>
<head>
  <title>회원 정보 수정</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div style="background: #f2f2f2; width: 100%; height: 150px; margin: 0 auto; "></div>
<form name="regsterFrm">
<div style="background: white; width: 80%; min-height:500px; margin: 0 auto;">
	<div class="row">
		<div class="col-sm-4" style="font-size: 14pt; font-weight: bold; color: #33334d; position: relative; top: 20px; left: 14px;">회원 정보 수정</div>
		<div class="col-sm-8" style="font-size: 8pt; font-weight: bold; text-align: right; position: relative; top: 20px; right: 20px;">홈   > 회원정보수정</div>
	
    <div>
    
    </div>
    
	</div>
	<hr>
    <div class="ec-base-box typeMember gMessage ">
        <div class="information">
            <span class="thumbnail"><img style="align:left;" src="" alt="" onerror="this.src='//img.echosting.cafe24.com/skin/base/member/img_member_default.gif';" class="myshop_benefit_group_image_tag">
            <span>저희 쇼핑몰을 이용해 주셔서 감사합니다. <strong><span class="xans-member-var-name">김민태</span></strong> 님은 <strong>[일반회원]</strong> 회원이십니다.</span>
                <span class="displaynone myshop_benefit_display_with_all "><strong class="txtEm"><span class="myshop_benefit_dc_pay"></span>  <span class="myshop_benefit_dc_max_mileage_percent"></span></span>
            </span>
        </div>
     </div>
    
    
	<div class="top_container" style="width: 98%; margin: 0 auto;">
	 	<div class="input-group">
	      <span class="input-group-addon"><i class="glyphicon glyphicon-asterisk">&nbsp;아이디&nbsp;&nbsp;&nbsp;</i></span>
	      <input id="userid" type="text" maxlength="16" class="form-control" name="userid" placeholder="사용자 아이디는 5 - 15 자 입니다." style="width: 100%" required autocomplete="off" />
	      <span></span>
	    </div>
	  	<div class="input-group">
	      <span class="input-group-addon"><i class="glyphicon glyphicon-lock">&nbsp;비밀번호&nbsp;&nbsp;</i></span>
	      <input id="password" type="password" maxlength="16" class="form-control" name="password" placeholder="비밀번호는 8 - 16 자 입니다. 예:) abcd1234!@#$ , ABcd444!!!" style="width: 100%" required />
	      <span></span>
	    </div>
	  	<div class="input-group">
	      <span class="input-group-addon"><i class="glyphicon glyphicon-lock">&nbsp;비밀번호확인</i></span>
	      <input id="passwordCheck" type="password" maxlength="16" class="form-control" placeholder="비밀번호 확인" style="width: 100%">
	      <span></span>
	    </div>
	  	<div class="input-group">
	      <span class="input-group-addon"><i class="glyphicon glyphicon-user">&nbsp;이름&nbsp;&nbsp;&nbsp;&nbsp;</i></span>
	      <input id="username" type="text" maxlength="16" class="form-control" name="username" placeholder="이름  예:) 홍길동" style="width: 100%" autocomplete="off" required />
	      <span></span>
	    </div>
	  	
        <div class="input-group">
	  	  <span class="input-group-addon"><i class="glyphicon glyphicon-home">&nbsp;주소&nbsp;&nbsp;&nbsp;&nbsp;</i></span>
	  	  <span><input id="postNum" type="text" class="form-control" name="address" placeholder="1" style="width: 10%;" maxlength="6" readonly="readonly" required /></span>
	  	  <span><input type="button" class="btn btn-info btn-sm" value="우편번호 검색" style="position: relative; top: 2px; left: 5px;" onclick="openDaumPOST();" /></span>	      
	  	  <span><input id="address1" type="text" class="form-control" name="address" placeholder="주소"  value="" readonly="readonly" required /></span>
	      <span><input id="address2" type="text" class="form-control" name="address" placeholder="상세주소" value="" maxlength="70" /></span>
	    </div>
        
        <div class="input-group">
	      <span class="input-group-addon"><i class="glyphicon glyphicon-signal">&nbsp;일반전화&nbsp;&nbsp;</i></span>
	      <input id="mobile" type="tel" maxlength="11" class="form-control" name="mobile" placeholder="일반전화 ('-' 생략 : 0212345678)" style="width: 100%" autocomplete="off" required />
	      <span></span>
	    </div>
        
        <div class="input-group">
	      <span class="input-group-addon"><i class="glyphicon glyphicon-signal">&nbsp;휴대전화&nbsp;&nbsp;</i></span>
	      <input id="mobile" type="tel" maxlength="11" class="form-control" name="mobile" placeholder="휴대전화 ('-' 생략 : 01012345678)" style="width: 100%" autocomplete="off" required />
	      <span></span>
	    </div>
        
        
	  	<div class="input-group">
	      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope">&nbsp;이메일&nbsp;&nbsp;&nbsp;</i></span>
	      <input id="email" type="text" maxlength="40" class="form-control" name="email" placeholder="이메일 (예: abcd@gmail.com)" style="width: 100%" autocomplete="off"  required />
	      
	    </div>
	  	
  	</div>
<hr>


	
  	
</div>
</form>

<div>
</div>


<hr>
<h4>추가정보</h4>
<hr>
        <div class="input-group">
	      <span class="input-group-addon"><i class="glyphicon glyphicon-signal">&nbsp;성별&nbsp;&nbsp;</i></span>
          <div style="border: solid 0.5px gray;">
	      <input type="radio" name="gender" value="male"> 남자
<input type="radio" name="gender" value="female"> 여자
		  </div>	
	    </div>
        <hr>
<div class="row" >
  		<div class="col-sm-5" style="font-size: 10pt; font-weight: bold;"></div>
  		<div class="col-sm-2" style="font-size: 10pt; font-weight: bold;">
  			<span><button type="button" class="btn btn-primary btn-lg" onclick="registerGo();">
  				회원 정보 수정
  			</button></span>
            <span><button type="button" class="btn btn-primary btn-lg" onclick="registerGo();">
  				취  소
  			</button></span> 
  		</div>
  		<div class="col-sm-5" style="font-size: 10pt; font-weight: bold;"></div>
	</div>

</body>
</html>
