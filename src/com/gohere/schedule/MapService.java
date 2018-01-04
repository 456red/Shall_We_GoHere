package com.gohere.schedule;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

public class MapService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();

		int ref = 1;
		int step = 0;
		int day = 1;
		double lat = 0.0;
		double lng = 0.0;
		int level = 0;
		try {
			ref = Integer.parseInt(request.getParameter("ref"));
			step = Integer.parseInt(request.getParameter("step"));
			day = Integer.parseInt(request.getParameter("day"));
			lat = Double.parseDouble(request.getParameter("lat"));
			lng = Double.parseDouble(request.getParameter("lng"));
			level = Integer.parseInt(request.getParameter("level"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		PlanDayDTO planDayDTO = new PlanDayDTO();
		planDayDTO.setRef(ref);
		planDayDTO.setStep(step);
		planDayDTO.setDay(day);
		PlanDAO planDAO = new PlanDAO();
		ArrayList<PlanDayDTO> ar = null;
		try {
			ar = planDAO.selectOne(planDayDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("ar", ar);
		request.setAttribute("lat", lat);
		request.setAttribute("lng", lng);
		request.setAttribute("level", level);


		actionFoward.setCheck(true);
		actionFoward.setPath("../WEB-INF/schedule/map.jsp");
		
		return actionFoward;
	}
}
