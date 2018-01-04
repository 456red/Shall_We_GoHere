package com.gohere.sell;

import java.io.File;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class SellReviewWriteService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		String method = request.getMethod();
		if(method.equals("POST")) {
			ReviewDTO reviewDTO = new ReviewDTO();
			ReviewDAO reviewDAO = new ReviewDAO();

			String filePath = request.getServletContext().getRealPath("upload");
			File file = new File(filePath);
			if(file.exists()) {
				file.mkdirs();
			}
			int maxSize = 1024*1024*100;


			MultipartRequest multi=null;
			try {
				multi = new MultipartRequest(request, filePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
				reviewDTO.setWriter(multi.getParameter("writer"));
				reviewDTO.setTitle(multi.getParameter("title"));
				reviewDTO.setContents(multi.getParameter("contents"));
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
				num = reviewDAO.getNum();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			reviewDTO.setNum(num);

			int result = 0;
			try {
				result = reviewDAO.insert(reviewDTO);
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}

			if(result>0) {
				request.setAttribute("message", "글이 등록 되었습니다.");
				request.setAttribute("path", "./reviewList.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}else {
				request.setAttribute("message", "Fail");
				request.setAttribute("path", "./reviewList.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}

		}else { //GET일 경우
			request.setAttribute("board", "review");
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/sell/boardWrite.jsp");
		}

		return actionFoward;
	}

}
