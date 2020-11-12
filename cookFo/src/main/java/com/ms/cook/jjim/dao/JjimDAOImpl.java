package com.ms.cook.jjim.dao;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class JjimDAOImpl implements JjimDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public int addJjim(HashMap<String, Object> param) {
		return sqlSession.insert("mappers.jjimDAO-mapper.addJjim",param);
	}
	
	@Override
	public int check(HashMap<String, Object> param) {
		return sqlSession.selectOne("mappers.jjimDAO-mapper.check",param);
	}
}
