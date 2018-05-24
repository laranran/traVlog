<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>

<head>

<meta charset="UTF-8">

<title>Lazencar | 믿음을 주는 고품격 카셰어링</title>

<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<style>
.level1 :nth-child(2) .fly {
	background: #ffb505 !important;
}
</style>

<script type="text/javascript">
	
//만약 출생년도 4자리가 아닌 경우 alert 띄워주기	
function checkSearch_content(){
	if($("#category").val()=='mem_Jumin'){
		if($("content").val().length < 4){		
			return true;
		} else{
			return false;
		}
	} 
	
	if($("#category").val() == 'mem_Id'){
		return true;
	} else {
		return false;
	}
}

$(document).ready(function() {
	$("#searchMember").click(function() {
		var clicked = "clicked";
		var category = $("#category").val();
		var content = $("#content").val();
		var sort = $("#sort").val();

		//입력 데이터 확인 코드
		console.log("카테고리 : " + category);
		console.log("검색내용 : " + content);
		console.log("정렬기준 : " + sort);
		
		if(checkSearch_content()==true){
			var $form = $("<form>").attr("action","/admin/memberManage.do").attr("method", "get");
			$("<input>").attr("type", "hidden").attr("name", "clicked").attr("value", clicked).appendTo($form);
			$("<input>").attr("type", "hidden").attr("name", "category").attr("value",category).appendTo($form);
			$("<input>").attr("type", "hidden").attr("name", "content").attr("value",content).appendTo($form);
			$("<input>").attr("type", "hidden").attr("name", "sort").attr("value", sort).appendTo($form);
			$form.appendTo($(document.body));
	
			$form.submit();
	
		} else{
			alert("출생년도는 숫자 4자리로 입력해주세요. (ex. 1991)")
			console.log("출생년도 에러이지 않을까?")
		}
		
		});
	});
</script>

</head>
<body>
<jsp:include page="/resources/util/Manage_Page/sideMenu.jsp" />
<div class="wrap">

	<div class="header">라젠카 관리자 페이지</div>
	<!-- header end -->


	<div class="contain">


		<div class="content">

			<div class="subtop-content bg_subvisual_02_01">
				<h3 class="subtit">회원목록 조회</h3>
				<p class="subtxt">
					<strong>회원목록을 조회하고 관리합니다.</strong><br />조회할 회원조건을 선택하고 검색버튼을 누르시면
					해당 회원목록을 볼 수 있습니다.
				</p>
			</div>

			<div class="center">
				<table class="table1">
					<tr>
						<th>카테고리</th>
						<th>검색 내용</th>
						<th>정렬</th>
					</tr>

					<tr>
						<td class="left">
						<select class="sort" id="category" name="category">
								<option value="mem_Id">회원 계정
								<option value="mem_Jumin">출생 년도
						</select></td>

						<td><textarea rows="1" cols="30" id="content"></textarea></td>

						<td class="right">
							<!-- 정렬 --> <select class="sort" id="sort" name="sort">
								<option value="mem_Id">회원 이름
								<option value="mem_License">면허 여부
									<!--								<option value="rev">예약 날짜 		join 필요 -->
									<!--								<option value="예약상태">예약 상태	join 필요 -->
									<!--								<option value="결제상태">결제 상태 	dto에 예약 테이블 dao에서  join 필요-->
						</select>
						</td>
					</tr>

				</table>

			</div>
			<button class="btnSearch" id="searchMember" type="button">검색</button>

			
			<div class="clear"></div>

			<div>
				<table id="table2">

					<tr>
						<th class="left">아이디</th>
						<th>이름</th>
						<th>전화번호</th>
						<th>주민번호</th>
						<th>이메일</th>
						<th>주소</th>
						<th class="right">면허여부</th>
					</tr>
					<c:forEach items="${list }" var="i">
						<tr>
							<td class="left">${i.memId }</td>
							<td>${i.memName }</td>
							<td>${i.memPhone }</td>
							<td>${i.memJumin }</td>
							<td>${i.memEmail }</td>
							<td>${i.memAddr }</td>		<!-- list안의 변수 -->
							<td class="right">${i.memLicense }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
				<div class="clear"></div>
			</div>
			<!-- content end -->

		</div>
		<!-- container end -->


	</div>
	<!-- wrap end -->

</body>
</html>

