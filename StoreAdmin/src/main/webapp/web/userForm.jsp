<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | UserForm</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/plugins/iCheck/minimal/blue.css">
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
		<div class="box-header">用户${user.id != null ? "修改" : "添加"}</div>
		<!-- /.box-header -->
		<div class="box-body">

			<form id="form" class="form-horizontal" method="post">
				<input type="hidden" name="id" value="${user.id}">

				<h4 class="page-header">基本信息</h4>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label">姓名</label>
							<div class="col-sm-8">
								<input type="text" name="realName" value="${user.realName}" class="form-control">
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label">性别</label>
							<div class="col-sm-8">
								<label class="radio-inline">
									<input type="radio" name="gender" value="1" ${user.gender==1?"checked":""}> 男
								</label>
								<label class="radio-inline">
									<input type="radio" name="gender" value="0" ${user.gender==0?"checked":""}> 女
								</label>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<h4 class="page-header">账号信息</h4>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label"><font color="red">*</font>帐号</label>
							<div class="col-sm-8">
								<input type="text" name="username" value="${user.username}" class="form-control"
								       required>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label"><font color="red">*</font>手机号</label>
							<div class="col-sm-8">
								<input type="text" name="phone" value="${user.phone}" class="form-control" required>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label"><font color="red">*</font>密码</label>
							<div class="col-sm-8">
								<input type="password" name="password" value="${user.password}" id="pwd"
								       class="form-control" required>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label"><font color="red">*</font>确认密码</label>
							<div class="col-sm-8">
								<input type="password" name="confirmPwd" value="${user.password}" class="form-control"
								       required data-rule-equalTo="#pwd">
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label">邮箱</label>
							<div class="col-sm-8">
								<input type="text" name="email" value="${user.email}" class="form-control">
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label">状态</label>
							<div class="col-sm-8">
								<select name="status" class="form-control">
									<option value="1" ${user.status==1?"selected":""}>启用</option>
									<option value="0" ${user.status==0?"selected":""}>禁用</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<div class="hr-line-dashed"></div>

				<div class="form-group">
					<div class="col-xs-offset-2">
						<button type="submit" class="btn btn-primary">保 存</button>
						&nbsp;
						<button class="btn btn-default" onclick="history.go(-1)">返 回</button>
					</div>
				</div>
			</form>

		</div>
		<!-- /.box-body -->
	</div>
	<!-- /.box -->

	<div class="alert alert-dismissable text-info">
		<button type="button" data-dismiss="alert" class="close">×</button>
		提示和建议：<br>
		1、请填写正确的手机号码，方便忘记密码时通过短信验证码重置密码<br>
		2、管理员拥有所有权限，请勿随意修改，以免造成丢失操作权限<br>
		3、“冻结”的用户依然属于有效用户，只是不允许该用户登录，数据等都不变
	</div>

</div>

<!-- REQUIRED JS SCRIPTS -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${basePath}/lte/js/adminlte.min.js"></script>
<!-- iCheck -->
<script src="${basePath}/plugins/iCheck/icheck.min.js"></script>
<!-- jQuery Form -->
<script src="${basePath}/plugins/jquery-form/jquery.form.min.js"></script>
<!-- jQuery Validation -->
<script src="${basePath}/plugins/validation/jquery.validate.min.js"></script>
<script>
	$(function () {

		// iCheck
		$("input[name='gender']").iCheck({
			checkboxClass: 'icheckbox_minimal-blue',
			radioClass: 'iradio_minimal-blue',
			increaseArea: '20%' // optional
		});

		// 表单验证
		$("#form").validate({
			submitHandler: function (form) {
				// 异步提交表单
				var url = "${basePath}/admin/user/addUser.do";

				var id = $(form).find("input[name='id']").val();
				if (id) {
					url = "${basePath}/admin/user/updateUser.do";
				}

				var data = $(form).serialize();
				$.post(url, data, function (res) {
					if (res.state === 1) {
						top.layer.alert(res.message, {icon: 1}, function (index) {
							top.layer.close(index);
							location = "${basePath}/admin/user/showUserList.do";
						});
					} else {
						top.layer.alert(res.message, {icon: 2});
					}
				});
			}
		});

	});
</script>

</body>
</html>