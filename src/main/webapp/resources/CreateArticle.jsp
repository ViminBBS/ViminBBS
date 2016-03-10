<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
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
</script>
</head>
<body>
		<script id="editor" type="text/plain"
			style="width: 100%; height: 500px;">
        </script>
		<button type="button" class="btn btn-default"
			onclick="document.getElementById('l').innerHTML = ue.getContent();">预览</button>
		<button type="button" class="btn btn-primary">提交</button>
	
	<div id="l" style="margin-top:20px;"></div>
</body>
</html>