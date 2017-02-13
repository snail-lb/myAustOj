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
<link
	href="${pageContext.request.contextPath}/static/css/bootstrap-table.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/app.css"
	rel="stylesheet"> 
	
</head>
<body>
	<!--头部开始-->
	<header>
		<!-- Static navbar -->
		<div class="navbar navbar-lg navbar-default" role="navigation"
			id="nav">
			<%@include file="menu.jsp"%>
		</div>
	</header>
	<!--头部结束-->

	<!--通知栏开始,主要用户发布一些通知-->
	<%-- <div class="tips">
		<%@include file="../../common/notify.jsp"%>
	</div> --%>
	<!--通知栏结束-->


	<!--主体开始-->
	<div class="articlepage common-page">
		<div class="row">
			<div class="col-md-10 col-md-offset-1" style="border:3px;">
				<div class="col-md-2">
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="${pageContext.request.contextPath}/admin">题目管理</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/adminArticle">文章管理</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/adminUser">用户管理</a></li>
					</ul>
				</div>
				
				<div class="col-md-10">
					<h4 class="text-center" id="textTitle">题目列表</h4>
					<!-- <div id="problem-div" style="display:block;"> -->
						<div id="toolbar" class="btn-group">
							<button id="btn_add" type="button" class="btn btn-default">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
							</button>
							<button id="btn_edit" type="button" class="btn btn-default">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
							</button>
							<button id="btn_delete" type="button" class="btn btn-default">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
							</button>
						</div>
						<table class="table-bordered" width="100%" id="problem-table"
							style="text-align: center;"></table>

				</div>

			</div>
			</div>
		</div>
	</div>
	<!--主体结束-->




	<footer>
		<%@include file="../../common/footer.jsp"%>
	</footer>


	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">新增</h4>
				</div>
				<div class="modal-body">

					<div class="form-group">
						<label for="txt_departmentname">题目名称</label> <input type="text"
							name="txt_departmentname" class="form-control"
							id="txt_departmentname" placeholder="题目名称">
					</div>
					<div class="form-group">
						<label for="txt_parentdepartment">题目描述</label> <input type="text"
							name="txt_parentdepartment" class="form-control"
							id="txt_parentdepartment" placeholder="题目描述">
					</div>
					<div class="form-group">
						<label for="txt_parentdepartment">题目类别</label> <input type="text"
							name="txt_parentdepartment" class="form-control"
							id="txt_parentdepartment" placeholder="题目类别">
					</div>
					<div class="form-group">
						<label for="txt_departmentlevel">输入描述</label> <input type="text"
							name="txt_departmentlevel" class="form-control"
							id="txt_departmentlevel" placeholder="输入描述">
					</div>
					<div class="form-group">
						<label for="txt_statu">输出描述</label> <input type="text"
							name="txt_statu" class="form-control" id="txt_statu"
							placeholder="输出描述">
					</div>
					<div class="form-group">
						<label for="txt_statu">样例输入</label> <input type="text"
							name="txt_statu" class="form-control" id="txt_statu"
							placeholder="样例输入">
					</div>
					<div class="form-group">
						<label for="txt_statu">样例输出</label> <input type="text"
							name="txt_statu" class="form-control" id="txt_statu"
							placeholder="样例输出">
					</div>
					<div class="form-group">
						<label for="txt_statu">提示</label> <input type="text"
							name="txt_statu" class="form-control" id="txt_statu"
							placeholder="提示">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
					</button>
					<button type="button" id="btn_submit" class="btn btn-primary"
						data-dismiss="modal">
						<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
					</button>
				</div>
			</div>
		</div>
	</div>



	<!--script引入-->
	<script
		src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/flat-ui.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/bootstrap-table.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/bootstrap-table-zh-CN.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/app.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/table-demo.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/admin.js"></script>
</body>
</html>