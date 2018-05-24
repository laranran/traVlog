<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog login</title>

<link href="/resources/css/login.css" rel="stylesheet">

<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

</head>

<body>
<div id="wrap">

<div class="container"><!-- Begin #container -->

<div class="content-wrap">
<div class="content-op"></div>

<div class="content">
    <form action="traVlog/loginProc.do" method="post" enctype="multipart/form-data">
    	<div class="put">
    	<img alt="마이페이지" src="/resources/images/login/email.png" height="30px">
         <input type="text" name="id" id="id" placeholder="Your id"><p></p>
         </div>
         <div class="put">
         <img alt="마이페이지" src="/resources/images/login/pass.png" height="30px">
         <input type="password" name="pass" id="pass" placeholder="Your password"><p></p>
         </div>
         
         <div class="submit-wrap">
              <input type="submit" value="로그인" class="submit">
         </div>
         <div class="button-wrap">
            <button type="button" onclick="location.href='join.do'">회원가입</button>
            <button type="button" onclick="location.href='find.do'">아이디/비밀번호 찾기</button>
         </div>
         <div class="social">
         	<img alt="마이페이지" src="/resources/images/login/naver.png">
         	<img alt="마이페이지" src="/resources/images/login/facebook.png">
         	<img alt="마이페이지" src="/resources/images/login/google.png">
        </div>
         
    </form>

</div><!-- End content -->
		    

</div> <!-- End content-wrap -->

</div> <!-- // End #container -->

</div> <!-- // End #wrap -->
</body>

</html>