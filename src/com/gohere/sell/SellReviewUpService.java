package com.gohere.sell;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.gohere.member.MemberDTO;

public class SellReviewUpService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		ReviewDAO reviewDAO = new ReviewDAO();
		
		int num = 0;
		num = Integer.parseInt(request.getParameter("num"));
		MemberDTO memberDTO = (MemberDTO)request.getSession().getAttribute("member");
		int result =0;
		boolean check = true;
		try {
			check = reviewDAO.select(num, memberDTO.getEmail());
			result = reviewDAO.upsel(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		actionFoward.setCheck(true);
		request.setAttribute("check", check);
		request.setAttribute("up", result);
		actionFoward.setPath("../WEB-INF/common/reviewUp.jsp");
		
		return actionFoward;
	}

}
