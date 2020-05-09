<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | GoodsForm</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/plugins/iCheck/minimal/blue.css">
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
		<div class="box-header">商品${goods.id != null ? "修改" : "添加"}</div>
		<!-- /.box-header -->
		<div class="box-body">

			<form class="form-horizontal" id="form" method="post">
				<input type="hidden" name="id" value="${goods.id}">

				<h4 class="page-header">商品信息</h4>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label"><font color="red">*</font>商品分类</label>
							<div class="col-sm-8 has-feedback">
								<input type="hidden" id="categoryId" name="categoryId" value="${goods.categoryId}">
								<input type="text" id="categoryName" value="${goods.categoryName}" class="form-control" required>
								<span class="glyphicon glyphicon-search form-control-feedback"></span>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label"><font color="red">*</font>商品系列</label>
							<div class="col-sm-8">
								<input type="text" name="itemType" value="${goods.itemType}" class="form-control" required>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label"><font color="red">*</font>商品标题</label>
							<div class="col-sm-8">
								<input type="text" name="title" value="${goods.title}" class="form-control" required>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label"><font color="red">*</font>卖点描述</label>
							<div class="col-sm-8">
								<input type="text" name="sellPoint" value="${goods.sellPoint}" class="form-control" required>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label"><font color="red">*</font>商品单价</label>
							<div class="col-sm-8">
								<input type="number" name="price" value="${goods.price}" class="form-control" required>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label"><font color="red">*</font>库存数量</label>
							<div class="col-sm-8">
								<input type="number" name="num" value="${goods.num}" class="form-control" required>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label">商品条形码</label>
							<div class="col-sm-8">
								<input type="text" name="barcode" value="${goods.barcode}" class="form-control">
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label">显示优先级</label>
							<div class="col-sm-8">
								<input type="number" name="priority" value="${goods.priority}" class="form-control">
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label">商品状态</label>
							<div class="col-sm-8">
								<select name="status" class="form-control">
									<option value="1" ${goods.status==1?"selected":""}>上架</option>
									<option value="0" ${goods.status==0?"selected":""}>下架</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label">商品图片</label>
							<div class="col-sm-8">
								<input type="hidden" name="image" value="${goods.image}">
								<input type="file" class="dropify"
								       data-height="100" data-allowed-file-extensions="jpg jpeg png gif"
								       data-max-file-size="2M" data-default-file="${basePath}${goods.image}">
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
<!-- Dropify -->
<script src="${basePath}/plugins/dropify/js/dropify.min.js"></script>
<script>
	$(function () {

		/* iCheck */
		$("input[name='gender']").iCheck({
			checkboxClass: 'icheckbox_minimal-blue',
			radioClass: 'iradio_minimal-blue',
			increaseArea: '20%' // optional
		});

		/* 表单验证 */
		var validator = $("#form").validate({
			submitHandler: function (form) {
				// 异步提交表单
				var url = "${basePath}/admin/goods/addGoods.do";

				var id = $(form).find("input[name='id']").val();
				if (id) {
					url = "${basePath}/admin/goods/updateGoods.do";
				}

				$.ajax({
					url: url,
					type: "POST",
					data: $(form).serialize(),
					dataType: "json",
					success: function (res) {
						if (res.state === 1) {
							top.layer.alert(res.message, {icon: 1}, function (index) {
								top.layer.close(index);
								location = "${basePath}/admin/goods/showGoodsList.do";
							});
						} else {
							top.layer.alert(res.message, {icon: 2});
						}
					}
				});
			}
		});

		/* 图片上传 */
		$('.dropify').dropify().change(function () {
			var data = new FormData();
			data.append("image", this.files[0]);
			data.append("imagePath", $('input[name="image"]').val());
			$.ajax({
				url: "${basePath}/admin/goods/uploadImage.do",
				type: "POST",
				data: data,
				contentType: false,
				processData: false,
				dataType: "json",
				success: function (res) {
					if (res.state === 1) {
						$('input[name="image"]').val(res.data);
						top.layer.msg(res.message);
					} else {
						top.layer.alert(res.message, {icon: 2});
					}
				}
			});
		});

		// 选择商品分类
		$("#categoryName").click(function () {
			top.layer.open({
				type: 2,
				area: ["320px", "420px"],
				title: "选择商品分类",
				content: "${basePath}/admin/category/showCategoryTree.do",
				btn: ["确定", "关闭"],
				yes: function (index, layerObj) {
					var zTreeObj = layerObj.find("iframe")[0].contentWindow.zTreeObj;
					var nodes = zTreeObj.getSelectedNodes();
					if (nodes) {
						$("#categoryName").val(nodes[0].name);
						$("#categoryId").val(nodes[0].id);
						// 重新验证字段
						validator.element("#categoryName");
					}
					top.layer.close(index);
				}
				// cancel: function(){}
			});
		});

	});
</script>

</body>
</html>