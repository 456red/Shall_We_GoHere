package com.gohere.sell;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class SellExchangeViewService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		ExchangeDAO exchangeDAO = new ExchangeDAO();
		ExchangeDTO exchangeDTO = null;
		int num = 0;
		
		try {
			num = Integer.parseInt(request.getParameter("num"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			exchangeDTO = exchangeDAO.selectOne(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(exchangeDTO != null) {
			request.setAttribute("board", "notice");
			request.setAttribute("view", exchangeDTO);
			actionFoward.setPath("../WEB-INF/sell/boardView.jsp");
		}
		actionFoward.setCheck(true);
		return actionFoward;
	}

}
