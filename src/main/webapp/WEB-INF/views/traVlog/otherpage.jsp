<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog 남의페이지</title>

<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/mypage.css" rel="stylesheet">
<link href="/resources/css/mylist.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>


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

		<div id="container">
			<!-- Begin #container -->
			<div class="content-wrap">
				<div class="top">
					<div class="userProfile">
						<img class="userimg" src="/resources/images/icon/user.png">
						<button class="profilebtn"
							onclick="location.href='settingprofile.do'">프로필 편집</button>
						<div class="usernick">${nick }</div>
						<div class="setting">
						<a href="report.do?memnick=${nick }"><img class="reportimg"
								src="/resources/images/icon/report.png"></a>
							<a href="getmessage.do"><img class="messageimg"
								src="/resources/images/icon/message.png"></a><br>
								
						</div>
						<div class="userinfo">아몰랑 여기는 소개적는 칸. 글자수 제한을 두는것이 좋겠어요 한
							80글자 정도로??? 내려온다. 대한 물방아 수 사람은 귀는 튼튼하며, 어디 살 아름다우냐? 피어나기 되려니와, 뼈
							오아이스도 스며들어 풍부</div>
					</div>

					<div class="userfollower">

						<div class="following">
							<strong>10</strong><br /> <span>팔로우</span>
						</div>
						<div class="follower">
							<strong>37</strong><br /> <span>팔로워</span>
						</div>
						<div class="board">
							<strong>1</strong><br /> <span>게시글</span>
						</div>

						<div class="setting">
							<a href="settingprofile.do"><img class="settingimg"
								src="/resources/images/icon/setting.png"></a><br>
						</div>
					</div>
				</div>

				<div class="buttom">

					<%-- 					<c:forEach items="ss" begin="0" end="3" var="i" step="1" varStatus="listNumber"> --%>
					<%-- 						</c:forEach> --%>
					<div class="mylist-content">
						<div class="row">

							<div class="pic col-md-4">
								<a href="#"><img class="pic-src"
									src="/resources/images/MyPage/chatest1.jpg" alt="photo"></a>
							</div>

							<div class="pic col-md-4">
								<a href="#2"><img class="pic-src"
									src="/resources/images/MyPage/chatest2.jpg" alt="photo"></a>
							</div>

							<div class="pic col-md-4">
								<a href="#3"><img class="pic-src"
									src="/resources/images/MyPage/chatest3.jpg" alt="photo"></a>
							</div>

							<div class="pic col-md-4">
								<a href="#4"><img class="pic-src"
									src="/resources/images/MyPage/chatest4.jpg" alt="photo"></a>
							</div>

							<div class="pic col-md-4">
								<a href="#5"><img class="pic-src"
									src="/resources/images/MyPage/test_5.png" alt="photo"></a>
							</div>

						</div>
					</div>

				</div>

			</div>
			<!-- // End content-wrap -->
		</div>
		<!-- End container -->

	</div>
	<!-- // End #wrap -->

	<div class="setDiv">

		<div class="mask"></div>
		<div class="window">
			<a href="/post/test/list/detail/">
			<img class="pic" src="/resources/images/MyPage/test_3.gif" alt="photo"></a> <input
				type="button" href="#" class="close" value="창닫기" />
				
		<div class="info">
		
		요기가 정보
		
		</div>
		</div>

		
		
	</div>

</body>

<script type="text/javascript">

	function wrapWindowByMask() {
		// 화면의 높이와 너비를 변수로 만듭니다.
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();

		// 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정합니다.
		$('.mask').css({
			'width' : maskWidth,
			'height' : maskHeight
		});

		// fade 애니메이션 : 1초 동안 검게 됐다가 80%의 불투명으로 변합니다.
		$('.mask').fadeIn(500);
		$('.mask').fadeTo("slow", 0.5);

		// 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듭니다.
		var left = ($(window).scrollLeft() + ($(window).width() - $('.window')
				.width()) / 2);
		var top = ($(window).scrollTop() + ($(window).height() - $('.window')
				.height()) / 2);

		// css 스타일을 변경합니다.
		$('.window').css({
			'left' : left,
			'top' : top,
			'position' : 'absolute'
		});

		// 레이어 팝업을 띄웁니다.
		$('.window').show();
	}

	$(document).ready(function() {
		// showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄웁니다.
		$('.pic-src').click(function(e) {
			
			// preventDefault는 href의 링크 기본 행동을 막는 기능입니다.
			e.preventDefault();
			wrapWindowByMask();
		});


		// 닫기(close)를 눌렀을 때 작동합니다.
		$('.window .close').click(function(e) {
			e.preventDefault();
			$('.mask, .window').hide();
		});

		// 뒤 검은 마스크를 클릭시에도 모두 제거하도록 처리합니다.
		$('.mask').click(function() {
			$(this).hide();
			$('.window').hide();
		});
	});
	
	
	
</script>

</html>