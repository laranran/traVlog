/**
 * 
 * HTML Control 구조.
 * 
 	<span id="hpCertFunc1" style="display:none;">
		<a href="#1" onclick="doRequestCertHpNum(document.frm);"><img class="btntype01" src="../images/button/btn_request.gif" alt="인증요청" title="인증요청" /></a>
	</span>
	
	<span id="hpCertFunc2" style="display:none;">
		<input type="text" class="input_txt01 w80 left10" title="휴대폰 인증 번호 사용자 입력" name="userCertNum" id="userCertNum" />
		<input type="hidden" id="certNum" name="certNum" value="" />
		<span class="input_btn01"><a href="#1" onclick="doConfirmCertHpNum(document.frm);"><img src="../images/button/btn_confirm.gif" alt="확인" title="확인" /></a></span>
		<span><a href="#1" onclick="doCancelCertHpNum();"><img src="../images/button/btn_cancel.gif" alt="취소" title="취소"  /></a></span>
	</span>
	
	<span id="hpCertResult">
	</span>
 */
/**
 * 작성일 : 2016.01.07
 * DESC : 2015년 회원 고도화에 따른 개선 코드.
 */
if(typeof window.HpCert=='undefined') window.HpCert = {};

HpCert = (function(){
	this.joinCustCd = "";
	this.isMine = false;
	
	// 필드 아이디 정보
	this.fieldIdHp = "";
	this.fieldIdCertNum = "";
	
	/**
	 * UI 부문
	 */
	this.lblNoticeErrorAreaId = "";
	// 인증번호 입력 영역
	this.divCertHpInputAreaId = "";
	
	this.lblTimerCountArea = "";			// 입력제한시간 영역 접근자
	// 인증번호 다시받기 버튼
	this.retryCertNumId = "";
	// 인증 번호 요청 버튼
	this.btnRequestCertNum = "";
	// 인증 확인 요청.
	this.btnConfirmCertHpNum = "";
	
	// 타이머 및 인증 번호 다시 받기 Wrapper
	this.lblTimerCountWrap = "";
	
	/**
	 * Loading
	 */
	this.loadingArea = "";					// Laoding 접근자.
	
	/**
	 * 내부 변수
	 */
	this._timer = null;
	
	this._requestCertHpNum = "";
	
	this.init = function(){
		var that = this;
		$("#" + this.fieldIdHp).on("change keyup", function(){
			if ( that._requestCertHpNum == "" ){
				return;
			}
			
			var changedVal = $("#" + that.fieldIdHp).val();
			if ( that._requestCertHpNum != changedVal ){
				that.reset();
			}
		});
		
		// 인증번호 다시받기
		$("#" + this.retryCertNumId).on("click", function(){
			that.reset();
			that.doRequestCertHpNum();
		});
		
		$("#" + this.btnRequestCertNum).on("click", function(){
			$("#" + that.fieldIdCertNum).val($("#" + that.fieldIdCertNum).prop("title"));
			$(that.lblTimerCountWrap).show();
			that.doRequestCertHpNum();
		});
		
		$("#" + this.btnConfirmCertHpNum).on("click", function(){
			var hp = $("#" + that.fieldIdHp).val();
			var certNum = $("#" + that.fieldIdCertNum).val();
			that.confirmCertHpNum(hp, certNum, function(){
				// 확인 성공시 액션.
				// frm.hp.readOnly = true;
				// frm.certNum.readOnly = true;
			})
		});
	}
	
	this.reset = function(){
		this._requestCertHpNum = "";
		
		$(this.divCertHpInputAreaId).hide();
		$(this.lblNoticeInfoAreaId).html("");
		$(this.lblNoticeErrorAreaId).html("");
		$(this.lblTimerCountArea).html("");
		
		$(this.lblNoticeInfoAreaId).hide();
		$(this.lblNoticeErrorAreaId).hide();
		
		$("#" + this.btnConfirmCertHpNum).show();
		
		// 휴대폰 및 인증번호 필드 비활성화(readOnly)
		$("#" + this.fieldIdHp).prop('readonly', false);
		$("#" + this.fieldIdCertNum).prop('readonly', false);
		
		$("#" + this.fieldIdCertNum).val($("#" + this.fieldIdCertNum).prop("title"));
		
		// 타이버 리셋
		if ( this._timer ) window.clearInterval(this._timer);
	}
	
	this.doRequestCertHpNum = function(){
		var that = this;

		var v = "" + $("#" + this.fieldIdHp).val();//"" + frm.hp1.value + frm.hp2.value + frm.hp3.value;
		var joinCustCd = 0;
		
		try{
			joinCustCd = $("#h-joinCustCd").val();
			if ( joinCustCd == null || joinCustCd == "" ) joinCustCd = 0;
		}catch(e){
		}
		
		if ( v == "" ){
			
		}
		
		// var certNum = sendCertHpNum(v, joinCustCd);
		// 인증번호 요청.
		$(this.loadingArea).show();
		this._sendCertHpNum(
				v
				, joinCustCd
				, function(){
					$(that.divCertHpInputAreaId).show();
					that._authTimerStart();
					$(that.lblNoticeInfoAreaId).html("인증번호가 발송되었습니다");
					$(that.loadingArea).hide();
		});
		$(window).resize();
	}

	/**
	 * 휴대폰 인증 번호 확인 요청.
	 */
	this.confirmCertHpNum = function(certHp, certNum, successCallback){
		var resultMsg = "";
		var that = this;
		var url = __globalContextPath + "/member/phoneAuth.do";
		
		$(this.loadingArea).show();
		if ( successCallback ) successCallback();
		
		$.ajax({

			type: "POST",
			url: url,
			data: {
				"hp":$.trim(certHp)
				, "searchItem":$.trim(certNum)
			},
			dataType: "json",
			async: false,
			success: function (data) {
//				debugConsole("======" + data.result);
				resultMsg = data.result;
				
				if ( resultMsg == "" ){
					if ( successCallback ) successCallback();
					
					// 타이버 리셋
					if ( that._timer ) window.clearInterval(that._timer);
					
					// 확인 요청 버튼 비활성화.
					$("#" + that.btnConfirmCertHpNum).hide();
					
					// 휴대폰 및 인증번호 필드 비활성화(readOnly)
					$("#" + that.fieldIdHp).prop('readonly', true);
					$("#" + that.fieldIdCertNum).prop('readonly', true);
					
					that.noticeMessasge("휴대폰 번호가 정상적으로 인증되었습니다.");
				}else{
					resultMsg = resultMsg.replace("ERROR:", "")
					that.errorMessage(resultMsg);
				}
				$(window).resize();
				$(that.loadingArea).hide();
			},
			failure: function (data) {
				$(that.loadingArea).hide();
			}
		});
		
		return resultMsg;
	}
	
	this.noticeMessasge = function(msg){
		$(this.lblNoticeErrorAreaId).hide();
		$(this.lblNoticeInfoAreaId).show();
		$(this.lblNoticeInfoAreaId).html(msg);
	}
	
	this.errorMessage = function(msg){
		$(this.lblNoticeInfoAreaId).hide();
		$(this.lblNoticeErrorAreaId).show();
		$(this.lblNoticeErrorAreaId).html(msg);
	}

	/**
	 * 휴대폰 인증 번호 요청.hp, joinCustCd
	 */
	this._sendCertHpNum = function(){
		
		var that = this;
		var certNum = "";
		
		var args = arguments;
		var hp = args[0];
		var joinCustCd = (args.length > 1) ? args[1] : 0;
		var _success = (args.length > 2) ? args[2] : null;
		
		var url = __globalContextPath + "/member/phoneAuth.do";
		
		if ( this.isMine ){
			url = __globalContextPath + "/member/phoneAuthForFind.do";
		}
		
		if ( hp == "" ){
			$(this.loadingArea).hide();
			alert("휴대폰 번호를 입력해주세요.");
			return false;
		}
		
		if ( hp.length < 10 || hp.length > 13 ){
			$(this.loadingArea).hide();
			alert("잘못된 휴대폰번호 입니다.");
			return false;
		}

		$(this.loadingArea).show();
		
		$.ajax({
			type: "POST",
			url: url,
			data: "hp=" + hp + "&searchItem=S",
			dataType: "json",
			async: false,
			success: function (data) {
				if ( data.result == ""){
					that._requestCertHpNum = hp;
					
					that.noticeMessasge();
					if ( _success ) _success();
				}else{
					alert(data.result);
//					$(that.lblNoticeInfoAreaId).html(data.result);
				}
				$(that.loadingArea).hide();
			},
			failure: function (data) {
				$(that.loadingArea).hide();
			}
		});
		
		return certNum;
	}
	
	/**
	 * 입력 제한 시간 시작.
	 */
	this._authTimerStart = function(){
		if ( this._timer != null ) window.clearInterval(this._timer);
		
		var that = this;
		var _min = 179;		// 180초
		
		var min = Math.floor(_min / 60);
		var sec = _min % 60;
		
		this._printCertTimer(min, sec);
		
		this._timer = window.setInterval(function(){
			/*if ( _min <= 0 ){*/
			if ( _min < 0 ){
				window.clearInterval(that._timer);
				return;
			}
			
			var min = Math.floor(_min / 60);
			var sec = _min % 60;
			
			that._printCertTimer(min, sec);
			
			_min--;
		}, 1000);
	}
	
	this._printCertTimer = function(min, sec){
		var txt = "입력시간 : " + min + "분" + sec + "초";
		$(this.lblTimerCountArea).html(txt);
	}
	

});
