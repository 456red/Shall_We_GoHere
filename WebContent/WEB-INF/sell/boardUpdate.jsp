<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript" src="../SE2/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script type="text/javascript">
   $(function(){
      //전역변수선언
    var editor_object = [];
     
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        //textarea ID
        elPlaceHolder: "contents",
        sSkinURI: "../SE2/SmartEditor2Skin.html", 
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
    $("#savebutton").click(function(){
        //id가 contents인 textarea에 에디터에서 대입
        editor_object.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // 이부분에 에디터 validation 검증
         
        //폼 submit
        $("#frm").submit();
   	 });
   });
</script>
<link href="../css/sell/boardUpdate.css" rel="stylesheet">
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
			<li>${board}</li>
		</ul>
	</div>

	<section class="up_board">
		<article class="up_board_2">
			<form action="./${board}Update.sell" method="post">
				<input type="hidden" value="${view.num}" name="num">
				<table class="up_table">
					<thead>
					<tr>
						<th class="t_box" id="name">NAME</th>
						<td><input type="text"  readonly="readonly" class="form-control"
							value="${member.name}" id="Writer" name="writer"></td>
					</tr>
					<tr>
						<th class="t_box" id="tit">TITLE</th>
						<td><input type="text" value="${view.title}" class="form-control"
							id="Title" placeholder="Enter Title" name="title">
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="t_box" id="con">CONTENT</th>
						<td id="t_con" colspan="4"><textarea cols="163" name="contents" id="contents">${view.contents}</textarea></td>
					</tr>
				</tbody>
				</table>
		
				<div>
					<button class="up_btn" id="savebutton">Update</button>
				</div>

			</form>
		</article>
	</section>

	<!--Main 끝-->

	<!--Footer 시작-->
	<footer></footer>
	<!--Footer 끝-->
</body>
</html>