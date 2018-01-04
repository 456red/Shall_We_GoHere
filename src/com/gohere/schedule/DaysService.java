package com.gohere.schedule;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class DaysService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		if(request.getMethod().equals("GET")) {
			int ref = 1;
			int step = 0;
			int day = 1;
			try {
				ref = Integer.parseInt(request.getParameter("ref"));
				step = Integer.parseInt(request.getParameter("step"));
				day = Integer.parseInt(request.getParameter("day"));
			} catch (Exception e) {
				// TODO: handle exception
			}
			PlanDAO planDAO = new PlanDAO();
			PlanDTO planDTO = new PlanDTO();
			
			PlanDayDTO planDayDTO = new PlanDayDTO();
			planDayDTO.setRef(ref);
			planDayDTO.setStep(step);
			planDayDTO.setDay(day);
			ArrayList<PlanDayDTO> ar=null;
			try {
				ar = planDAO.selectOne(planDayDTO);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("ar", ar);
			
		}else {//post
			int ref = 1;
			int step = 0;
			int day = 1;
			String name = null;
			try {
				ref = Integer.parseInt(request.getParameter("ref"));
				step = Integer.parseInt(request.getParameter("step"));
				day = Integer.parseInt(request.getParameter("day"));
				name = request.getParameter("name");
			} catch (Exception e) {
				// TODO: handle exception
			}
			PlanDayDTO planDayDTO = new PlanDayDTO();
			planDayDTO.setRef(ref);
			planDayDTO.setStep(step);
			planDayDTO.setDay(day);
			planDayDTO.setPlan(name);
			PlanDAO planDAO = new PlanDAO();
			ArrayList<PlanDayDTO> ar = null;
			try {
				planDAO.save(planDayDTO);
				ar = planDAO.selectOne(planDayDTO);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("ar", ar);
		}
		
		
		actionFoward.setCheck(true);
		actionFoward.setPath("../WEB-INF/schedule/days.jsp");
		return actionFoward;
	}

}
