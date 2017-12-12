package com.gohere.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class MemberLogoutService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		request.getSession().invalidate();
		actionFoward.setCheck(false);
		actionFoward.setPath("../main.jsp");
		
		return actionFoward;
		
	}

}
