˙<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | Profile</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/plugins/dropify/css/dropify.min.css">
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
		<div class="box-header with-border">个人资料</div>
		<div class="box-body">

			<div class="row">
				<div class="col-sm-3">
					<div class="box-profile text-center">
						<!-- 头像图片 -->
						<img class="profile-user-img img-responsive img-circle" src="${basePath}${admin.image}">
						<!-- 上传头像 -->
						<form id="uploadImageForm"
						      action="${basePath}/admin/uploadImage.do"
						      method="post"
						      enctype="multipart/form-data"
						      class="hidden"
						      style="width:162px;margin:0 auto">
							<input type="file"
							       name="image"
							       class="dropify"
							       data-height="150"
							       data-allowed-file-extensions="jpg jpeg png gif"
							       data-max-file-size="2M">
						</form>
						<h3 class="profile-username text-center">超级管理员</h3>
						<p class="text-muted text-center">Super Administrator</p>
						<a href="#" class="btn btn-default" id="changeImageBtn">更换头像</a>
						<a href="#" class="btn btn-default hidden" id="uploadImageBtn">保存</a>
					</div>
				</div>

				<div class="col-sm-9">
					<form id="form" class="form-horizontal" action="${basePath}/admin/changeProfile.do" method="post">
						<div class="form-group">
							<label class="col-sm-3 control-label">登录帐号</label>
							<div class="col-sm-8">
								<p class="form-control-static">${admin.loginName}</p>
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label class="col-sm-3 control-label"><font color="red">*</font>真实姓名</label>
							<div class="col-sm-8">
								<input type="text" name="realName" value="${admin.realName}" class="form-control"
								       required data-msg-required="请输入真实姓名">
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label class="col-sm-3 control-label"><font color="red">*</font>手机号码</label>
							<div class="col-sm-8">
								<input type="text" name="mobile" value="${admin.mobile}" class="form-control"
								       required data-msg-required="请输入手机号码">
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label class="col-sm-3 control-label"><font color="red">*</font>电子邮箱</label>
							<div class="col-sm-8">
								<input type="email" name="email" value="${admin.email}" class="form-control"
								       required data-msg-required="请输入电子邮箱">
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label class="col-sm-3 control-label">最后登录IP</label>
							<div class="col-sm-8">
								<p class="form-control-static">${admin.lastLoginIp}</p>
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label class="col-sm-3 control-label">上次登录时间</label>
							<div class="col-sm-8">
								<p class="form-control-static">${admin.lastLoginTime}</p>
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-8">
								<button type="submit" class="btn btn-primary">提 交</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.box-body -->
	</div>
	<!-- /.box -->
</div>
<!-- /.content -->

<!-- REQUIRED JS SCRIPTS -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${basePath}/lte/js/adminlte.min.js"></script>
<!-- jQuery Form -->
<script src="${basePath}/plugins/jquery-form/jquery.form.min.js"></script>
<!-- jQuery Validation -->
<script src="${basePath}/plugins/validation/jquery.validate.min.js"></script>
<!-- Dropify -->
<script src="${basePath}/plugins/dropify/js/dropify.min.js"></script>
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
						top.layer.alert(res.message, {icon: 1});
						// 同步更新主页显示的用户名
						top.jQuery(".nick-name").html($('input[name="realName"]').val());
					} else {
						top.layer.alert(res.message, {icon: 5});
					}
				});
			}
		});

		// 头像上传
		var drEvent = $('.dropify').dropify();

		// 更换头像切换
		$("#changeImageBtn").click(function () {
			var $img = $(".profile-user-img");
			var $from = $("#uploadImageForm");
			if ($img.hasClass("hidden")) {
				$img.removeClass("hidden");
				$from.addClass("hidden");
				$("#uploadImageBtn").addClass("hidden");
				$(this).text("更换头像");
			} else {
				$img.addClass("hidden");
				$from.removeClass("hidden");
				$("#uploadImageBtn").removeClass("hidden");
				$(this).text("取消");
			}
		});

		// 异步上传头像
		$("#uploadImageBtn").click(function () {
			$("#uploadImageForm").ajaxSubmit({
				beforeSend: function () {
					top.layer.load();
				},
				success: function (res) {
					if (res.state === 1) {
						top.layer.alert(res.message, {icon: 1});
						// 更新头像显示
						var imagePath = "${basePath}" + res.data;
						$(".profile-user-img").attr("src", imagePath);
						$("#changeImageBtn").click();
						// 同步更新主页显示的头像
						top.jQuery(".user-image,.user-panel>.image>img").attr("src", imagePath);
					} else {
						top.layer.alert(res.message, {icon: 5});
					}
				},
				complete: function () {
					top.layer.closeAll('loading');
				}
			});
		});

	});
</script>

</body>
</html>