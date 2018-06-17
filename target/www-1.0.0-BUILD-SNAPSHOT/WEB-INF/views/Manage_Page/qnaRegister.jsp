<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>


<meta charset="UTF-8">

<title>Lazencar | 믿음을 주는 고품격 카셰어링</title>

	<link rel="stylesheet" type="text/css" href="./css/main.css" />
	<link rel="stylesheet" type="text/css" href="./css/paging.css" />  
	
	<style>
	
	.level1 :nth-child(7) .fly {background: #ffb505 !important;}
	</style>
	
  <script type="text/javascript">
  </script>

</head>
<body>
<jsp:include page="/resources/util/Manage_Page/sideMenu.jsp" />

<div class="wrap">

<div class="header">
라젠카 관리자 페이지

</div>		<!-- header end -->


<div class="container">


<div class="content">
         <div class="subtop-content bg_subvisual_02_01">
          <h3 class="subtit">문의 답변 등록</h3>
          <p class="subtxt"><strong>회원의 문의 내역을 관리합니다.</strong><br />조회할 문의내역 조건을 선택하고 검색버튼을 누르시면 문의내역을 볼 수 있으며 답변을 등록할 수 있습니다.</p>
        </div>
        
	<div class="center" >
						
		 <table class="table1">
			<tr>
				<th>기간</th>
				<th>회원계정</th>
			</tr>
			<tr>
				<td class="left">
					<div class="demo">
					기간을 선택하세요.<br> <input id="date-range0" size="30" value=""> 
					</div>
				</td>
				
				<td class="right">
					<textarea rows="2" cols="30"></textarea>
				</td>
				</tr>		
			
			<tr>
				<th>카테고리</th>
				<th>답변상태</th>
			</tr>
			<tr>
				<td class="left">
					<select class="sort">
					    <option>가입/탈퇴
					    <option>예약/취소
					    <option>쿠폰/포인트
					    <option>요금/결제
					    <option>사용/반납
					    <option>보험/사고
					</select>
				</td>
				
				<td class="right">
					<select class="sort">
					    <option>답변 완료
					    <option>답변 대기
					</select>
			</tr>										
		</table>
		
	</div>	
	
		<button class="btnSearch" type="button">검색</button>
		<div class="clear"></div>
		
	<div>
		 <table id="table2">
			
			<tr>
				<th>no</th>
				<th>상세정보</th>
			</tr>
			<tr>
				<td class="left">cell</td>
				<td class="right"></td>
			</tr>		
			<tr>
				<td class="left">cell</td>
				<td class="right"></td>
			</tr>
			<tr>
				<td class="left">cell</td>
				<td class="right"></td>
			</tr>
			<tr>
				<td class="left">cell</td>
				<td class="right"></td>
			</tr>
			<tr>
				<td class="left">cell</td>
				<td class="right"></td>
			</tr>											
		</table>
		</div>
		
		<div class="btnSave">
		<button type="button">글쓰기</button>
		<button type="button">수정</button>
		<button type="submit">완료</button>
		</div>
		
		<div class="clear"></div>

		<div class="paging">
				<a href="#" class="page_first"><img src="./images/page_first.gif" alt="처음" /></a>
				<a href="#" class="page_prev"><img src="./images/page_prev.gif" alt="이전" /></a>
				<strong>1</strong>
				<a href="#" class="page_next"><img src="./images/page_next.gif" alt="다음" /></a>
				<a href="#" class="page_end"><img src="./images/page_end.gif" alt="마지막" /></a>
		</div>	

</div>		<!-- content end -->

</div>		<!-- container end -->


</div>		<!-- wrap end -->

</body>
</html>