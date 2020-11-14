package com.ms.cook.recipe.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.inject.Inject;

import org.apache.commons.io.FilenameUtils;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ms.cook.recipe.svc.RecipeSVC;
import com.ms.cook.recipe.vo.RecipeVO;

@Controller
@RequestMapping("/recipe/**")
public class RecipeController {
	@Inject
	RecipeSVC recipeSVC;
	
	/* 페이지 이동 */

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(RecipeVO vo, Model model) {
		List<RecipeVO> list = recipeSVC.RecipeList();
		model.addAttribute("list",list);
		return "recipe/list";
	}

	@RequestMapping(value = "/addForm", method = RequestMethod.GET)
	public String addForm() {
		return "recipe/addForm";
	}
	
	@RequestMapping(value = "/recipeView/{rno}" , method = RequestMethod.GET)
	public String recipeView(@PathVariable("rno") int rno, RecipeVO vo, Model model) {
		vo = recipeSVC.viewRecipe(rno);
		model.addAttribute("vo",vo);
		return "recipe/recipeView";
	}
	@RequestMapping(value = "/home3", method = RequestMethod.GET)
	public String home3(Locale locale, Model model) {
		System.out.println("home3");
		RecipeVO vo = new RecipeVO();
		vo = recipeSVC.home3();
		model.addAttribute("vo",vo);
		return "main/home3";
	}
	@RequestMapping(value = "/home2", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		return "main/home2";
	}


	/* 페이지 이동 끝 */

	@RequestMapping(value = "doAdd", method = RequestMethod.POST)
	public String doAdd(RecipeVO vo) throws IllegalStateException, IOException {
		// 파일 업로드 처리
		String fileName = null;
		ArrayList<MultipartFile> files = new ArrayList<MultipartFile>();
		ArrayList<String> filelist = new ArrayList<String>();
		files.add(vo.getImg1_t());
		files.add(vo.getImg2_t());
		files.add(vo.getImg3_t());
		files.add(vo.getImg4_t());
		files.add(vo.getImg5_t());
		for(MultipartFile i : files) {
			if(!i.isEmpty()) {
				String originalFileName = i.getOriginalFilename();
				String ext = FilenameUtils.getExtension(originalFileName); //확장자 구함
				UUID uuid = UUID.randomUUID();
				fileName = uuid + "." + ext;
				i.transferTo(new File("C:\\cookimgs\\" + fileName));
				filelist.add(fileName);
			}
		}
		String way = ((String)vo.getWay().replace("\r\n", "<br>"));
		vo.setImg1(filelist.get(0));
		vo.setImg2(filelist.get(1));
		vo.setImg3(filelist.get(2));
		vo.setImg4(filelist.get(3));
		vo.setImg5(filelist.get(4));
		vo.setWay(way);
		recipeSVC.add(vo);
		return "redirect:list";
	}
	
	@RequestMapping(value="search", method=RequestMethod.POST, produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public @ResponseBody Object search(@RequestBody HashMap<String, Object> param) {
		List<RecipeVO> list = new ArrayList<RecipeVO>();
		list = recipeSVC.search(param);
		for(int i=0; i<list.size(); i++) {
			System.out.println(list.get(i).toString());
		}
		return list;
	}
}
