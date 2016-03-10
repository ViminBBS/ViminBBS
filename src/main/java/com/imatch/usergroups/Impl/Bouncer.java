package com.imatch.usergroups.Impl;

import org.springframework.stereotype.Component;

import com.imatch.usergroups.entity.LoginViminer;
import com.imatch.usergroups.entity.Viminer;

@Component
public class Bouncer implements com.imatch.usergroups.abs.Bouncer {

	@Override
	public String validateUserAndPwd(LoginViminer user) {
		// TODO Auto-generated method stub
		return Bouncer.VALIDATION_PASS;
	}

	@Override
	public String validateFormat(LoginViminer user) {
		// TODO Auto-generated method stub
		return Bouncer.VALIDATION_PASS;
	}

	@Override
	public String validateUser(Viminer user) {
		// TODO Auto-generated method stub
		return Bouncer.VALIDATION_PASS;
	}

	@Override
	public String addUser(Viminer user) {
		// TODO Auto-generated method stub
		return Bouncer.VALIDATION_PASS;
	}

}
