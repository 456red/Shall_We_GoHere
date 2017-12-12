package com.gohere.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class MemberLoginService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = null;
		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = null;
		String method=request.getMethod();
		
	if(method.equals("POST")) {
			String email=request.getParameter("email");
			String password=request.getParameter("password");
				
		try {
			memberDTO=memberDAO.login(email, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String message="로그인 실패";
		if(memberDTO==null) {
			actionFoward = new ActionFoward();
			request.setAttribute("message", message);
			request.setAttribute("path", "../member/memberLogin.member");
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/message/message.jsp");
		}else {
			actionFoward = new ActionFoward();
			message="로그인 성공";
			request.getSession().setAttribute("member", memberDTO);
			request.setAttribute("message", message);
			request.setAttribute("path", "../main.jsp");
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/message/message.jsp");
		}
	}else {
			actionFoward = new ActionFoward();
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/member/memberLogin.jsp");
	}
		
		
		return actionFoward;
	}

}
