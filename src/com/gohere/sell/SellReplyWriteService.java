package com.gohere.sell;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.gohere.member.MemberDTO;

public class SellReplyWriteService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		ReplyDTO replyDTO = new ReplyDTO();
		ReplyDAO replyDAO = new ReplyDAO();
		
		int num = 0;
		int num2 = 0;
		
		try {
			num = replyDAO.getNum();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		replyDTO.setNum(num);
		replyDTO.setP_num(num2);
		
		MemberDTO memberDTO = (MemberDTO)request.getSession().getAttribute("member");
		ReviewDTO reviewDTO = (ReviewDTO)request.getSession().getAttribute("review");
		replyDTO.setContents(request.getParameter("contents"));
		
		int result = 0;
		try {
			result = replyDAO.insert(replyDTO, memberDTO.getEmail(), memberDTO.getName(), reviewDTO.getNum());
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		try {
			replyDTO = replyDAO.selectOne(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result>0) {
			actionFoward.setCheck(true);
			request.setAttribute("r_write", replyDTO);
			actionFoward.setPath("../WEB-INF/common/replyWrite.jsp");
		}else {
			request.setAttribute("message", "Fail");
			request.setAttribute("path", "./${borad}View.sell");
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/view/common/result.jsp");
		}
		return actionFoward;
	}

}
