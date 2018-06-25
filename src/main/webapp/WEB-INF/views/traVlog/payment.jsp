<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TraVlog 남의페이지</title>

<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/mypage.css" rel="stylesheet">
<link href="/resources/css/mylist.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js">	</script>
 <script src="https://service.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
 <script>
 
 
 
 var IMP = window.IMP; // 생략가능
 IMP.init('imp37840187');  // 가맹점 식별 코드
 var memberEmail = '${member.mememail}';
 console.log("no?"+memberEmail);
 
 IMP.request_pay({
	    pg : 'inicis',
	    pay_method : 'card',
	    merchant_uid : 'traVlog_' + new Date().getTime(),
	    name : '${adInfo.advno}_${adInfo.advdate}',
	    amount : ${adInfo.advprice},
	    buyer_email : "${member.mememail}",
	    buyer_name : "${member.memnick}",
	    buyer_tel : "${member.memphone}"
	}, function(rsp) {
	    if ( rsp.success ) {
	    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	    	$.ajax({
	    		url: '/traVlog/payment.do', //cross-domain error가 발생하지 않도록 동일한 도메인으로 전송
	    		type: 'POST',
	    		dataType: 'json',
	    		data: {
		    		imp_uid : rsp.imp_uid,
		    		//기타 필요한 데이터가 있으면 추가 전달
		    		"advno":'${adInfo.advno}',
		    		"payid":'${member.memid}',
// 		    		"paystart":startDate,
		    		"paytitle":"${adInfo.advno}_$ {adInfo.advdate}",
		    		"payprice":'${adInfo.advprice}',
		    		"payway":'card'
	    		}
	    	}).done(function(data) {
	    		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
	    		if ( everythings_fine ) {
	    			var msg = '결제가 완료되었습니다.';
	    			msg += '\n고유ID : ' + rsp.imp_uid;
	    			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
	    			msg += '\결제 금액 : ' + rsp.paid_amount;
	    			msg += '카드 승인번호 : ' + rsp.apply_num;
	    			alert(msg);
	    		} else {
	    			//[3] 아직 제대로 결제가 되지 않았습니다.
	    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
	    		}
	    	});
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	        alert(msg);
	        window.history.back();
	    }
	});
 </script>




<style type="text/css">
body {
	
}
</style>

</head>

<body>






	<div id="wrap">

		<jsp:include page="/resources/util/Page/header.jsp" />

		<div id="container">
			<!-- Begin #container -->
			<div class="content-wrap">
	
								
								
								
								
								
								
								
								
						</div>
					</div>
				</div>

				

			</div>
			<!-- // End content-wrap -->
		</div>
		<!-- End container -->

	</div>
	<!-- // End #wrap -->

	
</body>
</html>
