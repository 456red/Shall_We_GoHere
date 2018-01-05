<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	$(function(){
		$(".ship").click(function(){
			var check = $("#op").prop("checked");
			if(check){
				$("#name2").val($("#name").val());
				$("#sample6_postcode2").val($("#sample6_postcode").val());
				$("#sample6_address3").val($("#sample6_address").val());
				$("#sample6_address4").val($("#sample6_address2").val());
				$("#phone3").val($("#phone1").val());
				$("#phone4").val($("#phone2").val());
				$("#email3").val($("#email1").val());
				$("#email4").val($("#email2").val());
			}else{
				document.getElementById("form_2").reset();
			}
		});
		$("#sel1").change(function(){
			$("#email2").val(this.value);
		});
		
	});
	
		function sample6_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullAddr = ''; // 최종 주소 변수
					var extraAddr = ''; // 조합형 주소 변수
	
					// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						fullAddr = data.roadAddress;
	
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						fullAddr = data.jibunAddress;
					}
	
					// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
					if (data.userSelectedType === 'R') {
						//법정동명이 있을 경우 추가한다.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// 건물명이 있을 경우 추가한다.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						}
						// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
					}
	
					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
					document.getElementById('sample6_address').value = fullAddr;
			
	
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById('sample6_address2').focus();
				}
			}).open();
		}
		
		function sample6_execDaumPostcode1() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullAddr = ''; // 최종 주소 변수
					var extraAddr = ''; // 조합형 주소 변수
	
					// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						fullAddr = data.roadAddress;
	
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						fullAddr = data.jibunAddress;
					}
	
					// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
					if (data.userSelectedType === 'R') {
						//법정동명이 있을 경우 추가한다.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// 건물명이 있을 경우 추가한다.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						}
						// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
					}
	
					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample6_postcode2').value = data.zonecode; //5자리 새우편번호 사용
					document.getElementById('sample6_address3').value = fullAddr;
	
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById('sample6_address4').focus();
				}
			}).open();
		}
</script>
<style type="text/css">
footer{
	width: 100%;
	height: 150px;
	background-color: lime;
}
</style>

<link href="../css/sell/buy.css" rel="stylesheet">
<link href="../css/sell/sell_kate.css" rel="stylesheet">
<link href="../css/header.css" rel="stylesheet">
</head>
<body>
	<!--Header 시작-->
	<%@include file="../temp/header.jsp"%>
	<!--Header 끝-->

	<!--Main 시작-->


	<%@include file="../temp/sell_kate.jsp"%>

	<div class="title_board">
		<ul class="title">
			<li>POINT 구매</li>
		</ul>
	</div>

	<section class="info_board">
		<div class="info_board_2">
			<ul class="info_title_b">
				<li>주문자 정보</li>
			</ul>
			<div class="table_b">
			<form action="">
				<table border="1" class="info_view">
					<tr>
						<th scope="row">성명</th>
						<td><input type="text" id="name"></td>
					</tr>
					<tr>
						<th scope="row">주소</th>
						<td><input type="text" id="sample6_postcode"
							placeholder="우편번호"> <input type="button"
							onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" id="sample6_address" placeholder="주소"
							class="addr"><br> <input type="text"
							id="sample6_address2" placeholder="상세주소" class="addr"></td>
					</tr>
					<tr>
						<th scope="row">전화 번호</th>
						<td><select>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
						</select> - <input type="text" id="phone1" class="phone"> - <input type="text" id="phone2"
							class="phone"></td>
					</tr>
					<tr>
						<th scope="row">Email</th>
						<td><input type="text" id="email1" class="e_addr"> @ <input
							type="text" id="email2" class="e_addr"> <select id="sel1">
								<option value="직접입력">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="nate.com">nate.com</option>
								<option value="yahoo.com">yahoo.com</option>
								<option value="korea.com">korea.com</option>
								<option value="gamil.com">gmail.com</option>

						</select></td>
					</tr>
				</table>
				</form>
			</div>

			<ul class="info_title_b">
				<li>배송지 정보</li>
			</ul>
			<div class="table_b">
			<form id="form_2" action="">
				<table border="1" class="info_view">
					<tr>
						<th scope="row">입력 방식</th>
						<td>주문자 정보와 동일 <input type="radio" name="ship" class="ship" id="op">
						새로운 배송지 입력 <input type="radio" name="ship" class="ship" checked="checked"></td>
					</tr>
					<tr>
						<th scope="row">성명</th>
						<td><input type="text" id="name2"></td>
					</tr>
					<tr>
						<th scope="row">주소</th>
						<td><input type="text" id="sample6_postcode2"
							placeholder="우편번호"> <input type="button"
							onclick="sample6_execDaumPostcode1()" value="우편번호 찾기"><br>
							<input type="text" id="sample6_address3" placeholder="주소"
							class="addr"><br> <input type="text"
							id="sample6_address4" placeholder="상세주소" class="addr"></td>
					</tr>
					<tr>
						<th scope="row">전화 번호</th>
						<td><select>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
						</select> - <input type="text" id="phone3" class="phone"> - <input type="text" id="phone4"
							class="phone"></td>
					</tr>
					<tr>
						<th scope="row">Email</th>
						<td><input type="text" id="email3" class="e_addr"> @ <input
							type="text" id="email4" class="e_addr"> <select id="sel2">
								<option value="직접입력">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="nate.com">nate.com</option>
								<option value="yahoo.com">yahoo.com</option>
								<option value="korea.com">korea.com</option>
								<option value="gamil.com">gmail.com</option>

						</select></td>
					</tr>
				</table>
				</form>
			</div>
			
			<ul class="info_title_b">
				<li>결제 정보</li>
			</ul>
			<div class="table_b">
				<table border="1" class="info_view">
					<tr>
						<th scope="row">소유 POINT</th>
						<td class="p">${member.point}</td>
					</tr>
					<tr>
						<th scope="row">결제 POINT</th>
						<td class="p">${price}</td>
					</tr>
					<tr>
						<th scope="row">남은 POINT</th>
						<td class="p">${member.point-price}</td>
					</tr>
			
				</table>
			</div>
		</div>
	</section>


<!--Main 끝-->

	<!--Footer 끝-->
	<footer></footer>
	<!--Footer 시작-->












</body>
</html>