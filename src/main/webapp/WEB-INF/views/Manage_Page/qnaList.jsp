<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="java.util.List" %>
<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lazencar | 믿음을 주는 고품격 카셰어링</title>

	<link rel="stylesheet" type="text/css" href="./css/main.css" />
	<link rel="stylesheet" type="text/css" href="./css/Paging.css" />  

	<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
	
	<style>
	.level1 :nth-child(7) .fly {background: #ffb505 !important;}
	
	tr.hiddenTr{
 	display:none;  
/*  	display:table-row;  */
	}
	tr.hiddenTr td{
		padding: 15px 0 15px 100px;
	
	}
	tr.hiddenTr td div{    
	text-align: left;
	float: left; 
	width: 33%;
	margin-left:30px;
	}
	tr.hiddenTr td div font{
		font-size:17px;
	}
	tr.hiddenTr td div button{
		text-align:right;
	}
	</style>
	
  <script type="text/javascript">
  
  //리스트 하단에 추가로 출력해주기 위해서 토글 함수 생성
  	function showDetail(id){
		  obj = document.getElementById(id);
		  
		  if(obj.style.display == "none"){
			  obj.style.display = "table-row";
		  }else{
			  obj.style.display="none";
		  }
  	}

  //수정 버튼 눌렀을시 실행
	function update_clicked(a){
		if(confirm("수정하시겠습니까?")){
			var btnEdit = "updateQna";
			var key_qnaNum =$("#key_qnaNum_"+a).text();
			var edit_qnaAnswer = $("#edit_qna_Answer_"+a).val();
			
			console.log(key_qnaNum);
			console.log(edit_qnaAnswer);
			
			var $form3 = $("<form>").attr("action","/admin/qnaList.do").attr("method","get");
			$("<input>").attr("type","hidden").attr("name","key_qnaNum").attr("value",key_qnaNum).appendTo($form3);
			$("<input>").attr("type","hidden").attr("name","edit_qnaAnswer").attr("value",edit_qnaAnswer).appendTo($form3);
			$("<input>").attr("type","hidden").attr("name","btnEdit").attr("value",btnEdit).appendTo($form3);
			$form3.appendTo($(document.body));
			
			$form3.submit();
		}else return;
	}
	
	
// 	검색 및 정렬하는 ajax
$(document).ready(function(){
	$("#searchQna").click(function(){
		//번호 제목 내용 날짜
		var category =$("#category").val();
		var sort=$("#sort").val();
		var content=$("#search_content").val();
		var clicked="clicked";
		
		console.log("카테고리:"+category);
		console.log("정렬기준:"+sort);
		console.log("입력내용:"+content);
		
			var $form = $("<form>").attr("action", "/admin/qnaList.do").attr("method", "get");
			$("<input>").attr("type", "hidden").attr("name", "category").attr("value", category).appendTo($form);
			$("<input>").attr("type", "hidden").attr("name", "content").attr("value", content).appendTo($form);
			$("<input>").attr("type", "hidden").attr("name", "sort").attr("value", sort).appendTo($form);
			$("<input>").attr("type", "hidden").attr("name", "clicked").attr("value", clicked).appendTo($form);
			$form.appendTo($(document.body));
			
			$form.submit();	
			
	});
});
  </script>
</head>
<body>

<jsp:include page="/resources/util/Manage_Page/sideMenu.jsp" />

<div class="wrap">

<div class="header">
라젠카 관리자 페이지

</div>		<!-- header end -->


<div class="contain">


<div class="content">
         <div class="subtop-content bg_subvisual_02_01">
          <h3 class="subtit">1:1 문의 조회/답변</h3>
          <p class="subtxt"><strong>1:1 문의를 조회하고 답변을 등록 할 수 있습니다.</strong><br /></p>
        </div>
        
<div class="center">
	<table class="table1">
		<tr>
			<th>카테고리</th>
			<th>검색 내용</th>
			<th>정렬</th>
		</tr>
		<tr>
			<td class="left"><select class="sort" id="category">
					<option value="qna_Title">제목</option>
					<option value="mem_Id">회원 계정</option>
			</select></td>
			<td>
				<input size='30' id="search_content"  >
			</td>
			<td class="right">
			<select class="sort" id="sort">
					<option value="qna_completed">답변 여부</option>
					<option value="qna_Date">날짜</option>
			</select>
			</td>
		</tr>
	</table>
</div>
<button class="btnSearch" id="searchQna" type="button">검색</button>
<div class="clear"></div>
<div>
	<table id="table2">
	<thead>
		<tr>
			<th class="left">문의 번호</th>
			<th>회원 계정</th>
			<th>문의 제목</th>
			<th>등록 일자</th>
			<th>답변 여부</th>
			<th class="right">답변 등록</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${list }" begin="0" end="${paging.listCount }" var="i" varStatus="listNumber">
				
			<tr>
				<td id="key_qnaNum_${listNumber.count}" class="left">${i.qnaNum }</td>
				<td>${i.memId }</td>
				<td>${i.qnaTitle }</td>
				<td>${i.qnaDate }</td>
				<td>
				<c:choose>
					<c:when test="${i.qnaCompleted eq 1}">
						답변완료
					</c:when>
					<c:otherwise>
						미답변
					</c:otherwise>
				</c:choose>
				</td>
				<td class="right">
				<button id="btn_listDown" onclick="showDetail('hiddenTr_${listNumber.count}');" style="margin:auto 0;">답변 등록</button><br>
<%-- 				<button id="btn_delete_${listNumber.count}" onclick="delete_clicked(${listNumber.count});" style="margin:auto 0;">삭제</button> --%>
				</td>
			</tr>
			<tr class="hiddenTr" id="hiddenTr_${listNumber.count }">
				<td colspan="6">
				<div>
				<p id="key_qnaNum_${listNumber.count }">문의 번호 : ${i.qnaNum}</p>
				<p>카테고리 : ${i.qnaCate }</p>
				<p>문의 제목 : ${i.qnaTitle }</p>
				<p>문의 내용 : <textArea cols="80" readonly="readonly">${i.qnaContent}</textArea></p>
<%-- 				<p>첨부파일 : <img src="/upload/${i.qnaImg }" width="200px;" height="150px;"></p> --%>
<%-- 				<p>회원 이메일 : ${i.memEmail }</p> --%>
				<p>답변 : <textarea cols="80" id="edit_qna_Answer_${listNumber.count }">${i.qnaAnswer}</textarea></p>
				</div>
				<div class="clear"></div>
			
				<div style="float: right;">
					<button id="btn_update_${listNumber.count }" onclick="update_clicked(${listNumber.count })">수정완료</button>
				</div>
				</td>
			</tr>	
		</c:forEach>
			

	</tbody>
		
	</table>
</div>
	
<%-- 				<jsp:include page="./util/qnaListPaging.jsp" /> --%>
</div>

</div>		<!-- content end -->

</div>		<!-- contain end -->




</body>
</html>