<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
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
</script>
<style type="text/css">
footer{
	width: 100%;
	height: 150px;
	background-color: lime;
}
</style>

<link href="../css/exchange_buy.css" rel="stylesheet">
<link href="../css/sell_kate.css" rel="stylesheet">
</head>
<body>
	<!--Header 시작-->
	<%@include file="../temp/header.jsp"%>
	<!--Header 끝-->

	<!--Main 시작-->
	<section class="main">
		<article class="wrap">
			<img alt="" src="../images/sell/point_1.PNG">
		</article>
	</section>

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
				<table border="1" class="info_view">
					<tr>
						<th scope="row">성명</th>
						<td><input type="text"></td>
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
						</select> - <input type="text" class="phone"> - <input type="text"
							class="phone"></td>
					</tr>
					<tr>
						<th scope="row">Email</th>
						<td><input type="text" class="e_addr"> @ <input
							type="text" class="e_addr"> <select>
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
			</div>

			<ul class="info_title_b">
				<li>배송지 정보</li>
			</ul>
			<div class="table_b">
				<table border="1" class="info_view">
					<tr>
						<th scope="row">입력 방식</th>
						<td>주문자 정보와 동일 <input type="checkbox" checked="checked">
						새로운 배송지 입력 <input type="checkbox"></td>
					</tr>
					<tr>
						<th scope="row">성명</th>
						<td><input type="text"></td>
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
						</select> - <input type="text" class="phone"> - <input type="text"
							class="phone"></td>
					</tr>
					<tr>
						<th scope="row">Email</th>
						<td><input type="text" class="e_addr"> @ <input
							type="text" class="e_addr"> <select>
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
			</div>
			
			<ul class="info_title_b">
				<li>결제 정보</li>
			</ul>
			<div class="table_b">
				<table border="1" class="info_view">
					<tr>
						<th scope="row">소유 POINT</th>
						<td class="p">40000P</td>
					</tr>
					<tr>
						<th scope="row">결제 POINT</th>
						<td class="p">30000P</td>
					</tr>
					<tr>
						<th scope="row">남은 POINT</th>
						<td class="p">10000P</td>
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