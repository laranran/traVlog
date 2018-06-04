<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- BoardList 시작 -->
		<div>
			<c:forEach items="${boardList }" var="board" varStatus="listNumber" begin="0" end="${count }">
			<div class="board">
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
				<img class="like" width="30px;" src="/resources/images/icon/like.png">
				<img class="comm" width="30px;" src="/resources/images/icon/calender.png">
				<img class="pin" width="30px;" src="/resources/images/icon/pin.png">
				</div>
				<div class="content">
				${board.bodcontent }
				</div>
			</div>
			</c:forEach>
		</div>
			<!-- boardList 끝 -->
			