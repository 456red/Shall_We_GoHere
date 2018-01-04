package com.gohere.member;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.gohere.util.MakeRow;
import com.gohere.util.MakePage;
import com.gohere.util.Pageing;

public class MemberMypageService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward =new ActionFoward();
		MemberDTO memberDTO = null;
		MemberDAO memberDAO = new MemberDAO();
		ArrayList<MemberDTO> ar = null;

		try {
			ar=memberDAO.list();
			request.setAttribute("ar", ar);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		actionFoward.setCheck(true);
		actionFoward.setPath("../WEB-INF/member/memberMypage.jsp");
		
		return actionFoward;
	}

}
