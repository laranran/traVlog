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
	alert("메세지 전송 완료 되었습니다.");}



</script>

<title>Insert title here</title>

<style>

body{
padding-left:10px;
padding-right:10px;
}
select {
	width: 250px;
	height: 30px;
	margin-top:20px;
	margin-left:50px;
	padding-left: 30px;
	font-size: 18px;
	color: gray;
	border: 1px solid #E89DA2;
	border-radius: 3px;
}
b{
font-size:15px;
}
input {
margin-top:20px;
	width: 90px;
	height: 30px;
	padding-left: 3px;
	text-align: center;
	font-size: 18px;
	color: gray;
	border: 1px solid #E89DA2;
	border-radius: 10px;
	
}



</style>

</head>
<body>




	<form action="/traVlog/message.do" method="post">


	<input type="hidden" name="memid" value="${sessionScope.memid }" />
		<h1>Message</h1>
		<hr>
		 		<label for="mesname='${member.memnick}'"><b>받는사람</b></label>  
		 		
		<p><input type="text" readonly="readonly" name="mesname"
			value="${member.memid }" /></p>
		<p>

			<label for="content"><b>내용</b></label>
		</p>
		<textarea class="form-control col-sm-3" name="mescontent" rows="8"></textarea>







		<input type="submit" id=button value="보내기" onclick="done();self.close();">
		<input type="button" value="닫 기" onclick="self.close();" />







	</form>







	</div>

	<div class="right"></div>





</body>
</html>








