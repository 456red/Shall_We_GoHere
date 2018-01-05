package com.gohere.sell;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.gohere.member.MemberDTO;

public class SellBuyService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		int price = Integer.parseInt(request.getParameter("price"));
		
		
		request.setAttribute("price", price);
		actionFoward.setCheck(true);
		actionFoward.setPath("../WEB-INF/sell/buy.jsp");

		return actionFoward;
	}

}
