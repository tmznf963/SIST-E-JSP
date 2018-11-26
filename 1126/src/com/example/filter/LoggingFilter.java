package com.example.filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LoggingFilter implements Filter{
	private PrintWriter writer;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {//초기화
		String path = filterConfig.getInitParameter("mylog");
		try {
			this.writer = new PrintWriter(new FileWriter(path,true),true);//FW(apend) , PW(autoflush) == true
		} catch (IOException e) {
			System.out.println(e);
		}
	}

	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		this.writer.println("Filter Starting...!");
		this.writer.flush();//바로 내보내
		chain.doFilter(request, response);
		this.writer.println("Filter Ending...");
		this.writer.flush();//바로 내보내
	}

	
	@Override
	public void destroy() {//소멸
		this.writer.close();
	}

}
