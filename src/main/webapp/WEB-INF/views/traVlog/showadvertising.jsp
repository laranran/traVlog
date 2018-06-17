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

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="/resources/css/mainContainer.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/mypage.css" rel="stylesheet">
<link href="/resources/css/mylist.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://staticassets-a.styleshare.kr/1ea27d2f8b/css/web.scss.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>


 


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
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
input[type=submit]:hover {
	background-color: #45a049;
}
.form-group {
	padding-top: 20px;
}
label {
	padding-right: 1000px;
}
.container {
	margin: 100px 400px;
}
/* .container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    } */
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
        <th>신청자 이름</th>
        
        <th>광고 시작일</th>
       
         <th>광고 제목</th>
         
         <th>승인 처리 과정</th>
       
         <th>광고 가격</th>
        
         <th>광고 이미지</th>
          </tr>
   
    </thead>
    
    <tbody>
     

       <c:forEach items="${a_list }" var="a">
							
				 <tr>					
										<td>${a.advid }</td>
									     <td>${a.advstart}</td>
										<td>${a.advname }</td>
										<td>${a.advtitle }</td>
										<td>${a.advapprove }</td>
										<td>${a.advfile }</td>
											
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