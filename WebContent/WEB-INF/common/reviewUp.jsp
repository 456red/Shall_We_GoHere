<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	<c:if test="${check}">
		alert("UP은 게시글 당 하루에 1번씩만 가능합니다.");
	</c:if>	
</script>
<body>
	${up}
</body>
