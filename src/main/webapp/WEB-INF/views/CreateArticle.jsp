<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE>
<html>
<head>
<link href="<c:url value="/resources/css/blog.css" />" rel="stylesheet" />
</head>
<body>
<script src="<s:url value = "/resources/js/jquery-1.12.0.js" />"></script>
<!-- 配置文件 -->
<script src="<c:url value="/resources/ueditor/ueditor.config.js" />"></script>
<!-- 编辑器源码文件 -->
<script src="<c:url value="/resources/ueditor/ueditor.all.min.js" />"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
	var ue = UE.getEditor('editor', {
		toolbars : [ [ 'fullscreen', 'source', '|', 'bold', 'italic',
				'underline', 'blockquote', '|', 'forecolor', 'backcolor',
				'insertorderedlist', 'insertunorderedlist', '|', 'paragraph',
				'fontfamily', 'fontsize', '|', 'justifyleft', 'justifycenter',
				'justifyright', '|', 'link', 'unlink', '|', 'simpleupload',
				'insertimage', 'attachment', 'insertcode', '|', 'horizontal',
				'inserttable', 'preview', 'searchreplace', '|', 'help' ] ]
	});
	setTimeout(function() {
		ue.execCommand('drafts');
	}, 500);
	function validate(){
		var title = $("#inputTitle").val();
		if(title.length == 0){
			alert("博文标题不能为空");
			return false;
		}
		if(!ue.hasContents()){
			alert("博文内容不能为空");
			return false;
		}else{
			$("#content").val(ue.getContent());
		}
		return false;
		$("#frm").submit();
	}
</script>
<!-- Begin page content -->
<div class="container">
	<div class="page-header">
		<h1>创建微米博文</h1>
	</div>
	<sf:form id="frm" commandName="article" action="CreateArticle.html">
		<div class="form-group">
			<sf:label for="inputTitle" path="title">
				博文标题
			</sf:label>
			<sf:input path="title" id="inputTitle" class="form-control" placeholder="请输入博文标题" />
		</div>
		<script id="editor" type="text/plain"
			style="width: 100%; height: 500px;">
        </script>
        <sf:hidden path="content" id="content" />
		<button type="button" class="btn btn-default"
			onclick="$('#t').html($('#inputTitle').val());document.getElementById('l').innerHTML = ue.getContent();">预览</button>
		<button type="button" class="btn btn-primary" onclick="validate();">提交</button>
	</sf:form>
		<h1 class="blog-post-title" style="margin-top:20px;" id="t"></h1>
	<div id="l">
	</div>
</div>
</body>
</html>