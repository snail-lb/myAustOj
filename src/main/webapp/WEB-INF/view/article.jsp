<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>文章</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/static/images/favicon.ico">
<link
	href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/css/flat-ui.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/app.css"
	rel="stylesheet">
<link
	href="http://cdn.bootcss.com/highlight.js/8.0/styles/monokai_sublime.min.css"
	rel="stylesheet">

<style type="text/css">
    @import "${pageContext.request.contextPath }/static/public/stylesheets/vendor/font.css";
    @import "${pageContext.request.contextPath }/static/public/stylesheets/vendor/markdown.css";
    @import "${pageContext.request.contextPath }/static/public/stylesheets/emoji/nature.css";
    @import "${pageContext.request.contextPath }/static/public/stylesheets/emoji/object.css";
    @import "${pageContext.request.contextPath }/static/public/stylesheets/emoji/people.css";
    @import "${pageContext.request.contextPath }/static/public/stylesheets/emoji/place.css";
    @import "${pageContext.request.contextPath }/static/public/stylesheets/emoji/Sysmbols.css";
    @import "${pageContext.request.contextPath }/static/public/stylesheets/emoji/twemoji.css";
    @import "${pageContext.request.contextPath }/static/public/stylesheets/vendor/font-awesome.css";
    @import "${pageContext.request.contextPath }/static/public/stylesheets/vendor/sunburst.css";
</style>

<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/static/public/javascripts/vendor/underscore/underscore-min.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/static/public/javascripts/vendor/jquery/jquery-2.1.3.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/static/public/javascripts/vendor/highlight/highlight.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/static/public/javascripts/vendor/markdown/he.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/static/public/javascripts/vendor/markdown/marked.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/static/public/javascripts/vendor/markdown/to-markdown.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/static/public/javascripts/vendor/markdown/jsHtmlToText.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/static/public/javascripts/vendor/markdown/tab.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/static/public/javascripts/vendor/markdown/config.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/static/public/javascripts/vendor/markdown/emoji.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/static/public/javascripts/vendor/markdown/bootstrap-markdown.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/static/public/javascripts/vendor/markdown/locale/bootstrap-markdown.zh.js"></script>

</head>
<body>
	<!--头部开始-->
	<header>
		<!-- Static navbar -->
		<div class="navbar navbar-lg navbar-default" role="navigation"
			id="nav">
			<%@include file="../common/menu.jsp"%>
		</div>
	</header>
	<!--头部结束-->
	<!--通知栏开始,主要用户发布一些通知-->
	<div class="tips">
		<%@include file="../common/notify.jsp"%>
	</div>
	<!--通知栏结束-->
	<!--主体开始-->
	<div class="articlepage common-page">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="col-md-9">
					<!--主面板-->
					<section class="problemsection animated fadeInUp">
						<c:if test="${error == null}">
							<div class="title">
								<h5 class="text-center">${article.title}</h5>
								<p class="text-center">
									<span>作者:${article.user.nickname}&nbsp;&nbsp;</span><span>&nbsp;&nbsp;分类:${article.catelog}</span>
								</p>
							</div>
							<%-- <p style="text-indent: 2em">${article.content}</p> --%>
							
								<!-- 文章具体内容 -->
								<p id="content" style="display: none;text-indent: 2em;">${article.content}</p>
								<p class="panel-body" id="articleContent" text-indent: 2em></p>
								<p id="markdown" style="display: none;">${article.markdown}</p>
							
						</c:if>
						<c:if test="${error != null}">
							<div class="title">
								<h5 class="text-center text-danger">${error}</h5>
							</div>
						</c:if>
					</section>
				</div>
				<div class="col-md-3 widget animated fadeInRight">
					<%@include file="../common/aside_person.jsp"%>
					<%@include file="../common/aside_article.jsp"%>
					<%@include file="../common/aside_tags.jsp"%>
					<%@include file="../common/aside_cate.jsp"%>
				</div>
			</div>
		</div>
	</div>
	<!--主体结束-->
	<footer>
		<%@include file="../common/footer.jsp"%>
	</footer>

	<!--script引入-->
	<script
		src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/flat-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/app.js"></script>
	<script src="http://cdn.bootcss.com/highlight.js/8.0/highlight.min.js"></script>
	<script>hljs.initHighlightingOnLoad();</script>
	<script type="text/javascript">
	$(document).ready(function(){
		var markdown = $('#markdown').text();
		if(markdown == "1"){
			var ac = $('#content').text();
			var articleContent = $('#articleContent');
			var test = marked(ac);
			articleContent.html(test);
		}else{
			$('#content').css("display","inline");
		}
	});
</script>
</body>
</html>