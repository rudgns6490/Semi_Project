
// == 주민번호를 검사하는 함수 ==
/*
   주민번호 공식에 맞으면 true 를 리턴하고,
   주민번호 공식에 틀리면 false 를 리턴한다. 
*/
function myJubunCheck(jubun) {
	
	// 9210212234567(공식에틀린것)  9210212234565(공식에맞는것)
	
	if(jubun.length != 13) {
		return false;
	}
	
	else {
		// 9*2 + 2*3 + 1*4 + 0*5 + 2*6 + 1*7 + 2*8 + 2*9 + 3*2 + 4*3 + 5*4 + 6*5 
		var sum = 0; // 누적용 변수 
		
		for(var i=0; i<12; i++) {
			if(i<8)
				sum += parseInt(jubun.substring(i, i+1))*(i+2); 
			else
				sum += parseInt(jubun.substring(i, i+1))*(i-6);
		}//end of for-------------------
		
		// sum ==> 149
		var result = sum%11;  // sum 을 11로 나눈 나머지  ==> 6
		result = 11 - result; // 11 - sum 을 11로 나눈 나머지  ==> 11-6 ==> 5 
		result %= 10;         // result = result % 10; 와 같은 것
		                      // 5 를 10으로 나눈 나머지 ==> 5 
		
		if( result == parseInt(jubun.substring(12,13)) ) 
			return true;
		else
			return false;
	}
	
}// end of function myJubunCheck(jubun)----------


// == 암호를 검사하는 함수 ==
/*
      암호는 영문자,숫자,특수기호가 혼합된 8글자 이상 15글자 이하이어야만 된다.
      조건에 만족하면 true 를 리턴해주고,
      조건에 만족하지 않으면 false 를 리턴해준다.
 */
function myPasswdCheck(passwd) {
	
	// *** === 정규표현식 객체 만들기 === *** 
	//     항상 / 로 시작해서 / 로 끝나고 ; 을 붙인다.
	var regExp = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).*$/g;
	var bool = regExp.test(passwd);
	return bool;
}


//== 이메일을 검사하는 함수 ==
function myEmailCheck(email) {
	
	// *** === 정규표현식 객체 만들기 === *** 
	//     항상 / 로 시작해서 / 로 끝나고 ; 을 붙인다.
	var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
	var bool = regExp.test(email);
	return bool;
}













