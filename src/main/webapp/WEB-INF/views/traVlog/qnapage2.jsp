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
<link rel="stylesheet" type="text/css" href="https://staticassets-a.styleshare.kr/1ea27d2f8b/css/web.scss.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
   <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
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
	width: 100%;
}


.form-group {
	padding-top: 20px;
}
label {
	padding-right: 1000px;
}
 .container {
	margin: 100px;
} 

    
  select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}
input[type=button] {
	background-color: #E89DA2;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	
}

</style>


<body>


	<div id="wrap">
		<jsp:include page="/resources/util/Page/header.jsp" />


		<div id="container">
			<!-- Begin #container -->


			<div class="container">


 <input type="button" value="내가 작성한 질문 보기" onClick="location.href='/traVlog/showquestion.do'">

				<form action="/traVlog/qnapage2.do" method="post">
					<div class="form-group">
						<input type="hidden" name="memid" value="${sessionScope.memid }" />

						
					
					
							<label for="qusname">작성자  </label> <input type="text"
							id="qusname" name="qusname" placeholder="닉네임을 입력해주세요">
					
						
							<label for="qustitle">문의 제목 </label> <input type="text"
							id="qustitle" name="qustitle" placeholder="제목을 입력해주세요">
					
						
	
	
	
						
						<label for="quscontent">상세 문의 내용을 쓰세요</label>
						<textarea id="quscontent" name="quscontent"
							placeholder="문의사항을 쓰세요" style="height: 200px"></textarea>
							
							
							

							

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




</body>
</html>
