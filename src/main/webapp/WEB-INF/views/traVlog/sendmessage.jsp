<%--   <%@ page language="java" contentType="text/html; charset=UTF-8"
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
</head>
<body>



<h1>메세지 보내기 </h1>

<div id="id01" class="modal">

							<span
								onclick="document.getElementById('id01').style.display='none'"
								class="close" title="Close Modal">&times;</span>
							<form action="/traVlog/sendmessage.do" method="post">
								<input type="hidden" id="toMemid" name="memid" />
								<input type="hidden" id="fromMemid" name="mesname" />
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
							


						<div class="clearfix">

							<button type="submit" class="signupbtn">send</button>
							<button type="button"
								onclick="document.getElementById('id01').style.display='none'"
								class="cancelbtn">cancel</button>
						</div>
						</div>
							</form>
						</div>
				

										


</body>
</html>





 




 --%>