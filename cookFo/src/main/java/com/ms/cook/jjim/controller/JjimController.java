package com.ms.cook.jjim.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ms.cook.jjim.svc.JjimSVC;

@RestController
@RequestMapping(value="/jjim/**")
public class JjimController {
	@Inject
	JjimSVC jjimSVC;
	
	@RequestMapping(value="addJjim", method=RequestMethod.POST, produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public Object addJjim(@RequestBody HashMap<String,Object> param) {
		Map<String, Object> result = new HashMap<String, Object>();
		int ret = jjimSVC.addJjim(param);
		if(ret >= 1) {
			result.put("code", "OK");
		}else {
			result.put("code", "FAIL");
		}
		
		return result;
	}
	
	@RequestMapping(value="check", method=RequestMethod.POST, produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public Object check(@RequestBody HashMap<String, Object> param) {
		Map<String, Object> result = new HashMap<String, Object>();
		int ret = jjimSVC.check(param);
		if(ret >= 1) {
			result.put("code","OK");
		}else {
			result.put("code", "FAIL");
		}
		return result;
	}
	
	@RequestMapping(value="delJjim", method=RequestMethod.POST, produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public Object delJjim(@RequestBody HashMap<String, Object> param) {
		Map<String, Object> result = new HashMap<String, Object>();
		int ret = jjimSVC.delJjim(param);
		if(ret >= 1) {
			result.put("code","OK");
		}else {
			result.put("code", "FAIL");
		}
		return result;
	}
	
	@RequestMapping(value="myRecipe", method=RequestMethod.POST, produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public Object myRecipe(@RequestBody HashMap<String, Object> param) {
		List<String> list = new ArrayList<String>();
		list = jjimSVC.myRecipe(param);
		return list;
	}
	
	@RequestMapping(value="getRno", method=RequestMethod.POST, produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public int getRno(@RequestBody HashMap<String, Object> param) {
		return jjimSVC.getRno(param);
	}
	
}
