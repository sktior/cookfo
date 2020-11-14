package com.ms.cook.jjim.dao;

import java.util.HashMap;
import java.util.List;

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
	
	@Override
	public int delJjim(HashMap<String, Object> param) {
		return sqlSession.delete("mappers.jjimDAO-mapper.delJjim",param);
	}
	
	@Override
	public List<String> myRecipe(HashMap<String, Object> param) {
		return sqlSession.selectList("mappers.jjimDAO-mapper.myRecipe",param);
	}
	
	@Override
	public int getRno(HashMap<String, Object> param) {
		return sqlSession.selectOne("mappers.jjimDAO-mapper.getRno",param);
	}
}
