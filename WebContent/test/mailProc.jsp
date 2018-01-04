<%@page import="com.gohere.email.MyAuthentication"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="java.util.*"%>    
<%@ page import="java.io.*"%>        
<%@ page import="javax.mail.*"%>    
<%@ page import="javax.mail.internet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의 메일 보내기</title>
</head>
<body>
<%
// 메일서버
String mailserver="mw-002.cafe24.com";
Properties props=new Properties();
props.put("mail.smtp.host",mailserver);
props.put("mail.smtp.auth","true");

// 메일 인증 계정 및 비번
Authenticator myauth=new MyAuthentication(); // 다형성

// 메일서버에서 계정 인증 검사
Session sess=Session.getInstance(props, myauth);
int number = (int)(Math.random()*10000);
//사용자 입력 요청한 정보 가져오기
request.setCharacterEncoding("UTF-8");
String to=request.getParameter("email").trim();
String from="tjddnd0426@naver.com";
String subject=request.getParameter("subject").trim();
String msgText="안녕하세요. 여기갈래입니다 인증번호는"+number+"입니다."; //내용
msgText=msgText.replace("\n", "<br/>");


//메일 보내기
try {
  Message msg=new MimeMessage(sess);
  msg.setFrom(new InternetAddress(from)); //보낸사람

  //받는사람(한명)
  InternetAddress[] address={new InternetAddress(to)};

  //여러명 수신인
  /*InternetAddress[] address={new InternetAddress(to),
                               new InternetAddress(to2),
                               new InternetAddress(to3)
                              }; */
     
  msg.setRecipients(Message.RecipientType.TO, address); //받는사람                             

  msg.setSubject(subject); //메일 제목

  msg.setContent(msgText, "text/html;charset=UTF-8"); //메일 내용

  msg.setSentDate(new Date()); //보낸날짜

  Transport.send(msg); //전송

  out.print(to+"님에게 메일발송");

}catch(Exception e) {
  out.print("메일전송 실패!!");
}
%>

</body>
</html>