<%@page import="com.gohere.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	$(function() {
		var kind = '${make.kind}';
		$(".kind").each(function() { //반복문
			if ($(this).val() == kind) {
				$(this).attr("selected", "selected");
			}

		});

		$(".num").click(function() { //list 클래스에 속한것들을 클릭했을때 실행
			var cur = $(this).attr("title"); //자기 자신의 title이라는 속성을 가져오는것
			document.frm.curPage.value = cur;
			document.frm.submit();
		});
		
	});
</script>
<link href="../css/sell/boardList.css" rel="stylesheet">
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

	<section class="list_board">
		<article class="list_board_2">
			<table class="list_table">
				<tr>
					<th scope="col">
						<div class="tb_no">NO</div>
					</th>
					<th scope="col">
						<div class="tb_title">TITLE</div>
					</th>
					<th scope="col">
						<div class="tb_name">NAME</div>
					</th>
					<th scope="col">
						<div class="tb_date">DATE</div>
					</th>
					<th scope="col">
						<div class="tb_hit">HIT</div>
					</th>

					<c:if test="${board eq 'review'}">
						<th scope="col">
							<div class="tb_up">UP</div>
						</th>
					</c:if>

				</tr>

				<c:forEach items="${list}" var="i">
					<tr>
						<td>
							<div class="tb_no" id="td_no">${i.num}</div>
						</td>
						<td>
							<div class="tb_title" id="td_title">
								<c:catch>
									<c:forEach begin="1" end="${i.depth}">--</c:forEach>
								</c:catch>
								<a href="./${board}View.sell?num=${i.num}&b_name=${board}">${i.title}</a>
							</div>
						</td>
						<td><div class="tb_name" id="td_name">${i.writer}</div></td>
						<td><div class="tb_date" id="td_date">${i.reg_date}</div></td>
						<td><div class="tb_hit" id="td_hit">${i.hit}</div></td>

						<c:if test="${board eq 'review'}">
							<td><div class="tb_up" id="td_hit">${i.up}</div></td>
						</c:if>
					</tr>
				</c:forEach>
			</table>

			<div>
				<form name="frm" action="./${board}List.sell">
					<input type="hidden" name="curPage"> <select name="kind"
						class="text">
						<option class="kind" value="title">TITLE</option>
						<option class="kind" value="writer">NAME</option>
						<option class="kind" value="contents">CONTENTS</option>
					</select> <input type="text" name="search" value="${make.search}">
					<button id="s_btn">Search</button>

					<c:if test="${not empty member}">
						<div class="w_btn">
							<a href="./${board}Write.sell">WRITE</a>
						</div>
					</c:if>
				</form>
			</div>

			<div class="pageNum">
				<c:if test="${page.curBlock gt 1}">
					<input type="button" class="num" title="${page.startNum-1}"
						value="＜">
				</c:if>
				<c:forEach begin="${page.startNum}" end="${page.lastNum}" var="i">
					<input type="button" class="num" title="${i}" value="${i}">
				</c:forEach>
				<c:if test="${page.curBlock lt page.totalBlock}">
					<input type="button" class="num" title="${page.lastNum+1}"
						value="＞">
				</c:if>
			</div>
		</article>


	</section>
	<!--Main 끝-->

	<!--Footer 시작-->
	<footer></footer>
	<!--Footer 끝-->
</body>
</html>