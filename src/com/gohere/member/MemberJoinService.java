package com.gohere.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class MemberJoinService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = null;
		String method=request.getMethod();
		
		if(method.equals("POST")) {
			
			
			
			
		}else {
			MemberDAO memberDAO = new MemberDAO();
			
			actionFoward = new ActionFoward();
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/member/memberJoin.jsp");
		}
		
		return actionFoward;
	}

}
