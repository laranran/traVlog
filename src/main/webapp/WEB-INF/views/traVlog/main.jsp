<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog</title>

<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/mainContainer.css" rel="stylesheet">

<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
//  var stmnLEFT = 10; // 오른쪽 여백 
//  var stmnGAP1 = 0; // 위쪽 여백 
//  var stmnGAP2 = 10; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
//  var stmnBASE = 10; // 스크롤 시작위치 
//  var stmnActivateSpeed = 35; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
//  var stmnScrollSpeed = 20; //스크롤 속도 (클수록 느림)
//  var stmnTimer; 
	
// 	function RefreshStaticMenu() {
// 		var stmnStartPoint, stmnEndPoint;
// 		stmnStartPoint = parseInt(
// 				document.getElementById('STATICMENU').style.top, 10);
// 		stmnEndPoint = Math.max(document.documentElement.scrollTop,
// 				document.body.scrollTop)
// 				+ stmnGAP2;
// 		if (stmnEndPoint < stmnGAP1)
// 			stmnEndPoint = stmnGAP1;
// 		if (stmnStartPoint != stmnEndPoint) {
// 			stmnScrollAmount = Math.ceil(Math
// 					.abs(stmnEndPoint - stmnStartPoint) / 15);
// 			document.getElementById('STATICMENU').style.top = parseInt(document
// 					.getElementById('STATICMENU').style.top, 10)
// 					+ ((stmnEndPoint < stmnStartPoint) ? -stmnScrollAmount
// 							: stmnScrollAmount) + 'px';
// 			stmnRefreshTimer = stmnScrollSpeed;
// 		}
// 		stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed);
// 	}
// 	function InitializeStaticMenu() {
// 		document.getElementById('STATICMENU').style.right = stmnLEFT + 'px'; //처음에 오른쪽에 위치. left로 바꿔도.
// 		document.getElementById('STATICMENU').style.top = document.body.scrollTop
// 				+ stmnBASE + 'px';
// 		RefreshStaticMenu();
// 	}

function recommend(a){
	var bodno = a;
		console.log("bodno : "+bodno);
		$.ajax({
	 		type: "get"
	 		, url: "/traVlog/recommend.do"
	 		, dataType: "json"
	 		, data: {
				bodno: bodno
	 		}
	 		, success: function(data) {
	 			alert("ajax성공");
	 			console.log(data);

	 			if(data.result) {
	 				$("#like_"+a).prop("src", "/resources/images/icon/liked.png");
	 			} else {
	 				$("#like_"+a).prop("src", "/resources/images/icon/like.png");
	 			}
	 			console.log("AJAX a : "+a);
	 			console.log(data.recommend);
 				$("#recommend_"+a).html(data.recommend);
	 			
	 		}
	 		, error: function(e) {
	 			alert("ajax에러");
	 			console.log(e.responseText);
	 		}
	 	});
		
}

function pin(a){
	var bodno = a;
	console.log("bodno : "+bodno);
	$.ajax({
 		type: "get"
 		, url: "/traVlog/pin.do"
 		, dataType: "json"
 		, data: {
			bodno: bodno
 		}
 		, success: function(data) {
 			alert("ajax성공");
 			console.log(data);

 			if(data.result) {
 				$("#pin_"+a).prop("src", "/resources/images/icon/pined.png");
 			} else {
 				$("#pin_"+a).prop("src", "/resources/images/icon/pin.png");
 			}
 			console.log("AJAX a : "+a);
 			console.log(data.pin);
				$("#pin_"+a).html(data.pin);
 			
 		}
 		, error: function(e) {
 			alert("ajax에러");
 			console.log(e.responseText);
 		}
 	});
	
}

//boardList 갯수 3개씩 추가하기.. +무한스크롤과 ajax 이용해서
var count = ${count};
$(document).ready(function () {
   $(document).scroll(function() {
    var maxHeight = $(document).height();
    var currentScroll = $(window).scrollTop() + $(window).height();

    if (maxHeight == currentScroll) {
        // Append next contents
        //검색 기능 중
//         if($("#search").val() != null && $("#search").val() != ""){
//            console.log("search 값 존재");
            
//            $.ajax({
//                type:'GET',
//                url:'/traVlog/addBoardList.do',
//                  dataType:'html',
//                  data:{"count":count , "search":search},
//                  success : function(data){
//                     $("#main").html(data);
//                     count += 2;
//                     console.log(count);
//                  },error:function(data){
//                     alert("실패");
//                  }
//              }); // ajax 끝
//         }
//         else{
           //일반 페이지 (not 검색)
         $.ajax({
           type:'GET',
           url:'/traVlog/addBoardList.do',
             dataType:'html',
             data:{"count":count},
             success : function(data){
                $("#main").html(data);
                count += 2;
                console.log(count);
             },error:function(data){
                alert("실패");
             }
         });//ajax 끝
//         } //else 끝
    }//스크롤 바닥찍은거 끝
  });
});

