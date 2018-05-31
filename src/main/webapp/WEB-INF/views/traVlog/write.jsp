<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	
<!-- 달력 CSS -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 메인CSS -->
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/mainContainer.css" rel="stylesheet">

<!-- 다음 map -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8d0237c9907bee104ad426d666bbc73e"></script>

<!-- Naver SmartEditor -->
<script type="text/javascript"
 src="/resources/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
 
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
#map {
	width: 80%;
	height: 600px;
	display: none;
	margin: auto;
	border: 10px solid #92A8D1;
}
</style>
<script type="text/javascript">


function submitContents(elClickedObj) {
	// 에디터의 내용이 textarea에 적용된다.
	oEditors.getById["bodcontent"].exec("UPDATE_CONTENTS_FIELD", []);

	try {
		elClickedObj.form.submit();
	} catch (e) {
	}
}
function getMarkers(markers){
	return markers;
}
// 맵만드는 script
var allMarkers = [];
function makeDaumMap(){

	var container = document.getElementById('map');
	var options = {
		center : new daum.maps.LatLng(37.5667, 126.9787),
		level : 5
	};
	var map = new daum.maps.Map(container, options);
		
	
	//마커파트
	// 지도를 클릭한 위치에 표출할 마커입니다
	var marker = new daum.maps.Marker({ 
	    // 지도 중심좌표에 마커를 생성합니다 
	    position: map.getCenter() 
	}); 
	// 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {        
	    // 클릭한 위치에 마커를 표시합니다 
	    if(markers.length < 3){
		    addMarker(mouseEvent.latLng);
	    }
	});

	
	
	// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
	var markers = [];

	// 마커를 생성하고 지도위에 표시하는 함수입니다
	function addMarker(position) {
	    
	    // 마커를 생성합니다
	    var marker = new daum.maps.Marker({
	        position: position,
	        clickable: true
	    });
	    // 마커가 지도 위에 표시되도록 설정합니다
	    marker.setMap(map);
	    // 생성된 마커를 배열에 추가합니다
	    markers.push(marker);

	  //마커를 클릭했을때 마커 삭제
		daum.maps.event.addListener(marker, 'click', function() {
			marker.setMap(null);
			markers.splice(marker,1);
// 		    alert(marker.getPosition());
		});
	}
 	allMarkers = getMarkers(markers);
}


$(function($) {
    $.datepicker.regional['ko'] = {
        closeText : '닫기',
        prevText : '이전달',
        nextText : '다음달',
        currentText : '오늘',
        monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames : ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
        weekHeader : 'Wk',
        dateFormat : 'yy-mm-dd',
        firstDay : 0,
        isRTL : false,
        duration : 200,
        showAnim : 'show',
        showMonthAfterYear : false,
        yearSuffix : '년'
    };
    $.datepicker.setDefaults($.datepicker.regional['ko']);
});

$( function() {
    $( "#datepicker1" ).datepicker();
    $( "#datepicker2" ).datepicker();
  } );


$(document).ready(function() {

	$("#c").css("display","none");
	$("#btnWrite").click(function() {
		if($("#datepicker1").val() != null && $("#datepicker1").val() !=""
				&& $("#datepicker2").val() != null && $("#datepicker2").val() !=""){
			var startdate=$("#datepicker1").val();
			var enddate=$("#datepicker2").val();
			console.log(startdate+","+enddate);
			var inputStartDate=$('<input type="hidden" name="startdate" />');
			inputStartDate.attr('value',startdate);
			
			var inputEndDate=$('<input type="hidden" name="enddate" />');
			inputEndDate.attr('value',enddate);
			
			$("#boardform").append(inputStartDate);
			$("#boardform").append(inputEndDate);
		}
		
		//마커 좌표 보내기
		if(allMarkers.length >0){
			for(var i=0; i<allMarkers.length; i++){
			console.log(allMarkers[i].getPosition());
			var position=$('<input type="hidden" name="position" />');
			position.attr('value',allMarkers[i].getPosition());
			
			$("#boardform").append(position);
			}
		}
		submitContents($(this));
	});
	
	$("#btnCalender").click(function(){
		if($("#default").css("display") == "none"){   
	        $("#default").css("display", "block");
	        $("#map").css("display", "none");
	        $("#btnCalender").html("경로 추가하기");
	    } else {  
	        $("#default").css("display", "none");
	        $("#calAndMap").css("display", "block");
			$("#map").css("display", "block");
			makeDaumMap();
			
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
		<form id="boardform" action="/traVlog/write.do" method="POST" enctype="multipart/form-data">
			<div id="default">
				<div class="form-group">
					<label for="bodname">작성자</label> <input type="text" id="bodname"
						name="bodname" value="${memnick }" readonly="readonly"
						class="form-control" style="width:80%;"/>
				</div>
				<div class="form-group">
					<label for="bodtitle">제목</label> <input type="text" id="bodtitle"
						name="bodtitle" class="form-control" style="width:80%;"   required="required"/>
				</div>
				<div class="form-group">
					<label for="bodcontent">본문</label><br>
					<textarea style="width:1000px; height:700px; " id="bodcontent" name="bodcontent"  required="required"></textarea>
					<br>
					<label for="bodhashtag">태그</label>
					<input type="text" class="form-control" style="width:600px; display: inline;" id="bodhashtag" 
						name="bodhashtag" placeholder="#아무말#헤헤#테스트" />
					<label for="upload" style="margin-left:60px;">첨부파일</label> 
					<input type="file" id="upload" name="upload" style="display: inline; " multiple /> <br>
				</div>
				<p>여행 기간<br>
				<input type="text" style="width:150px; display:inline;" class="form-control" id="datepicker1"> ~
	  			<input type="text" style="width:150px; display:inline;" class="form-control" id="datepicker2">
	  			</p>
			</div>
				<br>
				<!-- 지도 출력 -->
				<div id="map" ></div>
			<button id="btnWrite" class="center-block">작성완료</button>
		</form>
			<button id="btnCalender" class="center-block">경로 추가하기</button>
		
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
</body>

</html>