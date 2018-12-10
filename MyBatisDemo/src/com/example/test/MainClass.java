package com.example.test;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.vo.CityInfo;

public class MainClass {
	public static void main(String[] args)throws IOException {
		//System.out.println(reader);//Object
		Reader reader = Resources.getResourceAsReader("mybatis-config.xml");//configuration.xml
		SqlSessionFactoryBuilder ssfb = new SqlSessionFactoryBuilder();
		SqlSessionFactory ssf = ssfb.build(reader);
		SqlSession ss = ssf.openSession();
		List<CityInfo> list = ss.selectList("selectKorea","KOR");//여러개 city 가져오기
		for(CityInfo cityInfo : list) {
			System.out.println(cityInfo);
		}
//		CityInfo city = (CityInfo)ss.selectOne("selectOne", 1);//첫번째 city 가져오기
//		System.out.println(city);//toString 호출
		
		ss.close();//session 닫기
	}
}
