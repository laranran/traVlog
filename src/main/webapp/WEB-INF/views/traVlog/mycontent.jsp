<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<img class="pic" src="/resources/upload/${selectContentPic.filsavefile }.png" alt="photo"> 
	<input type="button" href="#" class="close" value="창닫기" />
				
		<div class="info">
		${selectContent.bodcontent } 입니다
		
		
		</div>