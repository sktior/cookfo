package com.ms.cook.recipe.dao;


import java.util.HashMap;
import java.util.List;

import com.ms.cook.recipe.vo.RecipeVO;

public interface RecipeDAO {
	public int add(RecipeVO vo);
	public List<RecipeVO> RecipeList();
	public RecipeVO viewRecipe(int rno);
	public RecipeVO home3();
	public List<RecipeVO> search(HashMap<String,Object>param);
	public List<RecipeVO> rowfat();
}
