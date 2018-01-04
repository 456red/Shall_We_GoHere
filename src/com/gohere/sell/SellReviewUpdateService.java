package com.gohere.sell;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class SellReviewUpdateService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		String method = request.getMethod();
		BoardDTO boardDTO = null;
		ReviewDAO reviewDAO = new ReviewDAO();
		int result = 0;
		int num = 0;
		
		if(method.equals("POST")) {
			boardDTO = new BoardDTO();
			boardDTO.setNum(Integer.parseInt(request.getParameter("num")));
			boardDTO.setWriter(request.getParameter("writer"));
			boardDTO.setTitle(request.getParameter("title"));
			boardDTO.setContents(request.getParameter("contents"));
			try {
				result = reviewDAO.update(boardDTO);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			if(result>0) {
				request.setAttribute("message", "���� �Ǿ����ϴ�.");
				request.setAttribute("path", "./reviewList.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}else {
				request.setAttribute("message", "Fail");
				request.setAttribute("path", "./reviewList.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}
		}else {
			//GET
			try {
				num = Integer.parseInt(request.getParameter("num"));
				boardDTO = reviewDAO.selectOne(num);
			} catch (Exception e) {
				e.printStackTrace();
			}
			if(boardDTO != null) {
				request.setAttribute("board", "review");
				request.setAttribute("view", boardDTO);
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/sell/boardUpdate.jsp");
				
			}else {
				request.setAttribute("message", "Fail");
				request.setAttribute("path", "./reviewList.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}
			
		}
		return actionFoward;
	}

}
