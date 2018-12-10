package com.example.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

//mybatis.jar 필요
public class SqlSessionFactoryBean {
	private static SqlSessionFactory sessionFactory = null;
	static {
		if(sessionFactory == null) {
			try {
				Reader rd = Resources.getResourceAsReader("mybatis-config.xml");
				sessionFactory = new SqlSessionFactoryBuilder().build(rd);
			} catch (IOException e) {
				System.out.println(e);
			}
		}
	}
	public static SqlSession getInstance() {
		return sessionFactory.openSession(true);//true==autocommit
	}
}
