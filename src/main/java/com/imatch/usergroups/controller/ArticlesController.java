package com.imatch.usergroups.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/articles")
public class ArticlesController {
	@RequestMapping(value = "/createArticle", method = RequestMethod.GET)
	public String createArticle(){
		return "CreateArticle";
	}
}
