package com.example.libs.controller;

import java.sql.SQLException;

import com.example.libs.model.MemberDAO;
import com.example.libs.model.MemberVO;

public class InsertController {
	public int insertMember(MemberVO member) {//useBean을 사용하기에 static이 아님
		int row = 0;
		try {
			row = MemberDAO.insertMember(member);
		}catch(SQLException e){
			System.out.println(e);
		}
		return row;
	}
}
