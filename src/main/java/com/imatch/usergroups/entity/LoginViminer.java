package com.imatch.usergroups.entity;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

public class LoginViminer {
	
	public LoginViminer(String userName, String password) {
		this.userName = userName;
		this.password = password;
	}

	public LoginViminer() {
		
	}

	@NotNull
	@Size(min = 6, max = 16, message = "{username.size}")
	private String userName;

	@NotNull
	@Size(min = 6, max = 16, message = "{password.size}")
	private String password;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public boolean equals(Object that) {
		return EqualsBuilder.reflectionEquals(this, that, "userName", "password");
	}

	@Override
	public int hashCode(){
		return HashCodeBuilder.reflectionHashCode(this, "userName","password");
	}
}
