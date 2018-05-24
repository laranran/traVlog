<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog 설정</title>

<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/setting.css" rel="stylesheet">

<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	
<style type="text/css">
body {
   background-image: url('/resources/images/BackGround/main.jpg');
   background-repeat: no-repeat;
   background-size: cover;
}

</style>
</head>

<body>
<div id="wrap">
	
<jsp:include page="/resources/util/Page/header.jsp" />


<div class="container"><!-- Begin #container -->

<div class="content-wrap">
<jsp:include page="/resources/util/Page/SettingSideMenu.jsp" />
<div class="content-op">
<div class="content">

<div class="userProfile">
	<img class="userimg" src="/resources/images/icon/user.png">
	<div class="usernick">닉네임</div>
	<div class="useremail">dnsjas@naver.com</div>
</div>

<div class="password">
<label>이전 비밀번호</label>
<input class="inputsize" id="orgpass" name="orgpass" type="password" required="required"><br>
<label>현재 비밀번호</label> 
<input class="inputsize" id="newpass1" name="newpass1" type="password" required="required"><br>
<label>비밀번호 확인</label>
<input class="inputsize" id="newpass2" name="newpass2" type="password" required="required"><br>



</div>

</div><!-- End content -->

</div>



</div> <!-- End content-wrap -->

</div> <!-- // End #container -->
<jsp:include page="/resources/util/Page/footer.jsp" />

</div> <!-- // End #wrap -->
</body>

</html>