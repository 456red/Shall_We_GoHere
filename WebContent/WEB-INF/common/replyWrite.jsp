<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="rv_name">${r_write.email}(${r_write.name})</div>
<input type="hidden" name="p_num" id="p_num">
<c:if test="${member.name eq r_write.name || member.email eq 'gohere@gohere.gohere'}">
<div>
	<button class="rv_btn" id="rv_d">삭제</button>
</div>
</c:if>
<div class="rv_date">${r_write.rp_date}</div>
<div class="rv_con_board">
	<div class="rv_con">${r_write.contents}</div>
</div>


