<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog find</title>

<link href="/resources/css/login.css" rel="stylesheet">

<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

</head>

<body>
<div id="wrap">

<div class="container"><!-- Begin #container -->

<div class="content-wrap">
<div class="content-op"></div>
<div class="content-find">
	<div class="leftcon">
		<div>
		<strong>아이디 찾기</strong>
		<p>아래에 등록하신 이름과 이메일 주소를 입력해 주시면<br> 아이디를 이메일로 보내드리겠습니다.</p>
		<form action="">
			<label>이름</label>
			<input class="inputsize" id="name" name="name" type="text" required="required"><br>
			<label>이메일</label> 
			<input class="inputsize" id="email" name="email" type="text" required="required"><br>
		</form>
		</div>
	
	</div>
	
	
	<div class="rightcon">
	<div>
		<strong>비밀번호 찾기</strong>
		<p>아래에 등록하신 이름과 아이디, 이메일 주소를 입력해주시면<br> 비밀번호를 이메일로 보내드리겠습니다.</p>
		<form action="">
			<label>이름</label>
			<input class="inputsize" id="name" name="name" type="text" required="required"><br>
			<label>아이디</label> 
			<input class="inputsize" id="userid" name="userid" type="text" required="required"><br>
			<label>이메일 주소</label>
			<input class="inputsize" id="email" name="email" type="text" required="required"><br>
			</form>
		</div>
	</div>
</div>

</div> <!-- End content-wrap -->

</div> <!-- // End #container -->

</div> <!-- // End #wrap -->
</body>

</html>