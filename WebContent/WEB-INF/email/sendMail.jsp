<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		
		if(${number}==$("#un").val()){
			alert("성공");
			$("form").submit();
			
			
			
		}else{
			alert("실패");
		}
		
		
	});
	
})
</script>
<title>Insert title here</title>
</head>
<body>
<h1>${number}</h1>

<form action="../member/memberJoin.member">
<input type="text" id="un">
<input type="button" class="btn btn-default btn-sm" value="인증확인" id="btn">
<input type="hidden" value="${email}" name="email">
<input type="hidden" value="${name}" name="name">
<input type="hidden" value="t" name="check">
</form>

</body>
</html>