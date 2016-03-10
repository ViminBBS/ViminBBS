package com.imatch.articles.controller;

import java.util.Date;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.imatch.articles.entity.Article;

@Controller
@RequestMapping(value = "/articles")
public class ArticlesController {
	@RequestMapping(value = "/createArticle", method = RequestMethod.GET)
	public String createArticle(Model model){
		model.addAttribute("article", new com.imatch.articles.entity.Article());
		return "CreateArticle";
	}
	
	@RequestMapping(value = "/articlesList", method = RequestMethod.GET)
	public String ArticlesList(){
		return "Articles";
	}
	
	@RequestMapping(value = "/article", method = RequestMethod.POST)
	public ModelAndView Article(Integer id){
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping(value = "/createArticle", method = RequestMethod.POST)
	public String createArticle(@Valid @ModelAttribute("article") Article article, BindingResult result, Model model){
		if(result.hasErrors()){
			model.addAttribute("article", article);
			return "CreateArticle";
		}
		article.setCreateTime(new Date());
		return "redirect:/articles/articlesList";
	}
}
