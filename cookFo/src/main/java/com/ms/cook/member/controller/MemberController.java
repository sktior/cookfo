package com.ms.cook.member.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ms.cook.member.vo.MemberVO;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	/* 페이지 이동 모음 */
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "member/loginForm";
	}
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "member/joinForm";
	}
	
	/* 페이지 이동 모음 끝 */
	
	@RequestMapping(value = "/newMember", method = RequestMethod.POST)
	public void newMember(HashMap<String,String> info, MemberVO vo) {
		System.out.println(vo.getAddress());
	}
	
	
}
