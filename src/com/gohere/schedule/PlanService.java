package com.gohere.schedule;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class PlanService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		
		int ref = 1;
		int step = 0;
		int day = 1;
		String plan = null;
		try {
			ref = Integer.parseInt(request.getParameter("ref"));
			step = Integer.parseInt(request.getParameter("step"));
			day = Integer.parseInt(request.getParameter("day"));
			plan = request.getParameter("name");
		} catch (Exception e) {
			// TODO: handle exception
		}
		System.out.println(ref);
		System.out.println(step);
		System.out.println(day);
		PlanDayDTO planDayDTO = new PlanDayDTO();
		planDayDTO.setRef(ref);
		planDayDTO.setStep(step);
		planDayDTO.setDay(day);
		PlanDAO planDAO = new PlanDAO();
		ArrayList<PlanDayDTO> ar = null;
		try {
			planDAO.delete(planDayDTO);
			ar = planDAO.selectOne(planDayDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("ar", ar);
		actionFoward.setCheck(true);
		actionFoward.setPath("../WEB-INF/schedule/planday.jsp");
		return actionFoward;
	}

}
