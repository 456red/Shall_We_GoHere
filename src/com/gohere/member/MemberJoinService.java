package com.gohere.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;


public class MemberJoinService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = null;
		String method=request.getMethod();
		MemberDAO memberDAO = null;
		
		
		
		if(method.equals("POST")) {
			
			
			MemberDTO memberDTO = new MemberDTO();
			memberDTO.setEmail(request.getParameter("email"));
			memberDTO.setName(request.getParameter("name"));
			memberDTO.setPassword(request.getParameter("password"));
			String[]ar=request.getParameterValues("phone");
			String phone="";
			for(String num : ar) {
				phone += num;
			}
			memberDTO.setPhone(phone);
			memberDTO.setRecommend(request.getParameter("recommend"));
			
			memberDAO = new MemberDAO();
			int result = 0;
			int result2 = 0;
			try {
				result = memberDAO.join(memberDTO);
				result2 = memberDAO.recommend(memberDTO);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String check="";
			try {
				String email = request.getParameter("email");
				check=memberDAO.emailCheck(email);
			}catch (Exception e) {
				// TODO: handle exception
			}
			
			
			String message="";
			if(result>0) {
				message="가입성공";
				actionFoward = new ActionFoward();				
				request.setAttribute("message", message);
				request.setAttribute("result", result);
				request.setAttribute("path", "../main.jsp");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/message/message.jsp");
				
				
			}else {
				actionFoward = new ActionFoward();	
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/message/message.jsp");
				if(check=="") {
					message="이미 가입된 이메일입니다.";		
				}
				request.setAttribute("message", message);
				request.setAttribute("path", "../member/memberJoin.member");
			}
			
			
			
		}else {
			String name="";
			String email="";
			String check="";
				
			try {
				name=request.getParameter("name");
				email=request.getParameter("email");
				check=request.getParameter("check");
				
			}catch (Exception e) {
				// TODO: handle exception
			}
			request.setAttribute("name", name);
			request.setAttribute("email", email);
			request.setAttribute("check", check);
			actionFoward = new ActionFoward();
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/member/memberJoin.jsp");
			
			
			
		}
		
		return actionFoward;
	}

}
