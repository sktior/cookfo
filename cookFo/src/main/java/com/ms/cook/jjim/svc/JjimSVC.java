package com.ms.cook.jjim.svc;

import java.util.HashMap;

public interface JjimSVC {
	public int addJjim(HashMap<String, Object> param);
	public int check(HashMap<String, Object> param);
	public int delJjim(HashMap<String, Object> param);
}
