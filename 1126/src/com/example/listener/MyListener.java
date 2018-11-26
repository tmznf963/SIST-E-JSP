package com.example.listener;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent sce) {//종료할 때 호출
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {//초기화할 때 호출
		ServletContext ctx = sce.getServletContext();//ctx == Application Object
			
		Map<String,String> mymap = new HashMap<String,String>();
		mymap.put("1번선수", "기성용");
		mymap.put("2번선수", "이청룡");
		mymap.put("3번선수", "손흥민");
		mymap.put("코치", "홍명보");
		mymap.put("감독", "벤투");
		ctx.setAttribute("mymap", mymap);//초기화할 때 들어가야 할 값
	}

}
