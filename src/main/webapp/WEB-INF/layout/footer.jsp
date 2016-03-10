<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html class="no-js" lang="">
<head>
<link href="<s:url value="/resources/css/site.css" />" rel="stylesheet" />
<script
	src="<s:url value = "/resources/js/vendor/modernizr-2.8.3.min.js" />"></script>
<script src="<s:url value = "/resources/js/angular.1.4.4.min.js" />"></script>
<script src="<s:url value = "/resources/js/rtm.compiled.js" />"></script>
<script src="<s:url value = "/resources/js/jquery-1.12.0.js" />"></script>
</head>
<body>
	<footer class="rtm-footer">
		<div class="container">
			<div class="rtm-footer-milky">
				<span> Meow! </span>
			</div>
			<div class="rtm-footer-nav">
				<div>
					<ul class="nav nav-pills nav-stacked">
						<li class="rtm-footer-nav-heading">Company</li>
						<li><a href="/about/">关于</a></li>
						<li><a href="/about/jobs.rtm">Jobs</a></li>
						<li><a href="/about/press.rtm">媒体</a></li>
						<li><a href="http://blog.rememberthemilk.com/">博客</a></li>
					</ul>
					<ul class="nav nav-pills nav-stacked">
						<li class="rtm-footer-nav-heading">Product</li>
						<li><a href="/tour/">Tour</a></li>
						<li><a href="/new/">What&#039;s New</a></li>
						<li><a href="/services/">Download Apps</a></li>
						<li><a href="/integrations/">Integrations</a></li>
						<li><a href="/upgrade/">升级</a></li>
					</ul>
				</div>
				<div>
					<ul class="nav nav-pills nav-stacked">
						<li class="rtm-footer-nav-heading">Community</li>
						<li><a href="/forums/">论坛</a></li>
						<li><a href="/services/tester/">Tester Program</a></li>
						<li><a href="/dairy/">The Dairy</a></li>
						<li><a href="/services/translate/">翻译</a></li>
						<li><a href="/services/api/">API</a></li>
					</ul>
					<ul class="nav nav-pills nav-stacked rtm-footer-nav-shifted">
						<li class="rtm-footer-nav-heading">Support</li>
						<li><a href="/help/">Help Center</a></li>
						<li><a href="/help/guide/">Get Started</a></li>
						<li><a href="/help/tips/">Tips &amp; Tricks</a></li>
						<li><a href="http://status.rememberthemilk.com/">Status</a></li>
						<li><a href="/help/contact/">联系我们</a></li>
					</ul>
				</div>
			</div>
			<div class="rtm-footer-legal">
				<div>
					<div class="btn-group dropup rtm-footer-language">
						<button class="btn btn-link btn-xs dropdown-toggle"
							data-toggle="dropdown">
							<i class="fa fa-globe"></i> <span
								class="rtm-footer-language-name"> 中文 (简体) </span> <i
								class="fa fa-angle-up"></i>
						</button>
						<!-- <ul class="dropdown-menu">
            <li><a href="?hl=de">Deutsch</a></li>
<li><a href="?hl=en-GB">English (UK)</a></li>
<li><a href="?hl=en-US">English (US)</a></li>
<li><a href="?hl=es">Español</a></li>
<li><a href="?hl=fr">Français</a></li>
<li><a href="?hl=it">Italiano</a></li>
<li><a href="?hl=nl">Nederlands</a></li>
<li><a href="?hl=sv">Svenska</a></li>
<li><a href="?hl=ja">日本語</a></li>

          </ul> -->
					</div>

				</div>
				<small class="rtm-footer-copyright">&copy; 2016 Remember The
					Milk</small>
				<ul class="rtm-footer-legal-links">
					<li><a href="/help/terms.rtm">Terms</a></li>
					<li>&nbsp;•&nbsp;</li>
					<li><a href="/help/privacy.rtm">Privacy</a></li>
					<li>&nbsp;•&nbsp;</li>
					<li><a href="/help/security.rtm">Security</a></li>
				</ul>
			</div>
		</div>
	</footer>

	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-176427-3' ]);
		_gaq.push([ '_trackPageview' ]);
		_gaq.push([ '_trackPageLoadTime' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
	<script>
		rtmLoad();
	</script>
	<script type="text/javascript">
		if ('_rtm_start_rtt' in window) {
			(function() {
				function b() {
					window[c] = (new Date).getTime();
					var a = document.createElement("script");
					a.setAttribute("type", "text/javascript");
					a.setAttribute("async", "true");
					a.setAttribute("src", document.location.protocol
							+ "//s4.rtmcdn.net/js/rtt.2.js");
					document.body.appendChild(a)
				}
				var c = "_rtm_end_rtt", d = window.onload;
				window.onload = typeof window.onload != "function" ? b
						: function() {
							d();
							b()
						}
			})();
		}
	</script>
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


