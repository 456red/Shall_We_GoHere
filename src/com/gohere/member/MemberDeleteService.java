package com.gohere.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class MemberDeleteService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = null;
		String method=request.getMethod();
		
		if(method.equals("POST")) {
			MemberDAO memberDAO = new MemberDAO();
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			System.out.println(email);
			System.out.println(password);
			int result=0;
			
			try {
				result=memberDAO.delete(email, password);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(result>0) {
				request.setAttribute("message", "탈퇴완료");
				request.setAttribute("path", "../main.jsp");
				request.getSession().invalidate();
			}else{
				request.setAttribute("message", "탈퇴실패");
				request.setAttribute("path", "./memberMypage.member");
			}
			actionFoward = new ActionFoward();
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/message/message.jsp");
			
		}else {
			actionFoward = new ActionFoward();
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/member/memberDelete.jsp");
		}
		return actionFoward;
	}

}
