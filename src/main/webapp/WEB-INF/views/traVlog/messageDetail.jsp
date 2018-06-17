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
	// Get the modal
	var modal = document.getElementById('id01');
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
	
	function showModal(memid, memname) {
		document.getElementById('id01').style.display='block';
		$("#toMemid").val(memid);
		$("#toMemname").val(memname);
	}
</script>
<title>Insert title here</title>
</head>







<style>
body {
	background-image: url('/resources/images/BackGround/main.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	font-size: 15px;
	font-family: Arial, Helvetica, sans-serif;
}
* {
	box-sizing: border-box
}
/* Full-width input fields */
input
[
type
=
text
]
,
{
width
:
 
100%;
padding
:
 
15
px
;
    
margin
:
 
5
px
 
0
22
px
 
0;
display
:
 
inline-block
;
    
border
:
 
none
;
    
background
:
 
#f1f1f1
;
}
/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}
/* Set a style for all buttons */
button {
	background-color: #92A8D1;
	color: white;
	padding: 10px 15px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 80%;
	opacity: 0.9;
}
button:hover {
	opacity: 1;
}
text-align
:center
;
}
.table {
	margin-left: 40px;
	margin-top: 30px;
	text-align: center;
}
/* Extra styles for the cancel button */
.cancelbtn, .signupbtn {
	padding: 14px 20px;
	background-color: #92A8D1;
}
/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
	margin-top: 10px;
	float: left;
	width: 50%;
}
/* Add padding to container elements */
.container {
	padding: 16px;
}
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 80%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: #474e5d;
	padding-top: 50px;
}
/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 10% auto 20% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 80%; /* Could be more or less, depending on screen size */
}
/* Style the horizontal ruler */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}
/* The Close Button (x) */
.close {
	position: absolute;
	right: 35px;
	top: 15px;
	font-size: 40px;
	font-weight: bold;
	color: #f1f1f1;
}
.close:hover, .close:focus {
	color: #f44336;
	cursor: pointer;
}
/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}
/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
	.cancelbtn, .signupbtn {
		width: 100%;
	}
}
</style>

<body>


	<div id="wrap">

		<jsp:include page="/resources/util/Page/header.jsp" />

		<div id="container">
			<!-- Begin #container -->
			<div class="content-wrap">


					<div class="main">
						<h6>받은 메시지</h6>
						<table class="table">




							<thead>
								<tr>
									<th>아이디</th>
									<th>받는 사람</th>
									<th>받은 내용</th>
									<th>받은 날짜</th>
									<th>메세지 보내기</th>
								</tr>

							</thead>

							<tbody>
								<c:forEach items="${m_list }" var="m">
									<tr id="tr${m.memid }">
										<td>${m.memid }</td>
										<td>${m.mesname }</td>
										<td>${m.mescontent }</td>
										<td>${m.mesdate }</td>
										<td><button
												onclick="showModal('${m.memid }', '${m.mesname }')"
												style="width: auto;">message</button></td>
									<tr>
								</c:forEach>
							</tbody>





						</table>




						<div id="id01" class="modal">

							<span
								onclick="document.getElementById('id01').style.display='none'"
								class="close" title="Close Modal">&times;</span>
							<form action="/traVlog/sendmessage.do" method="post">
								<input type="hidden" id="toMemid" name="memid" />
								<div class="modal-content">
									<div class="container_1">
										<h1>	Message</h1>
										<hr>
										<label for="nickname='${memid }'"><b>받는사람</b></label> 
										<input type="text" readonly="readonly" id="toMemname"/>
										<p>
											<label for="content"><b>내용</b></label>
										</p>
										<textarea class="form-control col-sm-3" name="mescontent"
											rows="8"></textarea>
							


						</div>


						<div class="clearfix">

							<button type="submit" class="signupbtn">send</button>
							<button type="button"
								onclick="document.getElementById('id01').style.display='none'"
								class="cancelbtn">cancel</button>
						</div>
						</div>
						</form>
					
			</div>
		</div>
	</div>

</div>





	<div class="right">
	</div>



</div>

</body>
</html>


