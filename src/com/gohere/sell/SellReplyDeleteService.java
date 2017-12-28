package com.gohere.sell;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class SellReplyDeleteService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		ReplyDAO replyDAO = new ReplyDAO();
		
		int num = 0;
		int result = 0;
		
		try {
			num = Integer.parseInt(request.getParameter("num"));
			result = replyDAO.delete(num);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		actionFoward.setCheck(true);
		request.setAttribute("r_delete", result);
		actionFoward.setPath("../WEB-INF/common/replyDelete.jsp");
		
		return actionFoward;
	}

}
