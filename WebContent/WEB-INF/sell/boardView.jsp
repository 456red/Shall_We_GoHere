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

<script type="text/javascript">
$(document).ready(function() {
		$(".r").click(function() {
			$(".r_form").show();
		});

		$("#no").click(function() {
			$(".r_form").hide();
			$("#contents").val('');
		});
		
		$("#yes").click(function() {
			if($("#contents").val() == ''){
				alert("글을 입력해주세요.")
			}else{
				$(".r_form").hide();
				$(".r_view").show();
				var con = $("#contents").val();
				
				$.get("../sell/replyWrite.sell?contents="+con, function(data) {
					$(".rv_board").append(data);
					
				});
			}
		});

		
		$(".up").click(function() {
			$.get("../sell/reviewUp.sell?num=${view.num}", function(data) {
				$("#t_up").html(data);
			});
		});

	});
</script>
<link href="../css/sell/boardView.css" rel="stylesheet">
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

	<section class="view_board">
		<article class="view_board_2">
			<table class="view_table">
				<thead>
					<tr>
						<td id="t_title">${view.title}</td>
					</tr>
					<tr>
						<th class="t_box">NAME</th>
						<td id="t_writer">${view.writer}</td>
						<th class="t_box">DATE</th>
						<td id="t_date">${view.reg_date}</td>
						<th id="t_box_hit">HIT</th>
						<td id="t_hit">${view.hit}</td>
						<c:if test="${board eq 'review'}">
							<th id="t_box_up">♥</th>
							<td id="t_up">${view.up}</td>
						</c:if>
					</tr>
					<tr>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="t_con" colspan="4">${view.contents}</td>
					</tr>
				</tbody>
			</table>

			
			<div class="r_form" style="display: none;">
				<div class="r_title">
					<label for="comment">Reply</label>
				</div>
				<div class="r_con">
					<textarea class="form-control" rows="4" id="contents"></textarea>
				<div>
						<button class="r_btn" id="yes">yes</button>
						<button class="r_btn" id="no">no</button>
					</div>
				</div>
			</div>

			<div class="r_view" style="display: none;">
				<div class="rv_board">
					
					
				</div>
			</div>

			<div class="b_btn">
				<c:if
					test="${member.name eq view.writer || member.email eq 'gohere@gohere.gohere'}">
					<a href="${board}Update.sell?num=${view.num}">Update</a>
					<a href="${board}Delete.sell?num=${view.num}">Delete</a>
				</c:if>

				<c:if test="${board ne 'notice'}">
					<c:if test="${board eq 'qna' and member.name eq view.writer}">
						<button class="r">Reply</button>
					</c:if>
				</c:if>

				<c:if test="${board eq 'review' and not empty member}">
					<button class="r">Reply</button>
					<button class="up">♥</button>
				</c:if>

				<div id="b_list">
					<a href="./${board}List.sell">List</a>
				</div>
			</div>
		</article>
	</section>
	<!--Main 끝-->

	<!--Footer 시작-->
	<footer></footer>
	<!--Footer 끝-->
</body>
</html>