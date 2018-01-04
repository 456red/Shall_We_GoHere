package com.gohere.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class MemberSearchService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		String method=request.getMethod();
		String name="";
		String phone="";
		String email="";
		if(method.equals("POST")) {
			 MemberDAO memberDAO = new MemberDAO();
			 try {
				 name = request.getParameter("name");
				 phone = request.getParameter("phone");
				 email = memberDAO.searchId(name, phone);
				 request.setAttribute("email", email);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 actionFoward.setCheck(true);
			 actionFoward.setPath("../WEB-INF/member/memberSearchResult.jsp");
		}else {
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/member/memberSearch.jsp");
			
			
		}
		return actionFoward;
	}

}
