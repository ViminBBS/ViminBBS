package com.imatch.Controller;


import org.junit.Test;
import org.springframework.test.web.servlet.MockMvc;

import com.imatch.usergroups.abs.Bouncer;
import com.imatch.usergroups.controller.UsersManagerController;
import com.imatch.usergroups.entity.LoginViminer;
import com.imatch.usergroups.entity.Viminer;

import static org.springframework.test.web.servlet.setup.MockMvcBuilders.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.mockito.Mockito.*;

public class UserManagerControllerTest {
	@Test
	public void login() throws Exception{
		LoginViminer raw1 = new LoginViminer("","");
		LoginViminer raw2 = new LoginViminer("user", "123");
		LoginViminer raw3 = new LoginViminer("username", "password");
		LoginViminer raw4 = new LoginViminer("ddddddd", "password");
		LoginViminer raw5 = new LoginViminer("username", "passwddd");
		Bouncer mockBoucer = mock(Bouncer.class);
		UsersManagerController controller = new UsersManagerController(mockBoucer);
		MockMvc mockMvc = standaloneSetup(controller).build();

		when(mockBoucer.validateUserAndPwd(raw1)).thenReturn(Bouncer.BAD_USER_NAME);
		mockMvc.perform(post("/usermanager/login/").param("userName", "").param("password", ""))
		.andExpect(view().name("login"))
		.andExpect(model().attributeExists("msg"))
		.andExpect(model().attribute("msg", Bouncer.BAD_USER_NAME));
		

		when(mockBoucer.validateUserAndPwd(raw2)).thenReturn(Bouncer.BAD_USER_NAME);
		mockMvc.perform(post("/usermanager/login/").param("userName", "user").param("password", "123"))
		.andExpect(view().name("login"))
		.andExpect(model().attributeExists("msg"))
		.andExpect(model().attribute("msg", Bouncer.BAD_USER_NAME));
		

		when(mockBoucer.validateUserAndPwd(raw3)).thenReturn(Bouncer.VALIDATION_PASS);
		mockMvc.perform(post("/usermanager/login/").param("userName", "username")
				.param("password", "password"))
		.andExpect(view().name("home"))
		.andExpect(model().hasNoErrors());

		when(mockBoucer.validateUserAndPwd(raw4)).thenReturn(Bouncer.INCORRECT_USER_NAME);
		mockMvc.perform(post("/usermanager/login/").param("userName", "ddddddd").param("password", "password"))
		.andExpect(view().name("login"))
		.andExpect(model().hasNoErrors())
		.andExpect(model().attributeExists("msg"))
		.andExpect(model().attribute("msg", Bouncer.INCORRECT_USER_NAME));

		when(mockBoucer.validateUserAndPwd(raw5)).thenReturn(Bouncer.INCORRECT_PASSWORD);
		mockMvc.perform(post("/usermanager/login/").param("userName", "username").param("password", "paswddd"))
		.andExpect(view().name("login"))
		.andExpect(model().hasNoErrors())
		.andExpect(model().attributeExists("msg"))
		.andExpect(model().attribute("msg", Bouncer.INCORRECT_PASSWORD));
	}
	
	@Test
	public void register() throws Exception{
		Viminer vim1 = new Viminer("username","password","vimin");
		Bouncer bouncer = mock(Bouncer.class);
		UsersManagerController controller = new UsersManagerController(bouncer);
		
		
		MockMvc mockMvc = standaloneSetup(controller).build();
		when(bouncer.validateUser(vim1)).thenReturn(Bouncer.VALIDATION_PASS);
		when(bouncer.addUser(vim1)).thenReturn(Bouncer.VALIDATION_PASS);
		
		mockMvc.perform(post("/usermanager/register/").param("userId", "username")
				.param("password", "password")
				.param("nickname", "vimin"))
		.andExpect(view().name("home/" + vim1.getUserId()))
		.andExpect(model().attributeExists("nickname"))
		.andExpect(model().attribute("nickname", vim1.getNickname()));
		
		Viminer vim2 = new Viminer("usern","ddd","dddd");
		when(bouncer.validateUser(vim2)).thenReturn(Bouncer.SYS_ERR);
		when(bouncer.addUser(vim2)).thenReturn(Bouncer.SYS_ERR);
		mockMvc.perform(post("/usermanager/register/")
				.param("userId", "usern")
				.param("password", "ddd")
				.param("nickname", "dddd"))
		.andExpect(view().name("register"))
		.andExpect(model().attributeExists("string"))
		.andExpect(model().attribute("string", Bouncer.SYS_ERR));
	}
}
