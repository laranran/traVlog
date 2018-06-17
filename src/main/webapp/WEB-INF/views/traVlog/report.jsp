<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/mainContainer.css" rel="stylesheet">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script>
function done(){
	alert(" 신고 완료 되었습니다.");
}
</script>

<title>Insert title here</title>

<style>
select {
    width: 200px;
    height: 30px;
    padding-left: 10px;
    font-size: 18px;
    color: black;
    border: 1px solid #006fff;
    border-radius: 3px;
}
input{

width: 50px;
    height: 27px;
    padding-left: 9px;
    text-align : left;
   
    font-size: 12px;
    color: #006fff;
    border: 1px solid #006fff;
    border-radius: 3px;

}
</style>

</head>
<body>



	<form action="/traVlog/report.do" method="post">
		<input type="hidden" name="clmtoid" value="${member.memnick }" /> <input
			type="hidden" name="clmfromid" value="${sessionScope.memnick }" />

			<select class="selectpicker" name="clmreason">
			<!-- 글 신고와 같은 번호 -->
		
			<option value=1>욕설 및 인신공격</option>
			<option value=2>음란성 / 사행성 게시글</option>
			<option value=3>도배 게시글 / 댓글</option>
			<option value=4>개인정보 노출 / 사생활 침해</option>
			<option value=5>기타</option>

</select>







	 <input type="submit" id=button value="보내기"
	 onclick="done();"> 
	 <input type="button"
			value="닫 기" onclick="self.close();" />







	</form>







</div>

	<div class="right"></div>





</body>
</html>








