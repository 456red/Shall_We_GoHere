package com.gohere.sell;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class SellInquiryViewService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		InquiryDAO inquiryDAO = new InquiryDAO();
		BoardDTO boardDTO = null;
		int hit = 0;
		int num = 0;
		
		try {
			num = Integer.parseInt(request.getParameter("num"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			hit = inquiryDAO.hit(num);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		InquiryDTO inquiryDTO = new InquiryDTO();
		inquiryDTO.setHit(hit);
		
		try {
			boardDTO = inquiryDAO.selectOne(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(boardDTO != null) {
			request.setAttribute("board", "inquiry");
			request.setAttribute("view", boardDTO);
			actionFoward.setPath("../WEB-INF/sell/boardView.jsp");
		}
		actionFoward.setCheck(true);
		return actionFoward;
	}

}
