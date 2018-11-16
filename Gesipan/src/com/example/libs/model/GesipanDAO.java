package com.example.libs.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

public class GesipanDAO {
	public static GesipanVO select(int idx) throws SQLException{
		Connection conn = DBConnection.getConnection();
		String sql = "{ call board_select(?, ?) }";
		CallableStatement cstmt = conn.prepareCall(sql);
		cstmt.setInt(1, idx);
		cstmt.registerOutParameter(2, oracle.jdbc.OracleTypes.CURSOR);
		cstmt.executeUpdate();   //매우 중요.
		ResultSet rs = (ResultSet)cstmt.getObject(2);
		rs.next();
		GesipanVO gesipan = new GesipanVO();
		gesipan.setName(rs.getString("name"));
		gesipan.setPasswd(rs.getString("passwd"));
		gesipan.setEmail(rs.getString("email"));
		gesipan.setTitle(rs.getString("title"));
		gesipan.setContents(rs.getString("contents"));
		gesipan.setWritedate(rs.getDate("writedate"));
		gesipan.setReadnum(rs.getInt("readnum"));
		gesipan.setFilename(rs.getString("filename"));
		gesipan.setGrp(rs.getInt("grp"));
		gesipan.setLev(rs.getInt("lev"));
		gesipan.setStep(rs.getInt("step"));
		if(rs != null) rs.close();
		if(cstmt != null) cstmt.close();
		DBClose.close(conn);
		return gesipan;
	}
	public static Vector<GesipanVO> selectAll() throws SQLException{
		Connection conn = DBConnection.getConnection();
		String sql = "{ call board_selectAll(?) }";
		CallableStatement cstmt = conn.prepareCall(sql);
		cstmt.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
		cstmt.executeUpdate(); //매우 중요
		ResultSet rs = (ResultSet)cstmt.getObject(1);//Obj로 받는걸 rs로 변환
		Vector<GesipanVO> vector = new Vector<GesipanVO>(1,1);
		if(!rs.next()) {//글이 한 개라도 없으면
			vector = null;
		}else {//글이 있으면
			do {
				GesipanVO gesipan = new GesipanVO();
				gesipan.setIdx(rs.getInt("idx"));
				gesipan.setName(rs.getString("name"));
				gesipan.setEmail(rs.getString("email"));
				gesipan.setTitle(rs.getString("title"));
				gesipan.setWritedate(rs.getDate("writedate"));
				gesipan.setReadnum(rs.getInt("readnum"));
				vector.addElement(gesipan);
				//idx, name, email, title, writedate, readnum
			}while(rs.next());
		}
		if(rs != null) rs.close();
		if(cstmt != null) cstmt.close();
		DBClose.close(conn);
		return vector;
	}
	public static int insert(GesipanVO gesipan) throws SQLException{
		Connection conn = DBConnection.getConnection();
		String sql = "{ call board_insert(?,?,?,?,?,?) }";
		CallableStatement cstmt = conn.prepareCall(sql);
		cstmt.setString(1, gesipan.getName());
		cstmt.setString(2, gesipan.getPasswd());
		cstmt.setString(3, gesipan.getEmail());
		cstmt.setString(4, gesipan.getTitle());
		cstmt.setString(5, gesipan.getContents());
		cstmt.setString(6, gesipan.getFilename());
		int row = cstmt.executeUpdate();
		if(cstmt != null) cstmt.close();
		DBClose.close(conn);
		return row;
	}
}
