package com.gohere.email;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;
import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class SendMailService2 implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		 	ActionFoward actionFoward = new ActionFoward();
		 	
		 	String email="";
		    String name="";
		    String checkmsg="";
		    try {
		    	email=request.getParameter("email");
		    	name=request.getParameter("name");
		    	request.setAttribute("email", email);
		    	request.setAttribute("name", name);
		   
		    }catch (Exception e) {
				// TODO: handle exception
			}
		    
		    String mailserver="mw-002.cafe24.com";
		    Properties props=new Properties();
		    props.put("mail.smtp.host",mailserver);
		    props.put("mail.smtp.auth","true");

		    // 메일 인증 계정 및 비번
		    Authenticator myauth=new MyAuthentication(); // 다형성

		    // 메일서버에서 계정 인증 검사
		    Session sess=Session.getInstance(props, myauth);

		    //인증번호
		    int number = (int)(Math.random()*10000);
		    request.setAttribute("number", number);

		    //사용자 입력 요청한 정보 가져오기
		  
		    String to=request.getParameter("email");
		    String from="tjddnd0426@naver.com";
		    String subject="여기갈래 인증번호입니다";
		    String msgText="안녕하세요. 여기갈래?!입니다 인증번호는"+number+"입니다."; //내용
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

		     
		      checkmsg = to+"님에게 인증번호발송";
		      request.setAttribute("checkmsg", checkmsg);

		    }catch(Exception e) {
		      checkmsg = "메일전송 실패";
		      request.setAttribute("checkmsg", checkmsg);
		    }
		    
		actionFoward.setCheck(true);
	    actionFoward.setPath("../WEB-INF/email/sendMail2.jsp");
		     
		        
		       return actionFoward;

	}

}
