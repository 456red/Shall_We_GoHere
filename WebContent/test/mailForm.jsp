<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의 메일 보내기</title>
</head>
<body>

* 문의 메일 보내기 *<br/><br/>
<form name='mailForm' method='post' action="./mailProc.jsp">
<table border="0" align="center">
<tr>
  <th bgcolor='silver'>받는 사람</th>
  <td><input type="hidden" name="email" size="50" value="456red@naver.
  com"></td>
</tr>
<tr>
  <th bgcolor="silver">보내는 사람</th>
  <td><input type="hidden" name="from" value="tjddnd0426@naver.com" size="50"></td>
</tr>
<tr>
  <th bgcolor='silver'>제 목</th>
  <td><input type="hidden" name="subject" value="여기갈래 인증번호" size="50"></td>
</tr>
<tr>
</tr>
</table> 
<div  align="center">
    <input type="submit" value="보내기">
    <input type="reset" value="취소">
</div>
</form>

</body>
</html>