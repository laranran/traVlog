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
<link rel="stylesheet" type="text/css" href="https://staticassets-a.styleshare.kr/1ea27d2f8b/css/web.scss.css" />


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>



<script>
function checkAll(){
    if( $("#th_checkAll").is(':checked') ){
       $("input[name=checkRow]").prop("checked", true);
    }else{
      $("input[name=checkRow]").prop("checked", false);
    }
     
/* 
    $('input[name=checkRow]').on('change', function(){
    	  $('input[name=checkRow]').prop('checked', this.checked);
    	});
} */
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


.table{
text-aling:center;}
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
<table class="table table-striped">
	<thead>
		<tr>
		    <th><input type="checkbox" name="checkAll" id="th_checkAll" onclick="checkAll();"/></th>
			<th>번호</th>
			<th>받은 사람</th>
			<th>보낸 내용 </th>
			<th>보낸 날짜 </th>
			
		</tr>
		
	</thead>
<tbody>
		<c:forEach items="${sList }" var="d" >
			<tr>
			    <td class="center"><input type="checkbox" name="checkRow" value="${content.IDX}" /></td>
				<td>${d.m_no }</td>
				 <td><a href="/traVlog/messageDetail.do?memid=${d.memid }">${d.memid }</a> </td> 
				
				<%-- <td>${d.memid }</td> --%>
				
				<td>${d.mescontent }</td>
				<td> ${d.mesdate }</td>
				
				
			</tr>
		</c:forEach>
	</tbody>
	
	</table>
	
	
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