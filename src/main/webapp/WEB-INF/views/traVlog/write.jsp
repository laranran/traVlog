<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog</title>
<!-- 달력 CSS -->
<link rel="stylesheet" href="/resources/rangecalendar/css/normalize.css">
<link rel="stylesheet" href="/resources/rangecalendar/css/style.css">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,100,100italic' rel='stylesheet' type='text/css'>
<!-- 달력CSS끝 -->
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/mainContainer.css" rel="stylesheet">
<!-- Naver SmartEditor -->
<script type="text/javascript"
 src="/resources/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
function submitContents(elClickedObj) {
	// 에디터의 내용이 textarea에 적용된다.
	oEditors.getById["bodcontent"].exec("UPDATE_CONTENTS_FIELD", []);

	try {
		elClickedObj.form.submit();
	} catch (e) {
	}
	
}
$(document).ready(function() {
	$("#c").css("display","none");
	$("#btnWrite").click(function() {
		var startdate=$("#sel1text").text();
		var enddate=$("#sel2text").text();
		console.log(startdate+","+enddate);
		var inputStartDate=$('<input type="hidden" name="startdate" />');
		inputStartDate.attr('value',startdate);
		
		var inputEndDate=$('<input type="hidden" name="enddate" />');
		inputEndDate.attr('value',enddate);
		
		$("#boardform").append(inputStartDate);
		$("#boardform").append(inputEndDate);
		
		submitContents($(this));
	});
	
	$("#btnCalender").click(function(){
		if($("#default").css("display") == "none"){   
	        $("#default").css("display", "block");
	        $("#c").css("display", "none");
	        $("#btnCalender").html("일정추가하기");
	    } else {  
	        $("#default").css("display", "none");
	        $("#c").css("display", "block");
	        $("#btnCalender").html("돌아가기");
	    } 
	});

});
</script>
<style type="text/css">
body {
   background-image: url('/resources/images/BackGround/main.jpg');
   background-repeat: no-repeat;
   background-size: cover;
}
</style>

</head>

<body>
<div id="wrap">
		
<jsp:include page="/resources/util/Page/header.jsp" />

<div id="container"><!-- Begin #container -->
	<div class="content-wrap">
		<div class="center">
		<form id="boardform"action="/traVlog/write.do" method="POST" enctype="multipart/form-data">
			<div id="default">
				<div class="form-group">
					<label for="bodname">작성자</label> <input type="text" id="bodname"
						name="bodname" value="${memnick }" readonly="readonly"
						class="form-control" />
				</div>
				<div class="form-group">
					<label for="bodtitle">제목</label> <input type="text" id="bodtitle"
						name="bodtitle" class="form-control"   required="required"/>
				</div>
				<div class="form-group">
					<label for="bodcontent">본문</label><br>
					<textarea style="width:1000px; height:700px; " id="bodcontent" name="bodcontent"  required="required"></textarea>
					<br>
					<label for="bodhashtag">태그</label>
					<input type="text"  style="width:600px;" id="bodhashtag" name="bodhashtag" placeholder="#아무말#헤헤#테스트" /><br><br>
					<label for="upload">첨부파일</label>
					<input type="file" id="upload" name="upload" multiple /> <br>
				</div>
			</div>
				<div id="c">
				
				<!--<input type="text" class="date">-->
				
				<div id="calHelp">
					<div class="first active"><i>A</i> <b>여행시작</b><b id="sel1text"></b></div><div class="disabled"><i>B</i><b>여행끝</b> <b id="sel2text"></b></div>
				</div>
				<div id="disp"><div id="prev" class="nav">←</div><div id="month">Hello world</div><div id="next" class="nav">→</div></div>
				<div id="cal"></div>
				</div><!-- /#c -->
				<br>
				<!-- 날짜 보내기 -->
				<div style="display:none;">
<!-- 					<input type="date" id="startDate" name="startdate">$("#sel1text").text()</input> -->
<!-- 					<input type="date" id="endDate" name="enddate" >$("#sel2text").text()</input><br><br> -->
				</div>
			<button id="btnWrite" class="center-block">작성완료</button>
		</form>
			<button id="btnCalender" class="center-block">일정 추가하기</button>
		
		</div>
				
	</div>	<!-- // End content-wrap -->
	</div> <!-- End container -->
	
</div>	<!-- // End #wrap -->

		<!-- <textarea> 태그 아래쪽에 스마트에디터 초기화코드 삽입 -->
		<script type="text/javascript">
			var oEditors = [];
			nhn.husky.EZCreator.createInIFrame({
				oAppRef : oEditors,
				elPlaceHolder : "bodcontent",
				sSkinURI : "/resources/smarteditor/SmartEditor2Skin.html",
				fCreator : "createSEditor2",
				htParams : {
					bUseToolbar : true, // 툴바 사용여부
					bUseVerticalResizer : false, //입력창 크기 조절바
					bUseModeChanger : true
				//모드 탭
				}
			});
		</script>
		<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

		<script src="/resources/rangecalendar/js/index.js"></script>
</body>

</html>