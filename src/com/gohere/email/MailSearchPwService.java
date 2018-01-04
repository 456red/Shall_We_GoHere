package com.gohere.email;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.gohere.member.MemberDAO;

public class MailSearchPwService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		String method = request.getMethod();
		if(method.equals("POST")) {
			String email=request.getParameter("email");
			String pw="";
			String checkmsg="";
			String checkmsg2="";
			MemberDAO memberDAO = new MemberDAO();
			try {
				pw=memberDAO.searchPw(email);
				
			}catch (Exception e) {
				// TODO: handle exception
			}
			if(pw=="") {
				checkmsg2="123";
				request.setAttribute("checkmsg2", checkmsg2);
			}
			System.out.println(checkmsg2);
			request.setAttribute("pw", pw);
			String mailserver="mw-002.cafe24.com";
			Properties props=new Properties();
			props.put("mail.smtp.host",mailserver);
			props.put("mail.smtp.auth","true");
			
			// 메일 인증 계정 및 비번
			Authenticator myauth=new MyAuthentication(); // 다형성
			
			// 메일서버에서 계정 인증 검사
			Session sess=Session.getInstance(props, myauth);
			
			
			//사용자 입력 요청한 정보 가져오기
			
			String to=email;
			String from="tjddnd0426@naver.com";
			String subject="여기갈래 비밀번호입니다";
			String msgText="안녕하세요. 여기갈래?!입니다 고객님의 비밀번호는 "+pw+"입니다."; //내용
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
				
				
				checkmsg = to+"님에게 비밀번호발송";
				request.setAttribute("checkmsg", checkmsg);
				
				if(pw=="") {
					checkmsg = "가입되지 않은 이메일입니다.";
					request.setAttribute("checkmsg", checkmsg);
				}
				
			}catch(Exception e) {
				checkmsg = "이메일 형식에 맞지 않습니다.";
				request.setAttribute("checkmsg", checkmsg);
			}
			
			
			
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/email/searchMail.jsp");
			
		}
		     
		        
		       return actionFoward;
		
	}

}
