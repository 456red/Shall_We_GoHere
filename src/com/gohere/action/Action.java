package com.gohere.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	
	public abstract ActionFoward doProcess(HttpServletRequest request, HttpServletResponse response);

}
