package com.example.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.example.vo.StudentVO;

public class StudentDAOImpl implements StudentDAO {
	private SqlSession sqlSession;
	
	public StudentDAOImpl() {
		this.sqlSession = SqlSessionFactoryBean.getInstance();
	}

	@Override
	public void readAll(Map map) {
		this.sqlSession.selectList("selectAllSP",map);
	}

	@Override
	public void create(StudentVO studentVO) {
		//return this.sqlSession.insert("insert",studentVO);//return type int 일 때
		this.sqlSession.insert("insertSP",studentVO);
	}

	@Override
	public void read(Map map) {
		this.sqlSession.selectOne("selectOneSP",map);
	}

	@Override
	public void delete(String hakbun) {
		//return this.sqlSession.delete("delete",hakbun); //return type int 였을때
		this.sqlSession.delete("deleteSP",hakbun);
	}

	@Override
	public void update(StudentVO studentVO) {
		//return this.sqlSession.update("update",studentVO);
		this.sqlSession.update("updateSP",studentVO);
	}

}
