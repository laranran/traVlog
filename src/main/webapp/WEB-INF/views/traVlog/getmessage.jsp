<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog Mypage</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/mypage.css" rel="stylesheet">
<link href="/resources/css/mylist.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://staticassets-a.styleshare.kr/1ea27d2f8b/css/web.scss.css" />


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<script>
	function checkAll() {
		if ($("#th_checkAll").is(':checked')) {
			$("input[name=checkRow]").prop("checked", true);
		} else {
			$("input[name=checkRow]").prop("checked", false);
		}

</script>










<title>Insert title here</title>
</head>
<style>
body {

	font-family: Arial, Helvetica, sans-serif;
	font-size:15px;
}

button {
	background-color: #E89DA2;
	color: white;
	padding: 20px 15px;
	margin: 8px 0;
	margin-left: 250px;
	border: none;
	cursor: pointer;
	width: 40%;
	
}
th{

text-align:center;
}
td{
text-align:center;}	

	


button:hover {
	opacity: 1;
}

.btn-group {
	padding-right: 30px;
	padding-bottom: 50px;
	padding-top: 20px;
	width: 70%;
	float: right;
}
</style>
<body>

	<div id="wrap">

		<jsp:include page="/resources/util/Page/header.jsp" />

		<div id="container">
			<!-- Begin #container -->
			<div class="content-wrap">


				<div class="main">


					<table class="table table">
						<thead>
							<tr>
								<th><input type="checkbox" name="checkAll" id="th_checkAll"
									onclick="checkAll();" /></th>


								<th>번호</th>
								<th>보낸 사람</th>

								<th>받은 날짜</th>

							</tr>

						</thead>



						<tbody>
							<c:forEach items="${mList }" var="c">
								<tr>
									<td class="center"><input type="checkbox" name="checkRow"
										value="${content.IDX}" class='memberChk' /></td>

									<td>${c.m_no }</td>
									<td><a href="/traVlog/messageDetail.do?memid=${c.memid }">${c.memid }</a>
									</td>

									<td>${c.mesdate }</td>


								</tr>
							</c:forEach>
						</tbody>

					</table>
				
						<button >삭제</button>




</div>





			</div>
			<!-- // End content-wrap -->
		</div>
		<!-- End container -->
	</div>
	<!-- // End #wrap -->


	<div class="setLayer">

		<div class="mask"></div>
		<div class="window"></div>

	</div>

</body>
</html>











