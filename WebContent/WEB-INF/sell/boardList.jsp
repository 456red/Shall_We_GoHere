<%@page import="com.gohere.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		var kind = '${make.kind}';
		$(".kind").each(function() { //반복문
			if ($(this).val() == kind) {
				$(this).attr("selected", true);
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
	<section class="main">
		<article class="wrap">
			<img alt="" src="../images/sell/point_1.PNG">
		</article>
	</section>

	<%@include file="../temp/sell_kate.jsp"%>

	<div class="title_board">
		<ul class="title">
			<li>＜${board} List＞</li>
		</ul>
	</div>

	<section class="list_board">
		<article class="list_board_2">
			<table id="t" class="table table-hover">
				<tr>
					<th>NUM</th>
					<th>TITLE</th>
					<th>WRITER</th>
					<th>DATE</th>
					<th>HIT</th>
				</tr>

				<c:forEach items="${list}" var="i">
					<tr>
						<td>${i.num}</td>
						<td><c:catch>
								<c:forEach begin="1" end="${i.depth}">--</c:forEach>
							</c:catch> <a href="./${board}View.sell?num=${i.num}">${i.title}</a></td>
						<td>${i.writer}</td>
						<td>${i.reg_date}</td>
						<td>${i.hit}</td>
					</tr>
				</c:forEach>
			</table>

			<div class="pageNum">
				<c:if test="${page.curBlock gt 1}">
					<input type="button" class="num" title="${page.startNum-1}"
						value="[이전]">
				</c:if>
				<c:forEach begin="${page.startNum}" end="${page.lastNum}" var="i">
					<input type="button" class="num" title="${i}" value="${i}">
				</c:forEach>
				<c:if test="${page.curBlock lt page.totalBlock}">
					<input type="button" class="num" title="${page.lastNum+1}"
						value="[다음]">
				</c:if>
			</div>
		</article>
		<div>
			<form name="frm" action="./${board}List.sell">
				<input type="hidden" name="curPage"> <select name="kind">
					<option class="kind" value="title">TITLE</option>
					<option class="kind" value="writer">WRITER</option>
					<option class="kind" value="contents">CONTENTS</option>
				</select> <input type="text" name="search" value="${make.search}">
				<button class="btn btn-success">Search</button>
			</form>
		</div>

		<c:if test="${not empty member}">
			<div class="write">
				<a href="./${board}Write.sell">WRITE</a>
			</div>
		</c:if>

	</section>
	<!--Main 끝-->

	<!--Footer 시작-->
	<footer></footer>
	<!--Footer 끝-->
</body>
</html>