package com.gohere.sell;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.gohere.util.MakePage;
import com.gohere.util.MakeRow;
import com.gohere.util.Pageing;

public class SellReviewService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		int curPage = 1;

		try {
			curPage = Integer.parseInt(request.getParameter("curPage"));
		} catch (Exception e) {
			// TODO: handle exception
		}

		MakeRow makeRow = new MakeRow();
		makeRow.setKind(request.getParameter("kind"));
		makeRow.setSearch(request.getParameter("search"));

		ReviewDAO reviewDAO = new ReviewDAO();
		int totalCount;
		try {
			totalCount = reviewDAO.getTotCount(makeRow);
			MakePage makePage = new MakePage(curPage, totalCount);
			makeRow = makePage.getMakeRow(makeRow);
			List<BoardDTO> ar = reviewDAO.selectList(makeRow);

			Pageing pageing = makePage.pageing();

			request.setAttribute("board", "review");
			request.setAttribute("list", ar);
			request.setAttribute("page", pageing);

		} catch (Exception e) {
			// TODO: handle exception
		}
		actionFoward.setCheck(true);
		actionFoward.setPath("../WEB-INF/sell/boardList.jsp");

		return actionFoward;
	}
}
