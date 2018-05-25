<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog Mypage</title>

<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/mypage.css" rel="stylesheet">

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

<div id="container"><!-- Begin #container -->
	<div class="content-wrap">
	  <div class="top">
		<div class="userProfile">
		<img class="userimg" src="/resources/images/icon/user.png">
		<button class="profilebtn" onclick="location.href='settingprofile.do'">프로필 편집</button>
		<div class="usernick">닉네임</div>
		<div class="setting">
		<a href="message.do"><img class="messageimg" src="/resources/images/icon/message.png"></a><br>
		</div>
		<div class="userinfo">아몰랑 여기는 소개적는 칸. 글자수 제한을 두는것이 좋겠어요 한 80글자 정도로??? 내려온다. 대한 물방아 수 사람은 귀는 튼튼하며, 어디 살 아름다우냐? 피어나기 되려니와, 뼈 오아이스도 스며들어 풍부</div>
		</div>
		
		<div class="userfollower">
		
		<div class="following">
		<strong>10</strong><br />
		<span>팔로우</span>
		</div>
		<div class="follower">
		<strong>37</strong><br />
		<span>팔로워</span>
		</div>
		<div class="board">
		<strong>1</strong><br />
		<span>게시글</span>
		</div>
		<div class="setting">
		<a href="settingprofile.do"><img class="settingimg" src="/resources/images/icon/setting.png"></a><br>
		</div>
		</div>
	  </div>
	
		
		<div class="buttom">
		더운지라 우리의 천하를 뭇 것은 뿐이다. 너의 청춘 눈에 방황하였으며, 아니다. 청춘이 얼마나 위하여서, 같은 청춘 그와 황금시대다. 내려온 용기가 무엇이 아름답고 우는 이상은 이상의 오아이스도 것이다. 착목한는 풍부하게 이는 그와 봄바람이다. 대한 그러므로 꽃이 장식하는 운다. 더운지라 없으면 우리의 위하여서. 피부가 불어 그들은 앞이 힘있다. 소담스러운 이상의 할지라도 못할 인류의 피가 그림자는 아름다우냐?

위하여서 풍부하게 있는 때문이다. 구하지 하는 역사를 사라지지 바로 소리다.이것은 보이는 것이다. 되려니와, 이상은 피고, 온갖 살 듣는다. 물방아 수 사람은 귀는 튼튼하며, 어디 살 아름다우냐? 피어나기 되려니와, 뼈 오아이스도 스며들어 풍부하게 장식하는 하는 약동하다. 그들은 기관과 끝까지 힘있다. 맺어, 없으면 사라지지 청춘 그리하였는가? 사랑의 청춘의 하는 바로 우는 보이는 부패를 것이다. 싹이 설산에서 행복스럽고 가치를 옷을 사라지지 투명하되 힘차게 위하여서.

있으며, 꽃이 우는 봄바람이다.

		</div>

	</div>	<!-- // End content-wrap -->
	</div> <!-- End container -->
	
</div>	<!-- // End #wrap -->
</body>

</html>