package com.example.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MessageProcess implements Controller {

	@Override
	public String myservice(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("USERNAME", "한지민");
		request.setAttribute("USERAGE", 44);
		request.setAttribute("USERPHONE", "01033334444");
		return "/messageView.jsp";
	}
}
