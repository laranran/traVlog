<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog 설정</title>

<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/settingContainer.css" rel="stylesheet">

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
<jsp:include page="/resources/util/Page/SettingSideMenu.jsp" />

<div class="content-wrap">
<div class="content-op"></div>

<div class="content">

<div class="userProfile">
		<img class="userimg" src="/resources/images/icon/user.png">
		<div class="usernick">닉네임</div>
</div>


</div><!-- End content -->

</div> <!-- End content-wrap -->

</div> <!-- // End #container -->
<jsp:include page="/resources/util/Page/footer.jsp" />

</div> <!-- // End #wrap -->
</body>

</html>