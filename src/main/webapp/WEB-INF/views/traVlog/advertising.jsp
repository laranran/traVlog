<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog advertising</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/mypage.css" rel="stylesheet">
<link href="/resources/css/mylist.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://staticassets-a.styleshare.kr/1ea27d2f8b/css/web.scss.css" />


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<link rel="stylesheet"
	href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>

<script>
  $(function() {
    $( "#datepicker" ).datepicker({
      numberOfMonths: 3,
      showButtonPanel: true
    });
  });
  </script>


<title>Insert title here</title>
</head>
<style type="text/css">
body {
	background-image: url('/resources/images/BackGround/main.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}
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
input[type=submit] {
	background-color: #E89DA2;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;

}
.form-group {
	padding-top: 20px;
}
label {
	padding-right: 1000px;
}
.container {
	margin: 100px ;
}

</style>


<body>


	<div id="wrap">
		<jsp:include page="/resources/util/Page/header.jsp" />


		<div id="container">
			<!-- Begin #container -->


			<div class="container">

				<form action="/traVlog/advertising.do" method="post">
					<div class="form-group">
						<input type="hidden" name="advid" value="${sessionScope.memid }" />

						<label for="advname">광고 신청자 </label> <input type="text"
							id="advname" name="advname" placeholder="이름을 입력해주세요"> <label
							for="advstart">광고 시작일 </label> <input type="text" id="datepicker"
							name="advstart"> <label for="advtitle">광고 제목 </label> <input
							type="text" id="advtitle" name="advtitle"
							placeholder="제목을 입력해주세요">





						<!--  <label for="advId">아이디</label> 
						 
						 <input type="text" id="advid" name="advid"
						placeholder="아이디를 입력해주세요">  -->
						<label for="advprice">가격을 선택하세요</label> <select id="advprice"
							name="advprice">
							<option value="1">1개월 = 50,000원</option>
							<option value="2">2개월 = 90,000원</option>
							<option value="3">3개월 = 130,000원</option>
						</select> <label for="advcontent"></label>
						<textarea id="advcontent" name="advcontent"
							placeholder="요구사항을 써주세요 " style="height: 200px"></textarea>


						<label for="advfile">파일 업로드</label> <input type="file"
							id="advfile" name="advfile">





						<h4>* 관리자 승인 후 개별 연락 드립니다</h4>
					</div>
					<input type="submit" value="보내기">
				</form>
			</div>
		</div>
	</div>



	</div>	<!-- // End content-wrap -->
	</div> <!-- End container -->
	</div>	<!-- // End #wrap -->


	<div class="setLayer">

		<div class="mask"></div>
		<div class="window"></div>

	</div>

</body>
</html>



