<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE>
<html>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar">
                <ul class="nav nav-sidebar">
                    <li class="active"><a href="#">Java <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">Java编程语言</a></li>
                    <li><a href="">面向对象设计模式</a></li>
                    <li><a href="">Java多线程</a></li>
                    <li><a href="">JUnit</a></li>
                </ul>
                <ul class="nav nav-sidebar">
                    <li class="active"><a href="#">Java开源框架 <span class="sr-only">(current)</span></a></li>
                    <li><a href="">Spring</a></li>
                    <li><a href="">Ibatis</a></li>
                    <li><a href="">Hibernate</a></li>
                    <li><a href="">Struts</a></li>
                </ul>
                <ul class="nav nav-sidebar">
                    <li class="active"><a href="#">数据库</a></li>
                    <li><a href="">MySQL</a></li>
                    <li><a href="">Oracle</a></li>
                    <li><a href="">SQL Server</a></li>
                    <li><a href="">Hadoop</a></li>
                    <li><a href="">NoSQL</a></li>
                    <li><a href="">Redis</a></li>
                </ul>
                <ul class="nav nav-sidebar">
                    <li class="active"><a href="#">Web前端技术</a></li>
                    <li><a href="">Ajax</a></li>
                    <li><a href="">ember.js</a></li>
                    <li><a href="">Node.js</a></li>
                    <li><a href="">BootStrap</a></li>
                </ul>
                <ul class="nav nav-sidebar">
                    <li class="active"><a href="#">服务器</a></li>
                    <li><a href="">Tomcat</a></li>
                    <li><a href="">Jetty</a></li>
                </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">技术面板</h1>

                <div class="row placeholders">
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="<c:url value="/resources/imgs/Java_logo.png" />" width="200" height="200" class="img-responsive" alt="Java">
                        <h4>Java Programming Language</h4>
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="<c:url value="/resources/imgs/BbVTflSP_400x400.png" />" width="200" height="200" class="img-responsive" alt="HTML5">
                        <h4>HTML5</h4>
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="<c:url value="/resources/imgs/Spring.sh-600x600.png" />" width="200" height="200" class="img-responsive" alt="Oracle">
                        <h4>Spring Framework</h4>
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="<c:url value="/resources/imgs/oracle_416x416.jpg" />" width="200" height="200" class="img-responsive" alt="Oracle">
                        <h4>Oracle DataBase</h4>
                    </div>
                </div>

                <h2 class="sub-header">文章列表</h2>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>标题</th>
                                <th>内容简示</th>
                                <th>作者</th>
                                <th>发表日期</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><a href = "<s:url value = "/login" />">article</a></td>
                                <td><a href="<c:url value="/login" />">article ...</a></td>
                                <td><a href="#">Vimin</a></td>
                                <td>2016-02-29</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="<c:url value="/resources/assets/js/vendor/jquery.min.js" />"><\/script>')
	</script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script
		src="<c:url value="/resources/assets/js/vendor/holder.min.js" />"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="<c:url value="/resources/assets/js/ie10-viewport-bug-workaround.js" />"></script>
	<!-- end content-->
	<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write(
								'<script src="js/vendor/jquery-1.12.0.min.js"><\/script>')
	</script>
	<script src="<c:url value="/resources/js/plugins.js" />"></script>
	<script src="<c:url value="/resources/js/main.js" />"></script>
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