<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | 找回密码</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/plugins/toastr/toastr.min.css">
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

	<div class="login-box-body">
		<h4 class="text-success">
			<i class="fa fa-fw fa-key"></i> 找回密码
		</h4>
		<div class="hr-line-dashed"></div>

		<form id="form" action="${basePath}/admin/resetPassword.do" method="post">
			<div class="form-group has-feedback">
				<input type="email" name="email" class="form-control" placeholder="请输入邮箱"
				       required data-msg-required="请输入邮箱">
				<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
			</div>
			<div class="form-group">
				<div class="input-group">
					<input type="text" name="code" class="form-control" placeholder="请输入动态码（6位数字）"
					       required data-msg-required="请输入动态码（6位数字）" data-rule-ecode="true">
					<span class="input-group-btn">
						<button type="button" class="btn btn-default" id="getCode">获取动态码</button>
					</span>
				</div>
			</div>
			<div class="form-group">
				<input type="password" name="pwd" id="pwd" class="form-control" placeholder="请输入密码"
				       required data-msg-required="请输入密码">
			</div>
			<div class="form-group">
				<input type="password" name="repeatPwd" class="form-control" placeholder="请再次输入密码"
				       required data-msg-required="请再次输入密码"
				       data-rule-equalTo="#pwd" data-msg-equalTo="两次密码不一致">
			</div>
			<div class="form-group clearfix">
				<a href="${basePath}/admin/showLogin.do" class="btn btn-default pull-right">
					返回登录 <i class="fa fa-angle-right"></i>
				</a>
				<button type="submit" class="btn btn-success">
					<i class="fa fa-lightbulb-o"></i> 确认重置密码
				</button>
			</div>
		</form>
	</div>
	<!-- /.login-box-body -->

</div>

<!-- REQUIRED JS SCRIPTS -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${basePath}/plugins/toastr/toastr.min.js"></script>
<script src="${basePath}/plugins/jquery-form/jquery.form.min.js"></script>
<script src="${basePath}/plugins/validation/jquery.validate.min.js"></script>
<script>
	$(function () {

		var toastrOptions = {
			timeOut: 8000, //超时时间
			closeButton: true, //显示关闭按钮
			preventDuplicates: true, //防止重复
			progressBar: true, //显示进度条
			positionClass: "toast-top-center" //显示位置(顶部居中)
		};

		// 自定义验证方法
		jQuery.validator.addMethod("ecode", function (value, element) {
			return this.optional(element) || /^[0-9]{6}$/.test(value);
		}, "请输入动态码（6位数字）");

		// 表单验证
		var v = $("#form").validate({
			errorPlacement: function (error, element) {
				// 添加`text-danger`样式到错误元素上.
				error.addClass("text-danger").prepend("<i class='fa fa-fw fa-exclamation-circle'></i>");
				$(element).closest(".form-group").append(error);
			},
			submitHandler: function (form) {
				var url = $(form).attr("action");
				var data = $(form).serialize();
				$.post(url, data, function (res) {
					if (res.state === 1) {
						// 禁用提交按钮，防止重复提交
						$(":submit").prop("disabled", true);
						// 显示成功信息
						toastr.remove();
						toastr.success(res.message, "Success", toastrOptions);
					} else {
						// 显示错误信息
						toastr.error(res.message, "Error", toastrOptions);
					}
				});
			}
		});

		// 获取动态码
		$("#getCode").click(function () {
			var $getCode = $(this);
			var $email = $('input[name="email"]');
			// 检查验证是否输入邮箱
			var emailValid = v.element($email);
			if (!emailValid) return false;
			// 60秒后可重新发送
			$getCode.prop("disabled", true);
			$email.prop("readonly", true);
			var seconds = 60;
			var timer = setInterval(function () {
				if (seconds-- < 1) {
					clearInterval(timer);
					$getCode.prop("disabled", false).html("获取动态码");
					$email.prop("readonly", false);
				} else {
					$getCode.html("重新发送(" + seconds + ")");
				}
			}, 1000);
			// AJAX异步请求发送动态码
			var url = "${basePath}/admin/sendEmailCode.do";
			var data = {"email": $email.val()};
			$.post(url, data, function (res) {
				if (res.state === 1) {
					// 显示成功信息
					toastr.remove();
					var msg = "动态码已经发送到您的电子邮箱，<br>请前往查收！";
					toastr.success(msg, "Success", toastrOptions);
				} else {
					// 出错则清除定时器
					clearInterval(timer);
					$getCode.prop("disabled", false).html("获取动态码");
					$email.prop("readonly", false);
					// 显示错误信息
					toastr.error(res.message, "Error", toastrOptions);
				}
			});
		});

	});
</script>

</body>
</html>
