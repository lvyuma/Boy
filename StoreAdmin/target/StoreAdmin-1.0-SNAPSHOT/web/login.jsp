<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- ${pageContext.request.contextPath}或<%=request.getContextPath()%>取出来的就是/demo1,而"/"代表的含义就是http://localhost:8080 -->
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | 登录</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/plugins/toastr/toastr.min.css">
	<link rel="stylesheet" href="${basePath}/plugins/iCheck/minimal/blue.css">
	<link rel="stylesheet" href="${basePath}/lte/css/AdminLTE.min.css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body class="hold-transition login-page">

<div class="login-box">
	<div class="login-logo">
		<a href="#">"拼夕夕"后台管理系统</a>
	</div>
	<!-- /.login-logo -->

	<div class="login-box-body">
		<p class="login-box-msg">请输入您的账号密码进行登录</p>

		<form id="form" action="${basePath}/admin/checkLogin.do" method="post">
			<div class="form-group has-feedback">
				<input type="text" name="username" class="form-control" placeholder="账号"
				       required data-msg-required="请输入帐号">
				<span class="glyphicon glyphicon-user form-control-feedback"></span>
			</div>
			<div class="form-group has-feedback">
				<input type="password" name="password" class="form-control" placeholder="密码"
				       required data-msg-required="请输入密码">
				<span class="glyphicon glyphicon-lock form-control-feedback"></span>
			</div>
			<div class="form-group">
				<div class="checkbox icheck">
					<label><input type="checkbox" name="rememberMe" value="true"> 下次自动登录</label>
				</div>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-success btn-block">登录</button>
			</div>
		</form>

		<p class="text-center">
			<a href="${basePath}/admin/showRetrievePassword.do">忘记密码了?</a>
		</p>
	</div>
	<!-- /.login-box-body -->

	<div class="login-footer">
		<p>&copy; Copyright 2019 StoreAdmin </p>
		<p>快速演示账号/密码：admin/123123 </p>
	</div>

</div>

<!-- REQUIRED JS SCRIPTS -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${basePath}/plugins/toastr/toastr.min.js"></script>
<script src="${basePath}/plugins/iCheck/icheck.min.js"></script>
<script src="${basePath}/plugins/jquery-form/jquery.form.min.js"></script>
<script src="${basePath}/plugins/validation/jquery.validate.min.js"></script>
<script>
	// 避免在iframe中打开登录页面
	if (window.top !== window.self) {
		window.top.location = window.location;
	}

	$(function () {

		// 表单美化
		$('input').iCheck({
			checkboxClass: 'icheckbox_minimal-blue',
			radioClass: 'iradio_minimal-blue',
			increaseArea: '20%' // optional
		});

		// 表单验证
		$("#form").validate({
			submitHandler: function (form) {
				// 异步提交表单
				var url = $(form).attr("action");
				var data = $(form).serialize();
				$.post(url, data, function (res) {
					if (res.state === 0) {
						// 显示错误信息
						toastr.error(res.message, "Error", {
							timeOut: 8000, //超时时间
							closeButton: true, //显示关闭按钮
							preventDuplicates: true, //防止重复
							progressBar: true, //显示进度条
							positionClass: "toast-top-center" //显示位置(顶部居中)
						});
					} else {
						// 跳转到主页
						location = "${basePath}/admin/showIndex.do";
					}
				});
			}
		});

	});
</script>

</body>
</html>
