<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lazencar | 믿음을 주는 고품격 카셰어링</title>

<link rel="stylesheet" type="text/css" href=".css/main.css" />
<!-- <link rel="stylesheet" type="text/css" href="/Manage_Page/css/paging.css" /> -->
<link rel="stylesheet" href="/Manage_Page/css/daterangepicker.css" />

<script src="./js/jquery.js"></script>


<style>
.demo {
	margin: 30px 0;
}

.date-picker-wrapper .month-wrapper table .day.lalala {
	background-color: orange;
}

.options {
	display: none;
	border-left: 6px solid #8ae;
	padding: 10px;
	font-size: 12px;
	line-height: 1.4;
	background-color: #eee;
	border-radius: 4px;
}

.date-picker-wrapper.date-range-picker19 .day.first-date-selected {
	background-color: red !important;
}

.date-picker-wrapper.date-range-picker19 .day.last-date-selected {
	background-color: orange !important;
}

#table2 th:last-child {
	background: #f1c40f;
	height: 30px;
	background-repeat: no-repeat;
	color: white;
	text-align: center;
	width: 10%;
}

.level1 :nth-child(5) .fly {
	background: #ffb505 !important;
}
</style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
// 	$(function() {
// 		var onSampleResized = function(e) {
// 			var columns = $(e.currentTarget).find("th");
// 			var msg = "columns widths: ";
// 			columns.each(function() {
// 				msg += $(this).width() + "px; ";
// 			})
// 			$("#table2Txt").html(msg);

// 		};
// 	});
	function checkNoticeDataInsert() {
		if ($("#notTitle").val() != "" 
				&& $("#notContent").val() != "" ) {
			//모든 칸이 채워져 있으면 return true
			console.log("체크완료 : 모두채워짐");
			return true;
		} else {
			console.log("체크완료 : 빈칸있음, or 실패")
			return false;
		}
	}
	$(document).ready(function() {
	
		$("#btn_notRegist").click(function() {
			
			console.log($("#notTitle").val());
			console.log($("#notContent").val());
			console.log($("#notFile").val());
			console.log($("#f").val());
			
			if (checkNoticeDataInsert() == false) {
				alert("빈칸을 모두 채워주세요.");
				return;

			} else {
				$("#form").submit();				
			}
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


<div class="container">


<div class="content">
         <div class="subtop-content bg_subvisual_02_01">
          <h3 class="subtit">공지사항 등록</h3>
          <p class="subtxt"><strong>공지사항을 등록합니다</strong><br />
        </div>
        
	<div class="center" >
		<form id="form" action="/admin/noticeRegister.do" method="post"
			 enctype="multipart/form-data">
					<table class="table1">
						<tr>
							<th>공지사항 제목</th>
							<th>파일첨부</th>
						</tr>
						<tr>
							<td class="left">
								<!-- 기간 -->
								<div class="demo">
									<h6 style="margin: 0;">제목을 입력하세요.</h6>
									<input type="text" id="notTitle" name="notTitle" size="30" value="">
								</div>

							</td>
							<td>
								<div>
									<label>첨부 파일(.img 등)</label><br>
										<input type="file" id="notFile" name="notFile" value=""/>
									
								</div>
							</td>
						</tr>

						<tr>
							<th colspan="2">공지사항 내용</th>
						</tr>

						<tr>
							
							<td colspan="2">
							<input type="text" id="notContent" name="notContent" style="width:800px; height:400px;"/>
<!-- 							<textarea rows="20" cols="120" id="textAreaContent"></textarea> -->
							</td>
						</tr>
					</table>
					</form>
				</div>
				<button class="btnSearch" id="btn_notRegist">공지등록</button>
				<div class="clear"></div>
			</div>
			<!-- content end -->
		</div>
		<!-- container end -->
	</div>
	<!-- wrap end -->

</body>
</html>