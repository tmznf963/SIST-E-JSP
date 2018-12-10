package com.example.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.example.vo.StudentVO;

public class StudentDAOImpl implements StudentDAO {
	private SqlSession sqlSession;
	
	public StudentDAOImpl() {
		this.sqlSession = SqlSessionFactoryBean.getInstance();
	}

	@Override
	public List<StudentVO> readAll() {
		return this.sqlSession.selectList("selectAll");
	}

	@Override
	public int create(StudentVO studentVO) {
		return this.sqlSession.insert("insert",studentVO);
	}

	@Override
	public StudentVO read(String hakbun) {
		return this.sqlSession.selectOne("selectOne",hakbun);
	}

}
