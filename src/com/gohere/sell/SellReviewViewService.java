package com.gohere.sell;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.gohere.member.MemberDTO;

public class SellReviewViewService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		ReviewDAO reviewDAO = new ReviewDAO();
		BoardDTO boardDTO = null;
		ReplyDAO replyDAO = new ReplyDAO();
		ArrayList<ReplyDTO> ar = null;
		MemberDTO memberDTO = (MemberDTO)request.getSession().getAttribute("member");
		
		int hit = 0;
		int num = 0;
		
		try {
			num = Integer.parseInt(request.getParameter("num"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			hit = reviewDAO.hit(num);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		ReviewDTO reviewDTO = new ReviewDTO();
		reviewDTO.setHit(hit);
		
		try {
			boardDTO = reviewDAO.selectOne(num);
			ar = replyDAO.selectList();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(boardDTO != null) {
			request.setAttribute("board", "review");
			request.setAttribute("view", boardDTO);
			request.setAttribute("r_list", ar);
			request.setAttribute("member", memberDTO);
			actionFoward.setPath("../WEB-INF/sell/boardView.jsp");
		}
		actionFoward.setCheck(true);
		return actionFoward;
	}

}
