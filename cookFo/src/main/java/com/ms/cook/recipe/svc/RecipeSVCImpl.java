package com.ms.cook.recipe.svc;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ms.cook.recipe.dao.RecipeDAO;
import com.ms.cook.recipe.vo.RecipeVO;
@Service
public class RecipeSVCImpl implements RecipeSVC {
	@Inject
	@Qualifier("recipeDAOImpl")
	RecipeDAO recipeDAO;
	
	@Override
	public int add(RecipeVO vo) {
		return recipeDAO.add(vo);
	}
	
	@Override
	public List<RecipeVO> RecipeList() {
		return recipeDAO.RecipeList();
	}
	
	@Override
	public RecipeVO viewRecipe(int rno) {
		return recipeDAO.viewRecipe(rno);
	}
	
	@Override
	public RecipeVO home3() {
		return recipeDAO.home3();
	}
}
