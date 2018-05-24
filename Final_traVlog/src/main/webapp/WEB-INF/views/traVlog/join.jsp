<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog join</title>

<link href="/resources/css/join.css" rel="stylesheet">

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

</head>
<script type="text/javascript">
	$(document).ready(function(){
		$("#joinbtn").prop("disabled",true);
		$("#pwd1").blur(function(){
			var pwLength = $("#pwd1").val().length;
			if(pwLength < 9){
				alert("최소 9자 이상이여야 합니다.");
			}else{
				$("#pwd2").blur(function() {
					var memPw1 = $("#pwd1").val();
					var memPw2 = $("#pwd2").val();
					if (memPw1 == memPw2) {
// 						$("#alert_pwCheck").html("비밀번호 확인완료.");
// 						var mempw=$('<input type="hidden" name="mempw" required="required" />');
// 						boardNo.attr('value',memPw1);
						$("#joinbtn").attr("disabled",false);
						alert("비밀번호 확인 완료.");
					} else {
// 						$("#alert_pwCheck").html("비밀번호가 다릅니다.");
						
						alert("비밀번호가 다릅니다.");
					}
				});
			}
		});
	});
</script>
<body>
<div id="wrap">

<div class="container"><!-- Begin #container -->

<div class="content-wrap">

<div class="content">



<form action="/traVlog/join.do" method="post">
<fieldset>
<legend>로그인 정보</legend>
<ol>
  <li>
    <label for="userid" class="labelsize">아이디</label>
    <input class="inputsize" id="memid" name="memid" type="text" required="required" autofocus>
    <button class="duplicate">중복검사</button>
  </li>
  <li>
    <label for="pwd1" class="labelsize">비밀번호</label>
    <input class="inputsize" id="pwd1" name="pwd1" type="password" placeholder="9자이상 입력"  required="required">
  </li>
  <li>
    <label for="pwd2" class="labelsize">비밀번호 확인</label>
    <input class="inputsize" id="pwd2" name="mempw" type="password" required="required">
  </li>  
  <li>
    <label for="nick" class="labelsize">닉네임</label>
    <input class="inputsize" id="nick" name="memnick" type="text" required="required">
    <button class="duplicate">중복검사</button>
  </li>
</ol>
</fieldset>
<fieldset>
<legend>개인 정보</legend>
<ol>
  <li>
    <label for="fullname" class="labelsize">이름</label>
    <input class="inputsize" id="fullname" name="memname" type="text" placeholder="5자미만 공백없이" required="required">
  </li>
  <li>
    <label for="email" class="labelsize">메일 주소</label>
    <input class="inputsize" id="email" name="mememail" type="email" placeholder="abcd@domain.com" required="required" autocomplete="off">
  </li>
  <li>
    <label for="tel" class="labelsize">연락처</label>
    <input class="inputsize" id="tel" name="memphone" type="tel" placeholder="010-1234-5678" required="required" autocomplete="off">
  </li>  
  <li>
    <label for="age" class="labelsize">나이</label>
    <input class="inputsize" id="age" name="memage" type="text" placeholder="나이를 2글자로 입력하세요." required="required" autocomplete="off" size="200px">
  </li>  
   <li>
    <label for="gender" class="labelsize">성별</label>
    	<input type="radio" id="male" name="memsex" value="male" style="margin-right: 10px;"><label class="radio" for="male" style="margin-right: 40px;">남자</label>
    	<input type="radio" id="female" name="memsex" value="female" style="margin-right: 10px;"><label class="radio" for="female">여자</label>
  </li>
</ol>
</fieldset>

<fieldset>
<legend>약관 동의</legend>
	<div class="agreebox">
	    <input type="checkbox" id="agree" name="agree" value="agree">
	    <label for="agree">traVlog 서비스  이용약관 동의</label><br/>
	    <input type="checkbox" id="agree" name="agree" value="agree">
	    <label for="agree">개인 정보 수집/이용 동의</label>
    </div>
</fieldset>

<fieldset>
<!-- 	<input type="submit" id="joinbtn" class="submitbtn" value="회원가입" disable="true"/> -->
  <button id="joinbtn" type="submit" class="submitbtn"> 회원가입 </button> 
</fieldset>
</form>
     
</div>
		    

</div> <!-- End content-wrap -->

</div> <!-- // End #container -->

</div> <!-- // End #wrap -->
</body>

</html>
