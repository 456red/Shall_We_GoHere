<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<c:if test="${empty ar}">
			<img alt="" src="../images/mapimage/tip_ko.png">
		</c:if>
		<c:catch>
			<c:forEach items="${ar}" var="i">
				<div class="mapsel">
					<input type="hidden" value="${i.ref}" name="ref" class="${num.count}">
					<input type="hidden" value="${i.step}" name="step" class="${num.count}">
					<input type="hidden" value="${i.day}" name="day" class="${num.count}">
					<input type="hidden" value="${i.plan}" name="plan" class="${num.count}">
					${i.plan}<span class="jbdel-btn" id="${num.count}" style="cursor:pointer"><img src="../images/mapimage/del-btn.png"></span>
				</div>
			</c:forEach>
		</c:catch>
</body>
</html>