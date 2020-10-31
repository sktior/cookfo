package com.ms.cook.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ms.cook.member.svc.MemberSVC;

@RestController
@RequestMapping("/chk/**")
public class ChkRestController {
	@Inject
	MemberSVC memberSVC;
	
	/**
	 * 아이디 중복 검사
	 * @param info
	 * @return
	 */
	@RequestMapping(value = "/chkID", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> chkID(@RequestBody HashMap<String,String> info) throws Exception {
		String id = info.get("id");
		return memberSVC.chkID(id);
	}
	
	@RequestMapping(value = "/chkEMAIL", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> chkEMAIL(@RequestBody HashMap<String,String> info) throws Exception{
		String email = info.get("email");
		return memberSVC.chkEMAIL(email);
	}
}
