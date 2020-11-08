package com.ms.cook.board.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ms.cook.board.svc.BoardSVC;
import com.ms.cook.board.vo.BoardVO;

@Controller
@RequestMapping("/board/**")
public class BoardController {
	Logger logger = LoggerFactory.getLogger("BoardController");
	@Inject
	BoardSVC boardSVC;
	
	@RequestMapping(value = "list", method=RequestMethod.GET)
	public String list(Model model) {
		List<BoardVO> list = boardSVC.list();
		model.addAttribute("list",list);
		return "board/list";
	}
	
	@RequestMapping(value = "writeForm", method=RequestMethod.GET)
	public String writeForm() {
		return "board/writeForm";
	}
	
	@RequestMapping(value = "doAdd", method=RequestMethod.POST)
	public String doAdd(BoardVO vo) {
		String content = ((String)vo.getContent().replace("\r\n", "<br>"));
		vo.setContent(content);
		boardSVC.doAdd(vo);
		return "redirect:list";
	}
	
	@RequestMapping(value = "view/{bno}", method=RequestMethod.GET)
	public String view(@PathVariable int bno,Model model) {
		BoardVO vo = boardSVC.view(bno);
		model.addAttribute("vo",vo);
		return "board/view";
	}
	
	@ResponseBody
	@RequestMapping(value = "mod", method=RequestMethod.POST, produces="appliction/json")
	public String mod(@RequestBody HashMap<String, String> info) throws Exception {
		String pw = info.get("pw");
		int bno = Integer.parseInt(info.get("bno"));
		BoardVO vo = new BoardVO();
		vo.setBno(bno);
		vo.setPw(pw);;
		//내일 여기서부터
		return "success";
	}
}
