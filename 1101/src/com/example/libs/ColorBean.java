package com.example.libs;

public class ColorBean {
	private String name;
	private String color;
	public ColorBean() {//기본생성자 Overriding
		this.color="#000";
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
}
