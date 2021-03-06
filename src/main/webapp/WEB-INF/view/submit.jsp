<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>我的提交</title>
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
<link
	href="${pageContext.request.contextPath}/static/css/bootstrap-table.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/monokai-sublime.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/app.css" rel="stylesheet">
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
	<div class="rankpage common-page">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="col-md-9">
					<!--主面板-->
					<section class="animated fadeInLeft">
						<strong>&nbsp;&nbsp;须知:</strong><br />
						<p class="page-text" style="text-indent: 2em;">如有问题请发送反馈告知</p>
						<h4 class="text-center">提交列表</h4>
						<table class="table-bordered text-center" width="80%"
							data-toggle="table" id="submit-table" style="text-align: center;">
							<!-- <thead>
								<tr>
									<th class="col-xs-1" data-field="solution_id">ID</th>
									<th class="col-xs-3" data-formatter="problemtitle"
										data-field="title">题目</th>
									<th class="col-xs-1" data-formatter="setmemory"
										data-field="memory">内存(M)</th>
									<th class="col-xs-1" data-field="time">时间(ms)</th>
									<th class="col-xs-1" data-formatter="setlanguage"
										data-field="language">语言</th>
									<th class="col-xs-2" data-formatter="setverdict"
										data-field="verdict">状态</th>
									<th class="col-xs-1" data-field="testcase">Pass</th>
									<th class="col-xs-1" data-formatter="setcontest"
										data-field="contest_id">竞赛号</th>
								</tr>
							</thead>
							<tbody>

							</tbody> -->
						</table>
					</section>
				</div>
				<div class="col-md-3 widget animated fadeInRight">
					<!--侧边栏,这样便于调整顺序-->
					<%@include file="../common/aside_person.jsp"%>
					<%@include file="../common/aside_cate.jsp"%>
					<%@include file="../common/aside_tags.jsp"%>
					<%@include file="../common/aside_article.jsp"%>
				</div>
			</div>
		</div>
	</div>
	<!-- 代码显示 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					源码
				</h4>
			</div>
			<div id='codeDiv' class="modal-body">
				<pre class="prettyprint">
					<code class="hljs" id="MyCode">
					</code>
				</pre>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-sm" data-dismiss="modal">关闭</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
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
	<script
		src="${pageContext.request.contextPath}/static/js/bootstrap-table.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/bootstrap-table-zh-CN.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/highlight.pack.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/app.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/table-demo.js"></script>
	<script>hljs.initHighlightingOnLoad();</script>
</body>
</html>