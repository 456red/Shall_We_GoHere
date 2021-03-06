package com.gohere.control;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gohere.action.Action;
import com.gohere.action.ActionFoward;

/**
 * Servlet implementation class EmailController
 */
@WebServlet("/EmailController")
public class EmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String, Object> command;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init(ServletConfig config) throws ServletException {
    	command = new HashMap<>();
    	String filePath = config.getServletContext().getRealPath("WEB-INF/property");
    	String fileName = config.getInitParameter("property");
    	
    	FileInputStream fi = null;
    	Properties pro = new Properties();
    	
    	try {
			fi = new FileInputStream(new File(filePath,fileName));
			pro.load(fi);
			Iterator<Object> it = pro.keySet().iterator();
			while(it.hasNext()) {
				String key = (String)it.next();
				String value = (String)pro.get(key);
				Class ins = Class.forName(value);
				Object obj = ins.newInstance();
				command.put(key, obj);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				fi.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
    	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String path = request.getServletPath();
			Action action = null;
			ActionFoward actionFoward = null;
			
			action = (Action)command.get(path);
			actionFoward = action.doProcess(request, response);
			
			
			if(actionFoward.isCheck()) {
				RequestDispatcher view = request.getRequestDispatcher(actionFoward.getPath());
				view.forward(request, response);
			}else {
				response.sendRedirect(actionFoward.getPath());
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
