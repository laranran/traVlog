<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- iamport 1.1.5 라이브러리 추가 -->
<script src="https://service.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

<!-- jQuery 2.2.4 라이브러리 추가 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">

$(document).ready(function() {
	// iamport 변수 초기화
	var IMP = window.IMP;
	IMP.init('imp25024823');	// 가맹점 식별코드

	// 결제 모듈 불러오기
	$("#pay").click(function() {
		requestPayment();
	});
});
// DB tb_payment ( pay_num, pay_amount, pay_name, pay_email, pay_phone) 다섯개를 기능 안에 넣어야 한다.

// 결제 요청 - 결제 모듈 불러오기
function requestPayment() {
	var title = $("#pay_num").val() 	//주문명을 결제번호로 생성
	var amount = $("#amount").val();	//금액
	var buyer_email = $("#email").val();//사용자 이메일
	var buyer_name = $("#name").val();	//사용자 이름
	var buyer_tel = $("#phone").val();	//사용자 폰번호
	
	IMP.request_pay({
	    pg : 'html5_inicis', //PG사 - 'kakao':카카오페이, 'html5_inicis':이니시스(웹표준결제), 'nice':나이스페이, 'jtnet':제이티넷, 'uplus':LG유플러스, 'danal':다날, 'payco':페이코, 'syrup':시럽페이, 'paypal':페이팔
	    pay_method : 'vbank', //결제방식 - 'samsung':삼성페이, 'card':신용카드, 'trans':실시간계좌이체, 'vbank':가상계좌, 'phone':휴대폰소액결제
	    merchant_uid : 'merchant_' + new Date().getTime(), //고유주문번호 - random, unique
	    
	    name : title, //주문명 - 선택항목, 결제정보 확인을 위한 입력, 16자 이내로 작성
	    amount : amount, //결제금액 - 필수항목
	    buyer_email : buyer_email, //주문자Email - 선택항목
	    buyer_name : buyer_name, //주문자명 - 선택항목
	    buyer_tel : buyer_tel, //주문자연락처 - 필수항목, 누락되면 PG사전송 시 오류 발생
	}, function(rsp) { // callback - 결제 이후 호출됨, 이곳에서 DB에 저장하는 로직을 작성한다
	    if ( rsp.success ) { // 결제 성공 로직
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	        
	        // 결제 완료 처리 로직
			//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
			$.ajax({
				url: "/payments/complete", //cross-domain error가 발생하지 않도록 동일한 도메인으로 전송
				type: 'POST',
				dataType: 'json',
				data: {
					imp_uid : rsp.imp_uid
					//기타 필요한 데이터가 있으면 추가 전달
					//결제 완료되면 결제상태 변경
					
					}
			}).done(function(data) {
				//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
				if ( everythings_fine ) {
					
					//******************ajax를 사용해 결제 상태를 결제 대기 or 결제 성공으로 바꾼다.
					
					
					
					var msg = '결제가 완료되었습니다.';
					msg += '\n고유ID : ' + rsp.imp_uid;
					msg += '\n상점 거래ID : ' + rsp.merchant_uid;
					msg += '\결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					
					alert(msg);
	    		} else {
	    			//****************여기에 ajax를 하던 뭘 하던 실패했을경우 결제테이블 결제상태를 결제취소로 바꾼다.
	    			
	    			
	    			
	    			//[3] 아직 제대로 결제가 되지 않았습니다.
	    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
	    		}
	    	});
	        
	    } else { // 결제 실패 로직
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
}

</script>

</head>
<body>

<button id="pay">결제</button>

</body>
</html>