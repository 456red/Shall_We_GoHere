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
		MemberDTO memberDTO = null;
		
		if(method.equals("POST")) {
			memberDTO = new MemberDTO();
			MemberDAO memberDAO = new MemberDAO();
			memberDTO.setEmail(request.getParameter("email"));
			memberDTO.setPassword(request.getParameter("password"));
			memberDTO.setReason(request.getParameter("reason"));
			String [] date=request.getParameter("join_date").split(" ");
			memberDTO.setJoin_date(date[0]);
			
			
			
			int result=0;
			
			
			try {
				result=memberDAO.delete(memberDTO);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				result=memberDAO.deleteReason(memberDTO);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(result>0) {
				request.getSession().invalidate();
				request.setAttribute("member", memberDTO);
				request.setAttribute("message", "탈퇴완료");
				request.setAttribute("path", "../main.jsp");
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
