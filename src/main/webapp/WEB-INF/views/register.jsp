<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<html class="no-js" lang="">
<head>
<script src="<c:url value="/resources/js/Util.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/Register.js" />"></script>
<link href="<c:url value="/resources/css/register.css" />"
	rel="stylesheet" />
</head>
<div id="wrap">
	<!-- Begin page content -->
	<div class="container">
		<sf:form class="form-signin" id="register" method="post"
			action="/myapp/register/" commandName="viminer">
			<h1 class="form-signin-heading">
				<s:message code="register.welcome" />
			</h1>
			<div class="panel panel-danger">
				<sf:errors path="*" element="div" cssClass="error panel-body" />
			</div>
			<div class="form-group">
				<sf:label path="userId" for="inputUserId">
					<s:message code="register.username"></s:message>
				</sf:label>
				<sf:input path="userId" id="inputUserId" placeholder="请输入用户名"
					data-toggle="tooltip" data-placement="bottom" data-trigger="manual"
					cssErrorClass="has-error form-control" class="form-control" />
			</div>
			<div class="form-group">
				<sf:label path="password" class="control-label"
					cssErrorClass="has-error control-label" for="inputPwd">输入您的密码：</sf:label>
				<div class="controls">
					<sf:password path="password" id="inputPwd" placeholder="请输入密码"
						cssErrorClass="has-error form-control" class="form-control" />
					<span class="icon-asterisk"></span>
				</div>
			</div>
			<div class="form-group">
				<sf:label path="repassword" class="control-label"
					cssErrorClass="has-error control-label" for="inputPwd">再次输入您的密码：</sf:label>
				<div class="controls">
					<sf:password path="repassword" onkeyup="validePwd();"
						id="inputRePwd" placeholder="请输入密码" data-toggle="tooltip"
						data-placement="bottom" data-trigger="manual" title="两次密码不一致"
						cssErrorClass="has-error form-control" class="form-control" />
					<span class="icon-asterisk"></span>
				</div>
			</div>
			<div class="form-group">
				<sf:label path="nickname" class="control-label"
					cssErrorClass="has-error control-label" for="inputNickName">输入您的昵称：</sf:label>
				<div class="controls">
					<sf:input path="nickname" id="inputNickName" placeholder="请输入昵称"
						data-toggle="tooltip" data-placement="bottom"
						data-trigger="manual" cssErrorClass="has-error form-control"
						class="form-control" />
					<span class="icon-asterisk"></span>
				</div>
			</div>
			<div class="form-group">
				<sf:label path="age" class="control-label"
					cssErrorClass="has-error control-label" for="inputAge">输入您的年龄：</sf:label>
				<div class="controls">
					<sf:input path="age" id="inputAge" placeholder="请输入年龄"
						data-trigger="manual" data-toggle="tooltip"
						data-placement="bottom" cssErrorClass="has-error form-control"
						class="form-control" />
					<span class="icon-asterisk"></span>
				</div>
			</div>
			<sf:label path="sex" class="control-label"
				cssErrorClass="has-error control-label" for="inputSex">选择您的性别：</sf:label>
			<sf:label path="sex" class="radio-inline"
				cssErrorClass="radio-inline has-error">
				<sf:radiobutton path="sex" value="男" /> 男 <span
					class="icon-asterisk"></span>
			</sf:label>
			<sf:label path="sex" class="radio-inline">
				<sf:radiobutton path="sex" id="inputSex" data-toggle="tooltip"
					data-trigger="manual" data-placement="top" value="女" /> 女 <span
					class="icon-asterisk"></span>
			</sf:label>
			<div class="form-group">
				<sf:label path="email" class="control-label"
					cssErrorClass="has-error control-label" for="inputEmail">请输入您的Email：</sf:label>
				<div class="controls">
					<sf:input type="email" path="email" id="inputEmail"
						placeholder="输入您的Email" data-toggle="tooltip"
						data-trigger="manual" data-placement="bottom"
						cssErrorClass="has-error form-control" class="form-control" />
					<span class="icon-asterisk"></span>
				</div>
			</div>
			<div class="form-group">
				<sf:label path="year" class="control-label"
					cssErrorClass="has-error control-label" for="inputBirthday">请输入您的生日：</sf:label>
				<div class="row">
					<div class="col-xs-2">
						<sf:input class="input-small form-control" placeholder="年XXXX"
							path="year" id="inputYear" data-trigger="manual"
							title="请填入1900到2050的数字" data-toggle="tooltip"
							data-placement="bottom" />
					</div>
					<div class="col-xs-2">
						<sf:input class="input-small form-control" placeholder="月XX"
							path="month" id="inputMonth" data-trigger="manual"
							title="请填入1到12的数字" data-toggle="tooltip" data-placement="bottom" />
					</div>
					<div class="col-xs-2">
						<sf:input class="input-small form-control" placeholder="日XX"
							path="day" id="inputDay" data-trigger="manual" title="请填入1到31的数字"
							data-toggle="tooltip" data-placement="bottom" />
					</div>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<button type="button" class="btn btn-large btn-primary"
						onclick="validate(); return false;">注册</button>
					<button type="reset" class="btn btn-large">重新填写</button>
				</div>
			</div>
		</sf:form>
	</div>
</div>
<!-- model code-->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">×</button>
		<h3 id="myModalLabel">本站须知</h3>
	</div>
	<div class="modal-body">
		<p>1. 不得发布非法暴力色情信息</p>
		<p>2. 不得侵犯他人版权的信息</p>
		<p>3. 本站文章均为个人所有，转载请注明出处</p>
	</div>
	<div class="modal-footer">
		<button class="btn" data-dismiss="modal">拒绝</button>
		<button class="btn btn-primary" onclick="$('#register').submit();">同意</button>
	</div>
</div>
</html>
