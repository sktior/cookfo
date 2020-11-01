package com.ms.cook.recipe.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ms.cook.recipe.vo.RecipeVO;

@Repository
public class RecipeDAOImpl implements RecipeDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public int add(RecipeVO vo) {
		System.out.println("dao : " + vo.toString());
		return sqlSession.insert("mappers.recipeDAO-mapper.addRecipe",vo);
	}							  
	
}
