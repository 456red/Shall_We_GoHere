<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	alert('${message}');
	location="${path}";
	if(${member!=null}){
		opener.location.reload();
		window.close();
	}if(${result==1}){
		window.close();
	}
	
</script>
</head>
<body>
</body>
</html>