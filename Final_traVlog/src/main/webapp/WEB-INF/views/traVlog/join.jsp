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

<body>
<div id="wrap">

<div class="container"><!-- Begin #container -->

<div class="content-wrap">

<div class="content">



<form>
<fieldset>
<legend>로그인 정보</legend>
<ol>
  <li>
    <label for="userid" class="labelsize">아이디</label>
    <input class="inputsize" id="userid" name="userid" type="text" required="required" autofocus>
    <button class="duplicate">중복검사</button>
  </li>
  <li>
    <label for="pwd1" class="labelsize">비밀번호</label>
    <input class="inputsize" id="pwd1" name="pwd1" type="password"  required="required">
  </li>
  <li>
    <label for="pwd2" class="labelsize">비밀번호 확인</label>
    <input class="inputsize" id="pwd2" name="pwd2" type="password" required="required">
  </li>  
  <li>
    <label for="nick" class="labelsize">닉네임</label>
    <input class="inputsize" id="nick" name="nick" type="text" required="required">
    <button class="duplicate">중복검사</button>
  </li>
</ol>
</fieldset>
<fieldset>
<legend>개인 정보</legend>
<ol>
  <li>
    <label for="fullname" class="labelsize">이름</label>
    <input class="inputsize" id="fullname" name="fullname" type="text" placeholder="5자미만 공백없이" required="required">
  </li>
  <li>
    <label for="email" class="labelsize">메일 주소</label>
    <input class="inputsize" id="email" name="email" type="email" placeholder="abcd@domain.com" required="required" autocomplete="off">
  </li>
  <li>
    <label for="tel" class="labelsize">연락처</label>
    <input class="inputsize" id="tel" name="tel" type="tel" placeholder="010-1234-5678" required="required" autocomplete="off">
  </li>  
  <li>
    <label for="age" class="labelsize">나이</label>
    <input class="inputsize" id="age" name="age" type="text" placeholder="나이를 2글자로 입력하세요." required="required" autocomplete="off" size="200px">
  </li>  
   <li>
    <label for="gender" class="labelsize">성별</label>
    	<input type="radio" id="male" name="gender" value="male" style="margin-right: 10px;"><label class="radio" for="male" style="margin-right: 40px;">남자</label>
    	<input type="radio" id="female" name="gender" value="female" style="margin-right: 10px;"><label class="radio" for="female">여자</label>
  </li>
</ol>
</fieldset>

<fieldset>
<legend>약관 동의</legend>
	<div class="agreebox">
	    <input type="checkbox" id="agree" name="agree" value="agree">
	    <label for="agree">전체 동의</label><br/>
	    <input type="checkbox" id="agree" name="agree" value="agree">
	    <label for="agree">traVlog 서비스  이용약관 동의</label><br/>
	    <input type="checkbox" id="agree" name="agree" value="agree">
	    <label for="agree">개인 정보 수집/이용 동의</label>
    </div>
</fieldset>

<fieldset>
  <button type="submit" class="submitbtn"> 회원가입 </button> 
</fieldset>
</form>
     
</div>
		    

</div> <!-- End content-wrap -->

</div> <!-- // End #container -->

</div> <!-- // End #wrap -->
</body>

</html>
