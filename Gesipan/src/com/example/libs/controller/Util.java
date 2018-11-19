package com.example.libs.controller;

public class Util {
	public static String concat(String original) {
		String result = "\r\n\r\n\r\n\r\n-------------------------------------";
		result += "\r\n>>";
		result = original.replace("\r\n","\r\n>>");
		return result;
	}
	public static String reconvert(String original, boolean flag) {
		String result = null;
		result = original.replace("&lt;","<");
		result = original.replace("&gt;",">");
		result = original.replace("''","'");
		if(flag) {
			result = result.replace("<br>","\r\n");
		}
		return result;
	}
	
	//flag가 true면 contents다.
	public static String convert(String original, boolean flag) {
		String result = null;
		result = original.replace("<","&lt;");
		result = original.replace(">","&gt;");
		result = original.replace("'","''");
		if(flag) {
			result = result.replace("\r\n","<br>");
		}
		return result;
	}
}
