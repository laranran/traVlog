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
<link href="/resources/css/mypage.css" rel="stylesheet">
<link href="/resources/css/mylist.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://staticassets-a.styleshare.kr/1ea27d2f8b/css/web.scss.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>




<title>Insert title here</title>
</head>
<style type="text/css">
body {
font-family: "돋움", dotum, arial, helvetica, sans-serif;}
/* 	background-image: url('/resources/images/BackGround/main.jpg');
	background-repeat: no-repeat;
	background-size: cover;
 */
input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}

.form-group {
	padding-top: 20px;
}

label {
	padding-right: 1000px;
}

.content-wrap .main {
	padding-top: 40px;
	font-size:13px;
}
th,td{
text-align:center;}
</style>


<body>


	<div id="wrap">
		<jsp:include page="/resources/util/Page/header.jsp" />


		<div id="container">
			<!-- Begin #container -->


			<div class="content-wrap">

				<div class="main">


					<table class="table">
						<thead>
							<tr>
								<th>질문자 ID</th>
								<th>질문자 닉네임</th>
								<th>질문 제목</th>

								<th>질문 내용</th>

								<th>작성일자</th>

								<th>승인 처리 과정</th>


							</tr>

						</thead>

						<tbody>


							<c:forEach items="${q_list }" var="q">

								<tr>
									<td>${q.memid }</td>
									<td>${q.qusname }</td>
									<td>${q.qustitle}</td>
									<td>${q.quscontent }</td>
									<td>${q.qusdate }</td>
									<td>답변 대기중</td>
								<tr>
							</c:forEach>
						</tbody>
					</table>
				</div>












			</div>
		</div>





		<div class="right"></div>



	</div>
	<!-- // End content-wrap -->
	</div>
	<!-- End container -->





</body>
</html>