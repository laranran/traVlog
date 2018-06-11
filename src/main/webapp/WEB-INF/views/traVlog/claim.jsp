<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog claim</title>

<link href="/resources/css/claim.css" rel="stylesheet">

<script type="text/javascript"
   src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
function closeBtn(){
    self.close();   //자기자신창을 닫습니다.
}

$(document).ready(function(){
	$("#claimBtn").click(function(){
		if(!$("input[name='clmReason']").is(":checked")){
			alert("신고 사유를 선택해주세요.");
			return false;
		}
		$("#insertClaim").submit();
	});
});
</script>
</head>

<body>
<div id="wrap">
      
<div id="container"><!-- Begin #container -->
   <div class="content-wrap">
  <form action="/traVlog/claim.do" method="post" id="insertClaim">
	<h2>traVlog 게시글 신고</h2>
	<p>회원님의 관심과 신고가 건전하고 올바른 traVlog 문화를 만듭니다.<br>
	 허위신고일 경우 신고자가 제재받을 수 있습니다.</p>
	<hr>
	 <strong>게시글 : </strong><span id="bodtitle">${claimBoard.bodtitle }</span><br>
	 <input type="hidden" name="bodNo" value="${claimBoard.bodno }">
	 <strong>작성자 : </strong><span id="bodname">${claimBoard.bodname }</span>
	  <input type="hidden" name="bodname" value="${claimBoard.bodname }">
	<hr>
	<label><input type="radio" name="clmReason" value="1">욕설 및 인신공격<br></label>
	<label><input type="radio" name="clmReason" value="2">음란성 / 사행성 게시글<br></label>
	<label><input type="radio" name="clmReason" value="3">도배 게시글 / 댓글<br></label>
	<label><input type="radio" name="clmReason" value="4">개인정보 노출 / 사생활 침해<br></label>
	<label><input type="radio" name="clmReason" value="5">기타<br><br></label>
	
	<div class="btnDiv">
	<button id="claimBtn" class="claimBtn" type="button">신고하기</button>
	<button onclick="closeBtn()" class="close">취소</button>
	</div>
  </form>
	
   </div>   <!-- // End content-wrap -->
   </div> <!-- End container -->
   
</div>   <!-- // End #wrap -->
</body>

</html>
