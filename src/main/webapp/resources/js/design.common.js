$(document).ready(function () {
	// top_banner
	//$(".top_banner").parent().addClass("reserv_layout_popup");
	if (getCookie( "TOP_BANNER") === "HIDE") {	// 닫은상태
		$(".top_banner").hide();
		$(".top_banner").parent().removeClass("reserv_layout_popup");
	} else {
		//$(".top_banner").show(); // 20170830 - 기본적으로 닫힌채로 시작
		$(".top_banner").hide();
		$(".top_banner").parent().removeClass("reserv_layout_popup");

		$(".top_banner .cont .close > a").click(function(){
			setCookie( "TOP_BANNER" , "HIDE", 0);
			$(".top_banner").hide(500);
			$(".top_banner").parent().removeClass("reserv_layout_popup");
			return false;
		});
	}
	
	// 상단 바로가기
	$(".scrollTop").click(function () {
		$('body, html').animate({
			scrollTop: 0
		}, 100);
		return false;
	});

	$(".navigation a").hover(
		function () {
			$(this).addClass('on');
			$("#header").addClass('on');
		},
		function () {
			$(this).removeClass('on');
		}
	);
	$(".navi-sublist").hover(
		function () {$(this).prev().addClass('on');},
		function () {$(this).prev().removeClass('on');}
	);
	$(".navigation a").mouseover(function () {
		$(".nav-sub-wrap, .navi-sublist").addClass('on');
	});
	$("#header").mouseleave(function () {
		$("#header").removeClass('on');
		$(".nav-sub-wrap, .navi-sublist").removeClass('on');
	});
	$(".navi-sublist li a").hover(function () {$(this).removeClass('on');});

	$('body').on('focus', '.navigation a', function(e) {
		$("#header").addClass('on');
		$(".nav-sub-wrap, .navi-sublist").addClass('on');
	});

	//링크도움말
	$(".link_layer_pos .btnstyle-01").click(function(){
		$(".layerbox").toggle();
		return false;
	});
	
});

//예약 차종선택 NEW (2015-04-09)
function carChoice(num){
	$carList = 	$(".popup_carchoice .btnstyle-wrap li");
	for(i=0;i<$carList.length;i++){
		if(i == num){
			$carList.eq(i).find("a").addClass("active");
			$(".popup_carchoice .tabCont"+i).show();
		}else{
			$carList.eq(i).find("a").removeClass("active");
			$(".popup_carchoice .tabCont"+i).hide();
		}
	}
}