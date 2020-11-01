package com.ms.cook.recipe.svc;

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
		System.out.println("svc : " + vo.toString());
		return recipeDAO.add(vo);
	}
}
