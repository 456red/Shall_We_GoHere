<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../SE2/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
<script type="text/javascript">
	$(function() {

		//전역변수선언
		var editor_object = [];

		nhn.husky.EZCreator.createInIFrame({
			oAppRef : editor_object,
			//textarea ID
			elPlaceHolder : "contents",
			sSkinURI : "../SE2/SmartEditor2Skin.html",
			htParams : {
				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseToolbar : true,
				// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true,
				// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true,
			}
		});

		//전송버튼 클릭이벤트
		$("#savebutton").click(function() {
			//id가 contents인 textarea에 에디터에서 대입
			editor_object.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);

			// 이부분에 에디터 validation 검증

			//폼 submit
			$("#frm").submit();
		});
	});
</script>
<link href="../css/sell/boardWrite.css" rel="stylesheet">
<link href="../css/sell/sell_kate.css" rel="stylesheet">
<link href="../css/header.css" rel="stylesheet">
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
			<li>＜${board} Write＞</li>
		</ul>
	</div>

	<section class="write_board">
		<article class="write_board_2">
			<form id="frm" action="./${board}Write.sell" method="post"
				enctype="multipart/form-data">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Writer">Writer</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" readonly="readonly"
							value="${member.name}" id="Writer" name="writer">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="Title">Title</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="Title"
							placeholder="Enter Title" name="title">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="Contents">Contents</label>
					<div class="col-sm-10">
						<textarea rows="" cols="" name="contents" id="contents"></textarea>
					</div>
				</div>
				<p>
					<input type="button" value="Write" id="savebutton">
				</p>
			</form>
		</article>
	</section>
	<!--Main 끝-->

	<!--Footer 시작-->
	<footer></footer>
	<!--Footer 끝-->
</body>
</html>








