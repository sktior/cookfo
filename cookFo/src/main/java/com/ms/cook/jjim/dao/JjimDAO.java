package com.ms.cook.jjim.dao;

import java.util.HashMap;
import java.util.List;

public interface JjimDAO {
	public int addJjim(HashMap<String, Object> param);
	public int check(HashMap<String, Object> param);
	public int delJjim(HashMap<String, Object> param);
	public List<String> myRecipe(HashMap<String, Object> param);
	public int getRno(HashMap<String, Object> param);
}
