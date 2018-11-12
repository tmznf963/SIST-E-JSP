package com.example.libs;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SelectELTag extends SimpleTagSupport{
	private Map<String,String> map = new HashMap<String,String>();
	
	@Override
	public void doTag() throws JspException,IOException{
		map.put("Apple", "사과");
		map.put("Mango", "망고");
		map.put("Lemon" ,"레몬");
		map.put("Peach", "복숭아");
		map.put("Banana", "바나나");
		map.put("Melon", "메론");
		JspContext ctx = this.getJspContext();
		JspWriter out = ctx.getOut();
		out.print("<select>");
		Set <String> keys = this.map.keySet();
		Iterator <String> iters = keys.iterator();
		for(int i = 0 ; i < keys.size() ; i++) {
			ctx.setAttribute("value", iters.next());
			ctx.setAttribute("text", this.map.get(iters.next()));
			this.getJspBody().invoke(null);
			//inboke(null)이면 출력 결과는 getOut()으로 반환된다. 중요!!!!!
		}
		out.print("</select>");
	}
}
