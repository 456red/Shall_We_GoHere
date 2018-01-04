package com.gohere.schedule;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class GomapService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		
		actionFoward.setCheck(true);
		actionFoward.setPath("../WEB-INF/schedule/goMap.jsp");
		
		return actionFoward;
	}

}
