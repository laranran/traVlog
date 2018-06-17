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
<a class="logo" href="/traVlog/login.do"><img alt="traVlog" src="/resources/images/icon/logo.png" width="150px;"></a>

<div class="content">
    <form action="/traVlog/login.do" method="post" enctype="multipart/form-data">
<!--     <form action="traVlog/login.do" method="post" > -->
    	<div class="put">
    	<img src="/resources/images/login/email.png" height="30px">
         <input type="text" name="memid" id="memid" placeholder="Your id"><p></p>
         </div>
         <div class="put">
         <img alt="마이페이지" src="/resources/images/login/pass.png" height="30px">
         <input type="password" name="mempassword" id="mempassword" placeholder="Your password"><p></p>

         </div>
         
         <div class="submit-wrap">
              <input type="submit" value="로그인" class="submit">
         </div>
    </form>
    
         <div class="button-wrap">
            <a href="/traVlog/join.do"><button>회원가입</button></a>
            <a href="/traVlog/find.do"><button>아이디/비밀번호 찾기</button></a>
         </div>
         <div class="social">
         	<img alt="마이페이지" src="/resources/images/login/naver.png">
         	<img alt="마이페이지" src="/resources/images/login/facebook.png">
         	<img alt="마이페이지" src="/resources/images/login/google.png">
        </div>
         

</div>
		    

</div> <!-- End content-wrap -->

</div> <!-- // End #container -->

</div> <!-- // End #wrap -->
</body>

</html>