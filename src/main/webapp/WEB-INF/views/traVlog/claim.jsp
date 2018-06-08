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
</script>
</head>

<body>
<div id="wrap">
      
<div id="container"><!-- Begin #container -->
   <div class="content-wrap">
	<h2>traVlog 게시글 신고</h2>
	<p>회원님의 관심과 신고가 건전하고 올바른 traVlog 문화를 만듭니다.<br>
	 허위신고일 경우 신고자가 제재받을 수 있습니다.</p>
	<hr>
	<c:forEach items="${boardInfo}" var="board">
	 <span><strong>게시글 : </strong> ${board.bodtitle }</span><br>
	 <span><strong>작성자 : </strong> ${board.bodname }</span>
	</c:forEach>
	<hr>
	<input type="checkbox" value="1">욕설 및 인신공격<br>
	<input type="checkbox" value="2">음란성 / 사행성 게시글<br>
	<input type="checkbox" value="3">도배 게시글 / 댓글<br>
	<input type="checkbox" value="4">개인정보 노출 / 사생활 침해<br>
	<input type="checkbox" value="5">기타<br><br>
	
	<div class="btnDiv">
	<button class="claimBtn">신고하기</button>
	<button onclick="closeBtn()" class="close">취소</button>
	</div>
	
   </div>   <!-- // End content-wrap -->
   </div> <!-- End container -->
   
</div>   <!-- // End #wrap -->
</body>

</html>
