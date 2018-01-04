package com.gohere.schedule;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.gohere.member.MemberDTO;

public class PlaningService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		ArrayList<InfoDTO> ar = new ArrayList<>();
		String[] city = request.getParameterValues("city");
		String[] days = request.getParameterValues("days");
		String[] lat = request.getParameterValues("lat");
		String[] lng = request.getParameterValues("lng");
		String[] level = request.getParameterValues("level");
		String date = request.getParameter("date");
		MemberDTO memberDTO = (MemberDTO)request.getSession().getAttribute("member");
		PlanDAO planDAO = new PlanDAO();
		int num=1;
		try {
			num = planDAO.getNum();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		for(int i=0;i<city.length;i++) {
			InfoDTO infoDTO = new InfoDTO();
			infoDTO.setCity(city[i]);
			infoDTO.setDays(days[i]);
			infoDTO.setLat(lat[i]);
			infoDTO.setLng(lng[i]);
			infoDTO.setLevel(level[i]);
			infoDTO.setRef(num);
			infoDTO.setStep(i);
			ar.add(infoDTO);
			PlanDTO planDTO = new PlanDTO();
			planDTO.setEmail(memberDTO.getEmail());
			planDTO.setCity(city[i]);
			planDTO.setStay_date(Integer.parseInt(days[i]));
			planDTO.setTitle(request.getParameter("title"));
			planDTO.setDepart_date(date);
			planDTO.setRef(num);
			planDTO.setStep(i);
			try {
				planDAO.insert(planDTO);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
			request.setAttribute("ar", ar);
			
			
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/schedule/planing.jsp");
		
		return actionFoward;
	}
	
}
