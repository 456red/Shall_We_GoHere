package com.gohere.sell;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class SellReviewDeleteService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		ReviewDAO reviewDAO = new ReviewDAO();

		int num = 0;
		int result = 0;

		try {
			num = Integer.parseInt(request.getParameter("num"));
			result = reviewDAO.delete(num);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}

		if(result>0) {
			request.setAttribute("message", "삭제 되었습니다.");
			request.setAttribute("path", "./reviewList.sell");
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/common/result.jsp");

		}else {
			request.setAttribute("message", "Fail");
			request.setAttribute("path", "./reviewList.sell");
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/common/result.jsp");
		}

		return actionFoward;
	}

}
