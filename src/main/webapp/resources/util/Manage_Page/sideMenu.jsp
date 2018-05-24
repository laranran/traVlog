<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/resources/css/M_SideMenu.css" rel="stylesheet">
</head>
<body>
<%--
<%  
   String now_id = null;
   if (session.getAttribute("id") != null) {

      now_id = (String) session.getAttribute("id");
   }

   // 예외처리 현재 아이디값 안들어와있을때

   if (now_id == null) {

      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('로그인부터 해주세요!')");
      script.println("location.href = '/login/login.do'");
      script.println("</script>");
   }else if(!(now_id.equals("manager1"))){
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('관리자만 이용할 수 있습니다.')");
      script.println("location.href = '/login/login.do'");
      script.println("</script>");
   }
%>
 --%>
<div id="menu">
   <ul class="level1">
      <li><a class="fly" href="/Manage_Page/home.do">Home</a></li>
      <li><a class="fly" href="/Manage_Page/#.do">신고 관리</a></li>
      
      <li><a class="fly" href="/Manage_Page/#.do">공지 관리</a></li>
      
      <li><a class="fly" href="/Manage_Page/#.do">문의 관리</a></li>
      
      <li><a class="fly" href="/Manage_Page/#.do">광고 관리</a></li>
      
      <li><a class="fly" href="/Manage_Page/#.do">결제 관리</a></li>
		
	</ul>
</div>		<!-- sideMenu end -->
</body>
</html>