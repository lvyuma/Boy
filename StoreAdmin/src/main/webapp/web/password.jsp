<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | Password</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/lte/css/AdminLTE.min.css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body class="hold-transition bg-gray">

<div class="content">

	<div class="box box-primary">
		<div class="box-header with-border">修改密码</div>
		<div class="box-body">

			<form id="form" class="form-horizontal" action="${basePath}/admin/changePassword.do" method="post">
				<div class="row">
					<div class="col-sm-7">
						<div class="form-group">
							<label class="col-sm-3 control-label"><font color="red">*</font>旧密码</label>
							<div class="col-sm-8">
								<input type="password" name="pwd" class="form-control"
								       required data-msg-required="请输入旧密码">
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label class="col-sm-3 control-label"><font color="red">*</font>新密码</label>
							<div class="col-sm-8">
								<input type="password" name="newPwd" id="newPwd" class="form-control"
								       required data-msg-required="请输入新密码">
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label class="col-sm-3 control-label"><font color="red">*</font>确认新密码</label>
							<div class="col-sm-8">
								<input type="password" name="confirmNewPwd" class="form-control"
								       required data-msg-required="请再次输入旧密码"
								       data-rule-equalTo="#newPwd" data-msg-equalTo="两次密码不一致">
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-8">
								<button type="submit" class="btn btn-primary">提 交</button>
							</div>
						</div>
					</div>
					<!-- /.col-sm-6 -->
				</div>
				<!-- /.row -->
			</form>
		</div>
		<!-- /.box-body -->
	</div>
	<!-- /.box -->
</div>

<!-- REQUIRED JS SCRIPTS -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${basePath}/lte/js/adminlte.min.js"></script>
<!-- jQuery Form -->
<script src="${basePath}/plugins/jquery-form/jquery.form.min.js"></script>
<!-- jQuery Validation -->
<script src="${basePath}/plugins/validation/jquery.validate.min.js"></script>
<script>
	$(function () {

		// 表单验证
		$("#form").validate({
			submitHandler: function (form) {
				// 异步提交表单
				var url = $(form).attr("action");
				var data = $(form).serialize();
				$.post(url, data, function (res) {
					if (res.state === 1) {
						top.layer.alert(res.message, {icon: 1}, function () {
							// 密码修改成功后重定向到登录页面
							location = "${basePath}/admin/logout.do";
						});
					} else {
						top.layer.alert(res.message, {icon: 5});
					}
				});
			}
		});

	});
</script>

</body>
</html>