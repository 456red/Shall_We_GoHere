package com.gohere.sell;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class SellUpService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		ReviewDAO reviewDAO = new ReviewDAO();
		
		int num = 0;
		num = Integer.parseInt(request.getParameter("num"));
		
		try {
			reviewDAO.up(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		actionFoward.setCheck(true);
		request.setAttribute("up", 1);
		actionFoward.setPath("../WEB-INF/common/reviewUp.jsp");
		
		
		return actionFoward;
	}

}
