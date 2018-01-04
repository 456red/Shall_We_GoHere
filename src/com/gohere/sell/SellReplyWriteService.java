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
		
		try {
			num = replyDAO.getNum();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		MemberDTO memberDTO = (MemberDTO)request.getSession().getAttribute("member");
		replyDTO.setNum(num);
		replyDTO.setContents(request.getParameter("contents"));
		replyDTO.setP_num(Integer.parseInt(request.getParameter("p_num")));
		
		int result = 0;
		try {
			result = replyDAO.insert(replyDTO, memberDTO.getEmail(), memberDTO.getName());
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
