package com.gohere.sell;

import java.io.File;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class SellExchangeWriteService implements Action {

	@Override
	public ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		String method = request.getMethod();
		if(method.equals("POST")) {
			ExchangeDTO exchangeDTO = new ExchangeDTO();
			ExchangeDAO exchangeDAO = new ExchangeDAO();

			String filePath = request.getServletContext().getRealPath("upload");
			File file = new File(filePath);
			if(file.exists()) {
				file.mkdirs();
			}
			int maxSize = 1024*1024*100;

			MultipartRequest multi = null;
			try {
				multi = new MultipartRequest(request, filePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
				exchangeDTO.setKind(multi.getParameter("kind"));
				exchangeDTO.setName(multi.getParameter("name"));
				exchangeDTO.setPoto(multi.getParameter("poto"));
				exchangeDTO.setPoint(Integer.parseInt(multi.getParameter("point")));
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}

			Enumeration<Object> names = multi.getFileNames();
			while(names.hasMoreElements()) {
				String name = (String)names.nextElement();
				String fName = multi.getFilesystemName(name);
				String oName = multi.getOriginalFileName(name);
			}

			int num = 0;
			try {
				num = exchangeDAO.getNum();
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
			exchangeDTO.setNum(num);

			int result = 0;
			try {
				result = exchangeDAO.insert(exchangeDTO);
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}

			if(result>0) {
				request.setAttribute("message", "글이 등록 되었습니다.");
				request.setAttribute("path", "./exchange.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}else {
				request.setAttribute("message", "Fail");
				request.setAttribute("path", "./exchange.sell");
				actionFoward.setCheck(true);
				actionFoward.setPath("../WEB-INF/common/result.jsp");
			}

		}else { //GET
			actionFoward.setCheck(true);
			actionFoward.setPath("../WEB-INF/sell/exchangeWrite.jsp");
		}
		return actionFoward;
	}
}
