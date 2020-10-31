package com.ms.cook.member.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ms.cook.member.svc.MemberSVC;
import com.ms.cook.member.vo.MemberVO;

@Controller
@RequestMapping("/loginC/**")
public class LoginController {
	@Inject
	MemberSVC memberSVC;

	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String Login(MemberVO vo, HttpSession session, RedirectAttributes rttr) {
		MemberVO info = memberSVC.login(vo.getId());
		boolean result = pwdEncoder.matches(vo.getPw(), info.getPw());
		if(result == true) {
			session.setAttribute("info", info);
		}else {
			session.setAttribute("info", null);
			rttr.addFlashAttribute("msg",false);
		}
		return "redirect:/";
	}
}