function RefreshStaticMenu() {
    var stmnStartPoint, stmnEndPoint;
    stmnStartPoint = parseInt(
          document.getElementById('STATICMENU').style.top, 10);
    stmnEndPoint = Math.max(document.documentElement.scrollTop,
          document.body.scrollTop)
          + stmnGAP2;
    if (stmnEndPoint < stmnGAP1)
       stmnEndPoint = stmnGAP1;
    if (stmnStartPoint != stmnEndPoint) {
       stmnScrollAmount = Math.ceil(Math
             .abs(stmnEndPoint - stmnStartPoint) / 15);
       document.getElementById('STATICMENU').style.top = parseInt(document
             .getElementById('STATICMENU').style.top, 10)
             + ((stmnEndPoint < stmnStartPoint) ? -stmnScrollAmount
                   : stmnScrollAmount) + 'px';
       stmnRefreshTimer = stmnScrollSpeed;
    }
    stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed);
 }
 function InitializeStaticMenu() {
    document.getElementById('STATICMENU').style.right = stmnLEFT + 'px'; //처음에 오른쪽에 위치. left로 바꿔도.
    document.getElementById('STATICMENU').style.top = document.body.scrollTop
          + stmnBASE + 'px';
    RefreshStaticMenu();
 }
</script>

</head>

<body>
<div id="wrap">
		
<jsp:include page="/resources/util/Page/header.jsp" />

<div id="container"><!-- Begin #container -->
	<div class="content-wrap">
		<div class="main">
		<!-- BoardList 시작 -->
			
			<c:forEach items="${boardList }" var="board" varStatus="listNumber" begin="0" end="2">
<%-- 			<c:forEach items="${boardList }" var="board" varStatus="listNumber">	 --%>
			<div class="board">
				<input type="hidden" id="bodno_${board.bodno }" name="bodno" value="${board.bodno }">
				<div class="memInfo"> 
				<img class="userimg" src="/resources/images/icon/user.png">
				<strong class="nick">${board.bodname }</strong>
				<img class="claim" alt="신고하기" src="/resources/images/icon/claim.png">
				</div>
				
				
				<div class="boardInfo">
				<strong class="title">${board.bodtitle }</strong>
				<c:if test="${board.startdate != null && board.enddate!=null }">
				<span class="Bdate">
				<img class="calender" src="/resources/images/icon/calender.png">
				${board.startdate }
				<img class="airplane" src="/resources/images/icon/airplane.png">
				${board.enddate }</span>
				</c:if>
				</div>
				
				<div class="boardImg">
<%-- 				<c:if test="${board.imageList != null }"> --%>
					<img class="contentImg"  src="/resources/images/BackGround/login.jpg">
<%--  				</c:if> --%>
				</div>
				
				<div class="icon">
				<!-- 좋아요 기능  -->
				<button id="recoBtn_${board.bodno}" class="btnRecommend" onclick="recommend(${board.bodno });">
				<c:if test="${board.isExistsLikeData eq '1'}">
				<img id="like_${board.bodno}" class="like" width="30px;" src="/resources/images/icon/liked.png" >
				</c:if>
				<c:if test="${board.isExistsLikeData eq '0'}">
				<img id="like_${board.bodno}" class="like" width="30px;" src="/resources/images/icon/like.png">
				</c:if>
				</button>

				<button><img class="comm" width="30px;" src="/resources/images/icon/comment.png"></button>
				
				<!-- 보관기능 -->
				<button id="pinBtn_${board.bodno}" class="btnPin" onclick="pin(${board.bodno });">
				<c:if test="${board.isExistsPinData eq '1'}">
				<img id="pin_${board.bodno}" class="pin" width="30px;" src="/resources/images/icon/pined.png" >
				</c:if>
				<c:if test="${board.isExistsPinData eq '0'}">
				<img id="pin_${board.bodno}" class="pin" width="30px;" src="/resources/images/icon/pin.png">
				</c:if>
				</button>
				
				</div>
				
				
				<div class="Bcontent">
				<label>좋아요 <strong id="recommend_${board.bodno }">${board.recommendCnt }</strong> 개</label>
				${board.bodcontent }
				</div>
			</div>
			</c:forEach>
			<!-- boardList 끝 -->
			
		</div>
		
		<div class="right" id="STATICMENU">
			<div class="user">
			<c:forEach items="${memberInfo}" var="member">
			<img class="userimg" src="/resources/images/icon/user.png">
			<span class="nick">${member.memnick}</span><br>
			<span class="id">${member.memid}</span>
			</c:forEach>
			</div>
			
			<strong>인기 해시태그</strong><br>
			<div class="hashTag">
				<table class="topTag">
	            <c:forEach items="${tagList}" var="tag">
                <tbody>
                    <tr>
                        <td class="tagname"><a href="#" class="tagA">#${tag.tagname}</a></td>
                        <td class="taghit">${tag.taghit}</td>
                    </tr>
                </tbody>
	            </c:forEach>
	        	</table>
			</div>
			
			<strong>인기 사용자</strong><br>
			<div class="follower">
			<table class="topMember">
	            <c:forEach items="${memberList}" var="mem">
                <tbody>
                    <tr>
                        <td class="memnick"><a href="#" class="memA">${mem.memnick}</a></td>
                        <td class="memfollower">${mem.memfollower}</td>
                    </tr>
                </tbody>
	            </c:forEach>
	        	</table>
			</div>
		</div>

	</div>	<!-- // End content-wrap -->
	</div> <!-- End container -->
	
</div>	<!-- // End #wrap -->
</body>

</html>













