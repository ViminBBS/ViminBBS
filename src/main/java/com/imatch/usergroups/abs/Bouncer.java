package com.imatch.usergroups.abs;

import com.imatch.usergroups.entity.LoginViminer;
import com.imatch.usergroups.entity.Viminer;

public interface Bouncer {
	//shared
	public final static String BAD_NEWS = "验证不通过";
	public final static String SYS_ERR = "系统错误";
	public final static String VALIDATION_PASS = "验证通过";
	
	//login
	public final static String BAD_USER_NAME = "用户名不合法";
	public final static String INCORRECT_USER_NAME = "用户名不存在";
	public final static String INCORRECT_PASSWORD = "密码错误";
	public final static String UNKNOWN_ERR = "未知错误";
	
	public String validateUserAndPwd(LoginViminer user);
	public String validateFormat(LoginViminer user);
	
	//register
	public final static String BAD_PASSWORD = "密码不合法";
	public final static String BAD_RE_PASSWORD = "两次密码不一致";
	public final static String BAD_NICKNAME = "昵称不能为空";
	public final static String BAD_AGE = "年龄要在1到99岁之间";
	public final static String BAD_SEX = "性别不能为空";
	public final static String BAD_EMAIL = "email不合法";
	public final static String BAD_YEAR = "年份在1900到2050之间";
	public final static String BAD_MONTH = "月份在1到12之间";
	public final static String BAD_DAY = "日期在1到31之间";
	
	public String validateUser(Viminer user);
	public String addUser(Viminer user);
}
