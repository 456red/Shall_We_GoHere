package com.gohere.email;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class SendMailService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
	    //네이버 안씀
	    String email="";
	    String name="";
	    try {
	    	email=request.getParameter("email");
	    	name=request.getParameter("name");
	    	request.setAttribute("email", email);
	    	request.setAttribute("name", name);
	   
	    }catch (Exception e) {
			// TODO: handle exception
		}
	 
	    
	    
	  //---보내시는 분
        String smtpServer = "smtp.naver.com";
        final String sendId = "";   //---네이버 아이디
        final String sendPass = ""; //---네이버 비밀번호
        String sendEmailAddress = "tjddnd0426@naver.com" ; //---보내는 사람 이메일주소(네이버)   
        int smtpPort=465;
        
        //인증번호 (4자리)
        int number =(int)(Math.random()*10000);
 
        //---받는 분
        String recieveEamilAddress = email;  //---이메일주소
        String subject = "여기갈래?! 인증메일입니다"; //---제목
        String content = "안녕하세요. 여기갈래?!에서 인증메일입니다."
        		+ "인증번호는"+number+"입니다.";  //---내용
        
        request.setAttribute("number", number);
        
        Properties props = System.getProperties();
         
        props.put("mail.smtp.host", smtpServer);
        props.put("mail.smtp.port", smtpPort);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.trust", smtpServer);
          
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(sendId, sendPass);
            }
        });
        session.setDebug(true); //for debug
          
        Message mimeMessage = new MimeMessage(session);
        try {
			mimeMessage.setFrom(new InternetAddress( sendEmailAddress ));
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress( recieveEamilAddress ));
			mimeMessage.setSubject(subject);
			mimeMessage.setText(content);
			Transport.send(mimeMessage);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
        actionFoward.setCheck(true);
        actionFoward.setPath("../WEB-INF/email/sendMail.jsp");
	     
	        
	        return actionFoward;
	        
	    }
	}


