package com.imatch.usergroups.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.imatch.usergroups.abs.Bouncer;
import com.imatch.usergroups.entity.LoginViminer;
import com.imatch.usergroups.entity.Viminer;

@Controller
public class UsersManagerController extends WebMvcConfigurerAdapter {

	private Bouncer bouncer;

	@Autowired
	public UsersManagerController(Bouncer bouncer) {
		this.bouncer = bouncer;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("user", new LoginViminer());
		return "login";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {
		model.addAttribute("viminer", new Viminer());
		return "register";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@Valid @ModelAttribute("user") LoginViminer user, BindingResult errors, Model model) {
		if (errors.hasErrors()){
			model.addAttribute("user", user);
			return "login";
		}
		else
			return "redirect:articles/articlesList";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@Valid @ModelAttribute("viminer") Viminer viminer, BindingResult errors, Model model) {
		String msg = Bouncer.BAD_NEWS;
		if (errors.hasErrors()) {
			model.addAttribute(msg);
			return "register";
		}
		msg = bouncer.validateUser(viminer);
		if (msg != Bouncer.VALIDATION_PASS) {
			model.addAttribute(msg);
			return "register";
		}
		msg = bouncer.addUser(viminer);
		if (msg != Bouncer.VALIDATION_PASS) {
			model.addAttribute(msg);
			return "register";
		}
		model.addAttribute("nickname", viminer.getNickname());
		model.addAttribute("userId", viminer.getUserId());
		return "home";
	}
}
