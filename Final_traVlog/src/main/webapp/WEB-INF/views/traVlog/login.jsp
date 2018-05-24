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

<style type="text/css">
.content {width : 350px; height:300px; padding-top: 200px; padding-left:350px; z-index: 99; position: absolute;}
.put input {width:280px; height: 30px; margin-top: 10px; text-align: center; vertical-align: bottom;}
.submit {width: 318px; height: 40px; text-align: center; background-color: #92A8D1; border: 1px solid #92A8D1; margin-top: 10px; border-radius: 12px; color: white;}
.button-wrap button { width: 152px; height: 40px; margin-right: 10px; background-color: #E89DA2; border: 1px solid #E89DA2; margin-top: 10px; border-radius: 12px; color: white;}
.social img {width: 50px; height: 50px; margin-top : 10px; vertical-align: bottom; margin-left: 38px;}
.social {width: 318px;}
</style>
	
</head>

<body>
<div id="wrap">

<div class="container"><!-- Begin #container -->

<div class="content-wrap">
<div class="content-op"></div>

<div class="content">
    <form action="/traVlog/login.do" method="post" enctype="multipart/form-data">
<!--     <form action="traVlog/login.do" method="post" > -->
    	<div class="put">
    	<img alt="마이페이지" src="/resources/images/login/email.png" height="30px">
         <input type="text" name="memid" id="memid" placeholder="Your id"><p></p>
         </div>
         <div class="put">
         <img alt="마이페이지" src="/resources/images/login/pass.png" height="30px">
         <input type="password" name="mempw" id="mempw" placeholder="Your password"><p></p>
         </div>
         
         <div class="submit-wrap">
              <input type="submit" value="로그인" class="submit">
         </div>
    </form>
    
         <div class="button-wrap">
            <a href="/traVlog/join.do"><button>회원가입</button></a>
            <button>아이디/비밀번호 찾기</button>
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