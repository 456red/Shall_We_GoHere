package com.gohere.sell;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.gohere.util.MakePage;
import com.gohere.util.MakeRow;
import com.gohere.util.Pageing;

public class SellQnaService implements Action {

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
		
		QnaDAO  qnaDAO = new QnaDAO();
		int totalCount;
		try {
			totalCount = qnaDAO.getTotCount(makeRow);
			MakePage makePage = new MakePage(curPage, totalCount);
			makeRow = makePage.getMakeRow(makeRow);
			List<BoardDTO> ar = qnaDAO.selectList(makeRow);
			
			Pageing pageing = makePage.pageing();
			
			request.setAttribute("board", "qna");
			request.setAttribute("list", ar);
			request.setAttribute("page", pageing);
			request.setAttribute("make", makeRow);
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		actionFoward.setCheck(true);
		actionFoward.setPath("../WEB-INF/sell/boardList.jsp");
		
		return actionFoward;
	}

}
