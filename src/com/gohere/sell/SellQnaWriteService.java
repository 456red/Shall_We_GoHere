package com.gohere.sell;

import java.io.File;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class SellQnaWriteService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response){
		ActionFoward actionFoward = new ActionFoward();
		String method = request.getMethod();
		if(method.equals("POST")) {
			QnaDTO qnaDTO = new QnaDTO();
			QnaDAO qnaDAO = new QnaDAO();

			String filePath = request.getServletContext().getRealPath("upload");
			File file = new File(filePath);
			if(file.exists()) {
				file.mkdirs();
			}
			int maxSize = 1024*1024*100;

			MultipartRequest multi=null;
			try {
				multi = new MultipartRequest(request, filePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
				qnaDTO.setWriter(multi.getParameter("writer"));
				qnaDTO.setTitle(multi.getParameter("title"));
				qnaDTO.setContents(multi.getParameter("contents"));
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}


			Enumeration<Object> names = multi.getFileNames();
			while(names.hasMoreElements()) {
				String name = (String)names.nextElement();
				String fName = multi.getFilesystemName(name);
				String oName = multi.getOriginalFileName(name);
			}

			int num = 0;
			try {
				num = qnaDAO.getNum();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			qnaDTO.setNum(num);

			int result = 0;
			try {
				result = qnaDAO.insert(qnaDTO);
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}

			if(result>0) {
				request.setAttribute("message", "글이 등록 되었습니다.");
				request.setAttribute("path", "./qnaList.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}else {
				request.setAttribute("message", "Fail");
				request.setAttribute("path", "./qnaList.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}

		}else { //GET일 경우
			request.setAttribute("board", "qna");
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/sell/boardWrite.jsp");
		}

		return actionFoward;
	}

}
