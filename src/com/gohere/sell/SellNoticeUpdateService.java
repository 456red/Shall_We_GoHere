package com.gohere.sell;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class SellNoticeUpdateService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		String method = request.getMethod();
		BoardDTO boardDTO = null;
		NoticeDAO noticeDAO = new NoticeDAO();
		int result = 0;
		int num = 0;
		
		if(method.equals("POST")) {
			boardDTO = new BoardDTO();
			boardDTO.setNum(Integer.parseInt(request.getParameter("num")));
			boardDTO.setWriter(request.getParameter("writer"));
			boardDTO.setTitle(request.getParameter("title"));
			boardDTO.setContents(request.getParameter("contents"));
			try {
				result = noticeDAO.update(boardDTO);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			if(result>0) {
				request.setAttribute("message", "수정 되었습니다.");
				request.setAttribute("path", "./noticeList.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}else {
				request.setAttribute("message", "Fail");
				request.setAttribute("path", "./noticeList.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}
		}else {
			//GET
			try {
				num = Integer.parseInt(request.getParameter("num"));
				boardDTO = noticeDAO.selectOne(num);
			} catch (Exception e) {
				e.printStackTrace();
			}
			if(boardDTO != null) {
				request.setAttribute("board", "notice");
				request.setAttribute("view", boardDTO);
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/sell/boardUpdate.jsp");
				
			}else {
				request.setAttribute("message", "Fail");
				request.setAttribute("path", "./noticeList.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}
			
		}
		return actionFoward;
	}

}
