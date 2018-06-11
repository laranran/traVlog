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
 var stmnLEFT = 10; // 오른쪽 여백 
 var stmnGAP1 = 0; // 위쪽 여백 
 var stmnGAP2 = 10; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
 var stmnBASE = 10; // 스크롤 시작위치 
 var stmnActivateSpeed = 35; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
 var stmnScrollSpeed = 20; //스크롤 속도 (클수록 느림)
 var stmnTimer; 
 
 function RefreshStaticMenu() { 
  var stmnStartPoint, stmnEndPoint; 
  stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
  stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
  if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
  if (stmnStartPoint != stmnEndPoint) { 
   stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
   document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
   stmnRefreshTimer = stmnScrollSpeed; 
   }
  stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
  } 
 function InitializeStaticMenu() {
  document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //처음에 오른쪽에 위치. left로 바꿔도.
  document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
  RefreshStaticMenu();
  }
</script>


</head>

<body onload="InitializeStaticMenu();">
<div id="wrap">
		
<jsp:include page="/resources/util/Page/header.jsp" />

<div id="container"><!-- Begin #container -->
	<div class="content-wrap">
		<div class="main">
			<div class="board">
				<div class="memInfo">
				<img class="userimg" src="/resources/images/icon/user.png">
				<strong class="nick">글쓴사람 닉네임</strong>
				<img class="claim" alt="신고하기" src="/resources/images/icon/claim.png">
				</div>
				
				<div class="boardInfo">
				<strong class="title">글 제목!</strong>
				<span class="Bdate">
				<img class="userimg" src="/resources/images/icon/calender.png">
				2018.05.23 
				<img class="userimg" src="/resources/images/icon/airplane.png">
				2018.06.19</span>
				</div>
				
				<div class="boardImg">
				<img class="userimg" src="/resources/images/icon/airplane.png">
				
				</div>
				
				<div class="icon">
				<img class="like" width="30px;" src="/resources/images/icon/like.png">
				<img class="comm" width="30px;" src="/resources/images/icon/calender.png">
				<img class="pick" width="30px;" src="/resources/images/icon/calender.png">
				</div>
				<div class="content">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras egestas ligula tellus, ut hendrerit nisi pharetra a. Ut ultrices hendrerit ultricies. Ut nulla mauris, mollis ut feugiat at, dapibus ut arcu. Curabitur consectetur id nisl id tempor. Curabitur congue, libero ut tincidunt malesuada, diam massa rhoncus enim, ut aliquet elit felis sed erat. Ut posuere lorem nulla, at eleifend nisi tristique id. Maecenas quis mauris mattis, vestibulum urna ac, laoreet felis. Mauris ullamcorper, ante sed efficitur vulputate, sem enim consequat elit, eget vestibulum lectus nibh feugiat risus. Nulla ultrices sit amet neque ac luctus. Donec mauris lorem, dictum at turpis at, congue cursus mi. Fusce faucibus mauris in laoreet faucibus. Vivamus molestie est in auctor faucibus. Mauris aliquet, velit ac molestie hendrerit, erat nibh porta nisl, in rutrum leo enim et metus. Nunc iaculis feugiat lorem, at lobortis tellus porta vel. Quisque eu ligula eu nisi mattis feugiat.
				Integer lobortis eros sit amet justo condimentum, quis pellentesque ex vulputate. Etiam hendrerit tempus urna, a imperdiet erat ornare non. Nullam tincidunt dolor sed orci pharetra rhoncus. Sed lacinia nec dolor vitae ultrices. In nec dolor magna. Quisque lacinia leo eu porttitor bibendum. Nunc dignissim dui nec nisi faucibus ornare. Aliquam finibus, velit at accumsan porttitor, libero orci dapibus eros, sed fermentum tortor lorem quis quam. Fusce posuere, ante eget sollicitudin fermentum, massa libero gravida lectus, sit amet pulvinar augue tellus nec felis. Maecenas laoreet metus non ex maximus finibus. Curabitur sit amet est at urna porta viverra eget sit amet quam. Vivamus euismod, quam id faucibus viverra, nibh nunc fermentum velit, nec ultricies urna ipsum a velit. Aliquam nibh lectus, porttitor sed quam tristique, aliquam pretium massa. Mauris ultricies convallis rutrum. Donec justo dui, efficitur et consectetur eu, maximus eget ex.
				Nunc risus nulla, fermentum vel scelerisque quis, suscipit quis nulla. Mauris suscipit augue quis pellentesque lacinia. Sed ut nulla purus. Pellentesque et ante velit. Phasellus hendrerit urna ac mattis semper. Morbi eget porta ligula. Cras in cursus leo, at commodo lacus. Suspendisse nec maximus eros, vitae tempus nulla. In non lorem iaculis, bibendum ante tristique, dignissim dui. Aliquam erat volutpat. Vivamus fringilla justo ante, vitae rhoncus mi facilisis auctor. Praesent eget elit mauris. Etiam ut tortor tempus, posuere massa a, aliquam nisl. Aliquam erat volutpat. Cras gravida risus quis tellus congue interdum.
				</div>
			</div>
				
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
                        <td class="memnick"><a href="otherpage.do?memnick=${mem.memnick }" class="memA">${mem.memnick}</a></td>
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