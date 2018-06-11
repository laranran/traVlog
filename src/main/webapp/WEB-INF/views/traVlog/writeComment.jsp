<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<style>
.buttons{
	display: inline;
	float:right;
}
</style>
<script type="text/javascript">
//대댓글 작성

	function writeComments(comno) {
		console.log(comno);
		if ($("#cosPart_" + comno).css("display") == "none") {
			$("#cosPart_" + comno).css("display", "block");
		} else {
			$("#cosPart_" + comno).css("display", "none");
		}
	}

	//댓글 수정input 보이기
	function showUpdateTag(comno) {
		if ($("#commentUpdateDiv_" + comno).css("display") == "none") {
			$("#commentUpdateDiv_" + comno).css("display", "block");
		} else {
			$("#commentUpdateDiv_" + comno).css("display", "none");
		}
	}
</script>
<c:forEach items="${commentList}" var="comment">
	<label><strong>${comment.comwriter }</strong></label>
	<span style="word-break: break-all;">${comment.comcontent }</span>
	
	<div class="buttons">
	<c:if test="${comment.comwriter == sessionScope.memnick }">
		<button onclick="showUpdateTag('${comment.comno}')">수정</button>
		<button onclick="comDelete('${comment.comno }','${board.bodno }')">삭제</button>
	</c:if>
	<label><a id="writeComments_${comment.comno }" href="javacript:void(0)" onclick="writeComments('${comment.comno}')">답글달기</a></label>
	</div>
	<!-- 수정파트(토글) -->
	<div id="commentUpdateDiv_${comment.comno }"style="display:none;">
	<br>
	<label id="showUpdateId_${comment.comno }" ><strong>${comment.comwriter }</strong></label>
	<input style="width:78%;" type="text" id="showUpdateTag_${comment.comno }" value="${comment.comcontent }"></input>
	<button onclick="comUpdate('${comment.comno}')">수정완료</button>
	</div>
	<!-- 수정파트(토글) -->
	<br>
	<!-- 
		1. 대댓글 작성 태그를 보여주기/안보여주기 작성
		1-1. 대댓글 리스트 보여주기/안보여주기
		2. 대댓글 삽입 
		3. 대댓글 삭제/수정 버튼
	 -->
	<div style="clear: both;"></div>
	<div id="cosPart_${comment.comno }" style="padding-left:30px; display:none;">
	 <input type="text" id="comment_${comment.comno}" name="comment" 
             placeholder="답글을 입력하세요 ..." style="width:58%" required="required"></input>
     <input type="button" id="commentBtn" value="답글입력" style="width:13%;" onclick="javacript:writeComments('${board.bodno}')"></input>
	</div><br>
<%-- 	<c:foreach items=${commentsList } var="comments"></c:foreach> --%>
</c:forEach>