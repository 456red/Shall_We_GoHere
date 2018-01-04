<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".jbdel-btn").click(function(){	
			var id = $(this).attr("id");
			var arr = new Array();
			$("."+id).each(function(){
				arr.push($(this).val());
			});
			$.post("./plan.schedule",{ref:arr[0], step:arr[1], day:arr[2], name:arr[3]}, function(data){
				$("#day_plan").html(data);
			});
		});
	});
</script>
</head>
<body>
	<div>
		<p></p>
		<c:if test="${empty ar}">
			<img alt="" src="../images/mapimage/tip_ko.png">
		</c:if>
		<c:catch>
			<div id="day_plan">
			<c:forEach items="${ar}" var="i" varStatus="num">
				<div class="mapsel">
					<input type="hidden" value="${i.ref}" name="ref" class="${num.count}">
					<input type="hidden" value="${i.step}" name="step" class="${num.count}">
					<input type="hidden" value="${i.day}" name="day" class="${num.count}">
					<input type="hidden" value="${i.plan}" name="plan" class="${num.count}">
					${i.plan}<span class="jbdel-btn" id="${num.count}" style="cursor:pointer"><img src="../images/mapimage/del-btn.png"></span>
				</div>
			</c:forEach>
			</div>
		</c:catch>
	</div>

</body>
</html>