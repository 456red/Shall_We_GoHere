package com.gohere.sell;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class SellInquiryWriteService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response){
		ActionFoward actionFoward = new ActionFoward();
		String method = request.getMethod();
		if(method.equals("POST")) {
			InquiryDTO inquiryDTO = new InquiryDTO();
			InquiryDAO inquiryDAO = new InquiryDAO();

			String filePath = request.getServletContext().getRealPath("upload");
			File file = new File(filePath);
			if(file.exists()) {
				file.mkdirs();
			}
			int maxSize = 1024*1024*100;

			 
				MultipartRequest multi=null;
				try {
					multi = new MultipartRequest(request, filePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				inquiryDTO.setWriter(multi.getParameter("writer"));
				inquiryDTO.setTitle(multi.getParameter("title"));
				inquiryDTO.setContents(multi.getParameter("contents"));

				
				Enumeration<Object> names = multi.getFileNames();
				while(names.hasMoreElements()) {
					String name = (String)names.nextElement();
					String fName = multi.getFilesystemName(name);
					String oName = multi.getOriginalFileName(name);
				}
			

			int num = 0;
			try {
				num = inquiryDAO.getNum();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			inquiryDTO.setNum(num);

			int result = 0;
			try {
				result = inquiryDAO.insert(inquiryDTO);
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
			
			if(result>0) {
				request.setAttribute("message", "글이 등록 되었습니다.");
				request.setAttribute("path", "./inquiryList.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}else {
				request.setAttribute("message", "Fail");
				request.setAttribute("path", "./inquiryList.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}

		}else { //GET일 경우
			request.setAttribute("board", "inquiry");
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/sell/boardWrite.jsp");
		}

		return actionFoward;
	}


}
