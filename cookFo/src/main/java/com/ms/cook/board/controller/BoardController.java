package com.ms.cook.board.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ms.cook.board.svc.BoardSVC;
import com.ms.cook.board.vo.BoardVO;

@Controller
@RequestMapping("/board/**")
public class BoardController {
	Logger logger = LoggerFactory.getLogger("BoardController");
	@Inject
	BoardSVC boardSVC;
	
	@RequestMapping(value = "writeForm", method=RequestMethod.GET)
	public String writeForm() {
		return "board/writeForm";
	}
	
	@RequestMapping(value = "doAdd", method=RequestMethod.POST)
	public void doAdd(BoardVO vo) {
		System.out.println(vo.getCnt());
		System.out.println(vo.getContent());
		System.out.println(vo.getPw());
		System.out.println(vo.getTitle());
		System.out.println(vo.getWriter());
		boardSVC.doAdd(vo);
		
	}
}
