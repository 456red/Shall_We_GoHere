<%@page import="com.gohere.email.MyAuthentication"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#un").popover();
	
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
<title>인증확인</title>
</head>
<body>
<section style="width:400px;height:400px;">
<label>${checkmsg}</label>
<h3>${number}</h3>
<form action="../member/memberJoin.member">
<div class="center-block" style="margin-top: 20px; margin-left: 80px;">
<input type="text" id="un" class="form-control" data-toggle="popover" data-content="발급된 인증번호를 입력해주세요." data-placement="bottom" style="width:200px;"> 
</div>
<div class="center-block" style="width:100px; margin-top: 70px;">
<input type="button" class="btn btn-default btn-sm" value="인증확인" id="btn">
<img src="../images/common/캡처111.JPG" width="250" height="250">
</div>
<input type="hidden" value="${email}" name="email">
<input type="hidden" value="${name}" name="name">
<input type="hidden" value="t" name="check">
</form>
</section>
</body>
</html>