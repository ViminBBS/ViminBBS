<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>登录微米BBS</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<!-- Place favicon.ico in the root directory -->
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/main.css">
<script src="<c:url value="/resources/js/vendor/modernizr-2.8.3.min.js" />"></script>
<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" />
<style type="text/css">
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	max-width: 300px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"], .form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}

.error{
	color:red;
}
</style>
<script src="<c:url value="/resources/js/Util.js" />"></script>
<script type="text/javascript">
	function validate() {
		var inputUserId = $("#userId");
		if (inputUserId.val().trim() == ""
				|| !isCharNum(inputUserId.val().trim())
				|| inputUserId.val().length < 6
				|| inputUserId.val().length > 16) {
			inputUserId.tooltip('show');
			return false;
		} else {
			inputUserId.tooltip('hide');
		}
		var inputPwd = $('#pwd');
		if (inputPwd.val() == "" || inputPwd.val().length == 0) {
			inputPwd.tooltip('show');
			return false;
		} else {
			inputPwd.tooltip('hide');
		}
		$("#login").submit();
	}
</script>
<link href="<c:url value="/resources/css/bootstrap-responsive.min.css" />" rel="stylesheet" />
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="<c:url value="/resources/assets/js/html5shiv.js" />"></script>
    <![endif]-->
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<c:url value="/resources/assets/ico/apple-touch-icon-144-precomposed.png" />">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="<c:url value="/resources/assets/ico/apple-touch-icon-114-precomposed.png" />">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<c:url value="/resources/assets/ico/apple-touch-icon-72-precomposed.png" />">
<link rel="apple-touch-icon-precomposed"
	href="<c:url value="/resources/assets/ico/apple-touch-icon-57-precomposed.png" />">
<link rel="shortcut icon" href="<c:url value="/resources/assets/ico/favicon.png" />">
</head>
<body>
	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
	<!-- Add your site or application content here -->
	<div class="container">
		<sf:form class="form-signin" method="post" commandName="user" action="/myapp/login" id="login">
			<h2 class="form-signin-heading">请登录</h2>
			<sf:input path="userName" type="text" name="userName" data-toggle="tooltip"
				data-placement="bottom" data-trigger="manual" title="请输入合法用户名"
				id="userId" class="input-block-level" placeholder="用户名或电子邮箱地址" />
			<sf:errors path="userName" cssClass="error" />
			<sf:password path="password" name="password" data-toggle="tooltip"
				data-placement="bottom" data-trigger="manual" title="请输入密码" id="pwd"
				class="input-block-level" placeholder="密码" /> 
			<sf:errors path="password" cssClass="error" />
			<sf:label
				class="checkbox" path=""> 
			<sf:checkbox path=""
				onmouseover="$(this).tooltip('show');" value="remember-me"
				name="remember" id="remember" data-toggle="tooltip"
				data-trigger="hover" data-placement="right" title="公共电脑请勿勾选此项" />
				记住我
			</sf:label>
			<button class="btn btn-large btn-primary" type="submit"
				onclick="validate(); return false;">登录</button>
			<a class="btn btn-large" href="/myapp/register">注册</a>
		</sf:form>
	</div>
	<!-- /container -->
	<!--End of content-->
	<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write(
								'<script src="js/vendor/jquery-1.12.0.min.js"><\/script>')
	</script>
	<script src="<c:url value="/resources/js/plugins.js" />"></script>
	<script src="<c:url value="/resources/js/main.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
	<script>
		(
								function(b, o, i, l, e, r) {
									b.GoogleAnalyticsObject = l;
									b[l] || (b[l] = function() {
										(b[l].q = b[l].q || []).push(arguments)
									});
									b[l].l = +new Date;
									e = o.createElement(i);
									r = o.getElementsByTagName(i)[0];
									e.src = 'https://www.google-analytics.com/analytics.js';
									r.parentNode.insertBefore(e, r)
								}(window, document, 'script', 'ga'));
		ga('create', 'UA-XXXXX-X', 'auto');
		ga('send', 'pageview');
	</script>
</body>
</html>
