<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	alert('${message}');
	
	if(${member!=null}){
			opener.location.href="${path}";
			window.close();
		
	}else if(${result==1}){
		window.close();
	}else{		
	location.href="${path}";	
	};
	
	
</script>
</head>
<body>
</body>
</html>