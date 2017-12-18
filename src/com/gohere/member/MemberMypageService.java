package com.gohere.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class MemberMypageService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward =new ActionFoward();
		String id=request.getParameter("email");
		MemberDTO memberDTO = null;
		MemberDAO memberDAO = new MemberDAO();
		
		try {
			memberDTO=memberDAO.info(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("member", memberDTO);
		actionFoward.setCheck(true);
		actionFoward.setPath("../WEB-INF/member/memberMypage.jsp");
		
		return actionFoward;
	}

}
