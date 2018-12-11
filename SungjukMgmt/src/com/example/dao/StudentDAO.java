package com.example.dao;

import java.util.List;
import java.util.Map;

import com.example.vo.StudentVO;

public interface StudentDAO {
	void create(StudentVO studentVO);
	void read(Map map);
	void readAll(Map map);
	void update(StudentVO studentVO);
	void delete(String hakbun);
}
