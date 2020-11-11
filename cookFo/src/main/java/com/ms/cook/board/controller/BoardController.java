package com.ms.cook.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.ms.cook.board.svc.ReplySVC;
import com.ms.cook.board.vo.BoardVO;
import com.ms.cook.board.vo.ReplyVO;

@Controller
@RequestMapping("/board/**")
public class BoardController {
	Logger logger = LoggerFactory.getLogger("BoardController");
	@Inject
	BoardSVC boardSVC;
	@Inject
	ReplySVC replySVC;
	
	// 원글 부분
	
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
		List<ReplyVO> replylist = replySVC.replyList(bno);
		boardSVC.cntplus(bno);
		model.addAttribute("vo",vo);
		model.addAttribute("reply",replylist);
		return "board/view";
	}
	
	
	@RequestMapping(value = "mod", method=RequestMethod.POST, produces="appliction/json")
	public @ResponseBody String mod(@RequestBody HashMap<String, String> info) throws Exception {
		String pw = info.get("pw");
		int bno = Integer.parseInt(info.get("bno"));
		BoardVO vo = boardSVC.view(bno);
		String result = null;
		if(vo.getPw().equals(pw)) {
			result = "success";
		}else {
			result = "fail";
		}
		return result;
	}
	
	@RequestMapping(value = "domod", method=RequestMethod.POST)
	public String domod(BoardVO vo) {
		String content = ((String)vo.getContent().replace("\r\n", "<br>"));
		vo.setContent(content);
		boardSVC.domod(vo);
		return "redirect:list";
	}
	
	@RequestMapping(value = "dodel", method=RequestMethod.POST, produces="application/json")
	public @ResponseBody int dodel(@RequestBody HashMap<String, String> info) {
		int bno = Integer.parseInt(info.get("bno"));
		System.out.println(bno);
		return boardSVC.dodel(bno);
	}
	
	// 원글 끝
	
	
	
	
	// 댓글 부분
	
	@RequestMapping(value = "replyAdd", method=RequestMethod.POST)
	public @ResponseBody Object replyAdd(@RequestBody HashMap<String, Object> param) {
		Map<String,Object> result = new HashMap<String,Object>();
		int ret = replySVC.replyAdd(param);
		if(ret > 0) {
			result.put("code", "OK");
			result.put("message", "등록되었습니다.");
		}else {
			result.put("code", "FAIL");
			result.put("message", "등록에 실패했습니다.");
		}
		return result;
	}
	
	@RequestMapping(value = "replyCheck", method=RequestMethod.POST)
	public @ResponseBody Object replyCheck(@RequestBody HashMap<String,Object> param) {
		System.out.println(param);
		String pw = replySVC.replyCheck(param);
		Map<String,Object> result = new HashMap<String,Object>();
		if(pw.equals(param.get("pw"))) {
			result.put("code", "OK");
		}else {
			result.put("code", "FAIL");
		}
		return result;
	}
	
	@RequestMapping(value = "replyMod", method=RequestMethod.POST)
	public @ResponseBody Object replyMod(@RequestBody HashMap<String, Object> param) {
		Map<String,Object> result = new HashMap<String,Object>();
		int ret = replySVC.replyMod(param);
		if(ret >= 1) {
			result.put("code", "OK");
		}else {
			result.put("code", "FAIL");
		}
		return result;
	}
	
	@RequestMapping(value = "replyDel", method=RequestMethod.POST)
	public @ResponseBody Object replyDel(@RequestBody HashMap<String,Object> param) {
		Map<String,Object> result = new HashMap<String,Object>();
		int ret = replySVC.replyDel(param);
		if(ret >= 1) {
			result.put("code", "OK");
		}else {
			result.put("code", "FAIL");
		}
		return result;
	}
	
	// 댓글 끝
}
