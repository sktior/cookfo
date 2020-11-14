package com.ms.cook.jjim.svc;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ms.cook.jjim.dao.JjimDAO;
@Service
public class JjimSVCImpl implements JjimSVC {
	@Inject
	@Qualifier("jjimDAOImpl")
	JjimDAO jjimDAO;
	
	public int addJjim(HashMap<String, Object> param) {
		return jjimDAO.addJjim(param);
	}
	
	@Override
	public int check(HashMap<String, Object> param) {
		return jjimDAO.check(param);
	}
	
	@Override
	public int delJjim(HashMap<String, Object> param) {
		return jjimDAO.delJjim(param);
	}
	
	@Override
	public List<String> myRecipe(HashMap<String, Object> param) {
		return jjimDAO.myRecipe(param);
	}
	
	@Override
	public int getRno(HashMap<String, Object> param) {
		return jjimDAO.getRno(param);
	}
}
