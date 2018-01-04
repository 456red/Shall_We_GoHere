package com.gohere.member;



import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class MemberUpdateService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = null;
		String method=request.getMethod();
		
		if(method.equals("POST")) {
			actionFoward = new ActionFoward();
			MemberDTO memberDTO = new MemberDTO();
			MemberDAO memberDAO = new MemberDAO();
			memberDTO.setEmail(request.getParameter("email"));
			memberDTO.setName(request.getParameter("name"));
			memberDTO.setPhone(request.getParameter("phone"));
			memberDTO.setPassword(request.getParameter("password"));
			memberDTO.setPoint(Integer.parseInt(request.getParameter("point")));
			memberDTO.setJoin_date(request.getParameter("join_date"));
			
			int result = 0;
			try {
				result=memberDAO.update(memberDTO);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String message="수정실패";
			if(result>0) {
				message="수정성공";
			}
			request.getSession().setAttribute("member", memberDTO);
			request.setAttribute("message", message);
			request.setAttribute("path", "./memberMypage.member");
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/message/message.jsp");
			
			
		}else {
			actionFoward=new ActionFoward();
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/member/memberUpdate.jsp");
		}
		
		
		return actionFoward;
	}

}
