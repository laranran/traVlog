<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/mainContainer.css" rel="stylesheet">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-x.y.z.js"></script>
<script type="text/javascript">


/* IMP.request_pay({
    pg : 'html5_inicis',
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '주문명:결제테스트',
    amount : 14000,
    buyer_email : 'iamport@siot.do',
    buyer_name : '구매자이름',
    buyer_tel : '010-1234-5678',
    buyer_addr : '서울특별시 강남구 삼성동',
    buyer_postcode : '123-456'
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
    }

    alert(msg);
}); */

</script>





<title>Insert title here</title>

<style type="text/css">
body {
	background-image: url('/resources/images/BackGround/main.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

</head>

<body>
<h1>몰겠다</h1>
	<div id="wrap">

	<jsp:include page="/resources/util/Page/header.jsp" />


	
	
	
	


</div>

	






	<div class="right"></div>





</body>
</html>








