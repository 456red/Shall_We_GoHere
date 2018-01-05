package com.gohere.sell;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class SellExchangeViewService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();

		actionFoward.setCheck(true);
		actionFoward.setPath("../WEB-INF/sell/exchange_box.jsp");

		return actionFoward;
	}

}
