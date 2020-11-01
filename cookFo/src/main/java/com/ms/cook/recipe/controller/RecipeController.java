package com.ms.cook.recipe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/recipe/**")
public class RecipeController {
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list() {
		return "recipe/list";
	}
	
}
