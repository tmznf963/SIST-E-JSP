package com.example.dao;

import java.util.List;

import com.example.vo.StudentVO;

public interface StudentDAO {
	int create(StudentVO studentVO);
	StudentVO read(String hakbun);
	List<StudentVO> readAll();
	
}
