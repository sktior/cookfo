package com.ms.cook.recipe.dao;

import java.util.HashMap;
import java.util.List;

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
		return sqlSession.insert("mappers.recipeDAO-mapper.addRecipe",vo);
	}							 
	@Override
	public List<RecipeVO> RecipeList() {
		return sqlSession.selectList("mappers.recipeDAO-mapper.RecipeList");
	}
	
	@Override
	public RecipeVO viewRecipe(int rno) {
		return sqlSession.selectOne("mappers.recipeDAO-mapper.viewRecipe",rno);
	}
	
	@Override
	public RecipeVO home3() {
		return sqlSession.selectOne("mappers.recipeDAO-mapper.today");
	}
	
	@Override
	public List<RecipeVO> search(HashMap<String, Object> param) {
		return sqlSession.selectList("mappers.recipeDAO-mapper.search",param);
	}
	
	@Override
	public List<RecipeVO> rowfat() {
		return sqlSession.selectList("mappers.recipeDAO-mapper.rowfat");
	}
	
}
