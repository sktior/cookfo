package com.ms.cook.recipe.svc;

import java.util.List;

import com.ms.cook.recipe.vo.RecipeVO;

public interface RecipeSVC {
	public int add(RecipeVO vo);
	public List<RecipeVO> RecipeList();
	public RecipeVO viewRecipe(int rno);
}
