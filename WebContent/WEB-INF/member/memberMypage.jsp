<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="../css/header.css" rel="stylesheet">
  <link href="../css/mypage.css" rel="stylesheet">
<script type="text/javascript">
$(function(){
	$("#update").click(function(){
		location.href="./memberUpdate.member";
		
	})
	$("#delete").click(function(){
		location.href="./memberDelete.member";
		
	})
})
</script>
</head>
<body>
<%@include file="../temp/header.jsp"%>
<section id="myPage">
	<div><a><h4>가나</h4></a></div>
	<div><a><h4>다라</h4></a></div>
	<div><a><h4>마바</h4></a></div>
</section>
</body>
</html>