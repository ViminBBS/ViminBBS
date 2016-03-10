package com.imatch.usergroups.entity;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class Viminer {
	@NotNull
	@Size(min = 6, max = 16, message = "{userId.size}")
	private String userId;
	
	@NotNull
	@Size(min = 6, max = 16, message = "{password.size}")
	private String password;
	
	@NotNull
	@Size(min = 6, max = 16, message = "{password.size}")
	private String repassword;
	
	@NotEmpty(message = "{nickname.msg}")
	private String nickname;
	
	@NotNull(message = "{age.msg}")
	@Max(value = 100, message = "{age.max}")
	@Min(value = 1, message = "{age.min}")
	private Integer age;
	
	@NotNull(message = "{sex.msg}")
	private String sex;
	
	@NotEmpty(message = "{email.msg}")
	@Email(message = "{email.invalid}")
	private String email;
	
	@NotNull(message = "{year.msg}")
	@Max(value = 2050, message = "{year.max}")
	@Min(value = 1900, message = "{year.min}")
	private Integer year;
	
	@NotNull(message = "{month.msg}")
	@Max(value = 12, message = "{month.max}")
	@Min(value = 1, message = "{month.min}")
	private Integer month;
	
	@NotNull(message = "{day.msg}")
	@Max(value = 31, message = "{day.max}")
	@Min(value = 1, message = "{day.min}")
	private Integer day;

	public Viminer(){
		
	}
	
	public Viminer(String userId, String password,String nickname){
		this.userId = userId;
		this.password = password;
		this.nickname = nickname;
	}
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Integer getMonth() {
		return month;
	}

	public void setMonth(Integer month) {
		this.month = month;
	}

	public Integer getDay() {
		return day;
	}

	public void setDay(Integer day) {
		this.day = day;
	}

	@Override
	public boolean equals(Object that) {
		return EqualsBuilder.reflectionEquals(this, that, "userId", "password");
	}

	@Override
	public int hashCode() {
		return HashCodeBuilder.reflectionHashCode(this, "userId", "password");
	}
}
