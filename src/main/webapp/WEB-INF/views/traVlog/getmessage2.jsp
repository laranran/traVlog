<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/mainContainer.css" rel="stylesheet">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script>
function checkAll(){
    if( $("#th_checkAll").is(':checked') ){
      $("input[name=checkRow]").prop("checked", true);
    }else{
      $("input[name=checkRow]").prop("checked", false);
    }
}
</script>

<script type="text/javascript">
function getmessage(){	
	location.href="/traVlog/getmessage.do";
}
function getmessage2(){
	location.href="/traVlog/getmessage2.do";
	
}
</script>




<title>Insert title here</title>
</head>
<style>
body {
padding:20px;
 background-image: url('/resources/images/BackGround/main.jpg');
   background-repeat: no-repeat;
   background-size: cover;
font-size:15px;
font-family: Arial, Helvetica, sans-serif;}
button{
background-color: #92A8D1;
    color: white;
    padding: 10px 15px;
    margin: 8px 0;
    margin-left: 250px;
    border: none;
    cursor: pointer;
    width: 50%;
    opacity: 0.9;
}
button:hover {
    opacity:1;
}
.btn-group{
padding-right: 30px;
    padding-bottom: 50px;
    padding-top: 20px;
    padding: ;
    float: right;

}
}
</style>
<body>


<div id="wrap">
		
<jsp:include page="/resources/util/Page/header.jsp" />

<div id="container"><!-- Begin #container -->
	<div class="content-wrap">
	

<div class="main">
		<div class="btn-group">
  <button type="button" class="btn btn-primary" onclick="getmessage()">받은메세지</button>
  <button type="button" class="btn btn-primary" onclick="getmessage2()">보낸메세지</button>
  </div>



<table class="table">
	<thead>
		<tr>
		    <th><input type="checkbox" name="checkAll" id="th_checkAll" onclick="checkAll();"/></th>


			<th>번호</th>
			<th>사용자 아이디</th>
			<th>받은 날짜 </th>
			
		</tr>
		
	</thead>



<tbody>
		<c:forEach items="${sList }" var="d" >
			<tr>
			    <td class="center"><input type="checkbox" name="checkRow" value="${content.IDX}" /></td>

				<td>${d.m_no }</td>
				<td><a href="/traVlog/messageDetail.do?memid=${d.memid }">${d.memid }</a> </td>
				<td> ${d.mesdate }</td>
				
				
			</tr>
		</c:forEach>
	</tbody>
	
	</table>
	
	<button>삭제</button>
	
	
	</div>





<div class="right">
</div>

	</div>	<!-- // End content-wrap -->
	</div> <!-- End container -->
	</div>	<!-- // End #wrap -->




</body>
</html>