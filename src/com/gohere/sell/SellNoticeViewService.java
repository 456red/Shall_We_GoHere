package com.gohere.sell;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class SellNoticeViewService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		NoticeDAO noticeDAO = new NoticeDAO();
		BoardDTO boardDTO = null;
		int hit = 0;
		int num = 0;
		
		try {
			num = Integer.parseInt(request.getParameter("num"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			hit = noticeDAO.hit(num);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setHit(hit);
		
		try {
			boardDTO = noticeDAO.selectOne(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(boardDTO != null) {
			request.setAttribute("board", "notice");
			request.setAttribute("view", boardDTO);
			actionFoward.setPath("../WEB-INF/sell/boardView.jsp");
		}
		actionFoward.setCheck(true);
		return actionFoward;
	}
}
