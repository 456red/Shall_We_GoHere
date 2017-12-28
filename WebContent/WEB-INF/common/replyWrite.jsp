<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




	<div class="rv_name">${member.email}(${member.name})</div>
	<div>
		<a class="rv_btn" id="rv_d"
			href="../common/replyDelete.sell?num=${view.num}">삭제</a>
		<button class="rv_btn" id="rv_u">수정</button>
	</div>
	<div class="rv_date">${r_write.rp_date}</div>
	<div class="rv_con_board">
		<div class="rv_con">${r_write.contents}</div>
	</div>


