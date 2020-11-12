package com.ms.cook.member.controller;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ms.cook.member.svc.MemberSVC;
import com.ms.cook.member.vo.MemberVO;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	@Inject
	MemberSVC memberSVC;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	
	/* 페이지 이동 모음 */
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "member/loginForm";
	}
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "member/joinForm";
	}

	@RequestMapping(value = "/modForm", method = RequestMethod.GET)
	public String modForm() {
		return "member/modForm";
	}
	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPage() {
		return "member/MyPage";
	}
	@RequestMapping(value = "/myList", method = RequestMethod.GET)
	public String myList() {
		return "member/MyList";
	}
	
	/* 페이지 이동 모음 끝 */

	/**
	 * 회원가입
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = "/newMember", method = RequestMethod.POST)
	public String newMember(MemberVO vo) {
		String pw = pwdEncoder.encode(vo.getPw());
		vo.setPw(pw);
		memberSVC.newMember(vo);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/doMod", method = RequestMethod.POST)
	public String doMod(MemberVO vo) {
		String pw = pwdEncoder.encode(vo.getPw());
		vo.setPw(pw);
		memberSVC.doMod(vo);
		return "redirect:/";
	}
	
	
}
