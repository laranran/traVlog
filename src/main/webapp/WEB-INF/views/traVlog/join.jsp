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
	var checkid = false;
	var checkpw = false;
	var checknick = false;	
	
	function checkAll(){
		if(checkid==true && checkpw==true && checknick==true){
			$("#joinbtn").prop("disabled",false);
			}
		else {$("#joinbtn").prop("disabled",true);}
	}
	
	$(document).ready(function(){
		
		//아이디 중복 체크
		$("#checkDupId").click(function(){
			var memid=$("#memid").val();
			$.ajax({
				type:'POST',
				data : memid,
				url : "/idcheck.do",
				dataType: "json",
				contentType: "application/json; charset=UTF-8",
				success : function(data){
					if(data.count > 0){
						$("#warning").html("사용 불가능한 아이디입니다.");
						checkid=false;
					}else{
						$("#warning").html("사용 가능한 아이디입니다.");
						$("#mempassword").focus();
						checkid=true;
						checkAll();
					}
				},
				 error : function(error) {
		                alert("error : " + error);
		         }
			});
		});
		//비밀번호 유효성 체크
		$("#pwd1").blur(function(){
			var pwLength = $("#pwd1").val().length;
			if(pwLength < 9){
				$("#warning").html("최소 9자 이상이여야 합니다.");
				$("#pwd1").focus();
			}else{
				$("#pwd2").blur(function() {
					var mempassword1 = $("#pwd1").val();
					var mempassword2 = $("#pwd2").val();
					if (mempassword1 == mempassword2) {
// 						$("#joinbtn").attr("disabled",false);
						$("#warning").html("비밀번호 확인 완료.");
						checkpw = true;
						console.log("비밀번호 확인 완료"+checkpw);
						$("#memnick").focus();
						checkAll();
						return checkpw;
					} else {
						checkpw = false;
						console.log("비밀번호 확인 실패"+checkpw);
						$("#warning").html("비밀번호가 다릅니다.");
						return checkpw;
					}
				});
			}
		});
		//닉네임 중복체크
		$("#checkDupNick").click(function(){
			var memnick=$("#memnick").val();
			$.ajax({
				type:'POST',
				data : memnick,
				url : "/nickcheck.do",
				dataType: "json",
				contentType: "application/json; charset=UTF-8",
				success : function(data){
					if(data.count > 0){
						$("#warning").html("사용 불가능한 닉네임입니다.");
						$("#memnick").focus();
						checknick=false;
					}else{
						$("#warning").html("사용 가능한 닉네임입니다.");
						$("#memname").focus();
						checknick=true;
						checkAll();
					}
				},
				
				 error : function(error) {
		                
		                alert("error : " + error);
		         }
			});
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
<!--     <button id="checkDupId" class="duplicate">중복검사</button> -->
	<input type="button" id="checkDupId" class="duplicate" value="중복검사"/>
  </li>
  <li>
    <label for="pwd1" class="labelsize">비밀번호</label>
    <input class="inputsize" id="pwd1" name="pwd1" type="password" placeholder="9자이상 입력"  required="required">
  </li>
  <li>
    <label for="pwd2" class="labelsize">비밀번호 확인</label>
    <input class="inputsize" id="pwd2" name="mempassword" type="password" required="required">
  </li>  
  <li>
    <label for="nick" class="labelsize">닉네임</label>
    <input class="inputsize" id="memnick" name="memnick" type="text" required="required">
<!--     <button id="checkDupNick" class="duplicate">중복검사</button> -->
	<input type="button" id="checkDupNick" class="duplicate" value="중복검사"/>
  </li>
</ol>
<div>
<p style="text-align:center;" id="warning">빈칸이 없고 비밀번호,중복확인이 되어야<br>회원가입 버튼이 활성화됩니다.</p>
</div>
</fieldset>
<fieldset>
<legend>개인 정보</legend>
<ol>
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
    	<input type="radio" id="male" name="memsex" value="male" style="margin-right: 10px;" required="required"><label class="radio" for="male" style="margin-right: 40px;">남자</label>
    	<input type="radio" id="female" name="memsex" value="female" style="margin-right: 10px;"><label class="radio" for="female">여자</label>
  </li>
</ol>
</fieldset>

<fieldset>
<legend>약관 동의</legend>
	<div class="agreebox">
	    <input type="checkbox" id="agree1" name="agree1" required="required">
	    <label for="agree">traVlog 서비스  이용약관 동의</label><br/>
	    <input type="checkbox" id="agree2" name="agree2" required="required">
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
