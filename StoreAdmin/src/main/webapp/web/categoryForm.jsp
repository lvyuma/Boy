<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | CategoryForm</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/plugins/iCheck/minimal/blue.css">
	<link rel="stylesheet" href="${basePath}/lte/css/AdminLTE.min.css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.Fmaxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body class="hold-transition bg-gray">

<div class="content">

	<div class="box box-primary">
		<div class="box-header">分类${category.id != null ? "修改" : "添加"}</div>
		<!-- /.box-header -->
		<div class="box-body">

			<form class="form-horizontal" id="form" method="post">
				<input type="hidden" name="id" value="${category.id}">

				<h4 class="page-header">分类信息</h4>

				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label">上级分类</label>
							<div class="col-sm-8 has-feedback">
								<input type="hidden" id="parentId" name="parentId" value="${category.parentId}">
								<input type="text" id="parentName" value="${category.parentName}" class="form-control" placeholder="选择上级分类">
								<span class="glyphicon glyphicon-search form-control-feedback"></span>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label"><font color="red">*</font>分类名称</label>
							<div class="col-sm-8">
								<input type="text" name="name" value="${category.name}" class="form-control" required>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label"><font color="red">*</font>排列序号</label>
							<div class="col-sm-8">
								<input type="number" name="sortOrder" value="${category.sortOrder}" class="form-control"
								       required>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label">分类状态</label>
							<div class="col-sm-8">
								<select name="status" class="form-control">
									<option value="1" ${category.status==1?"selected":""}>正常</option>
									<option value="0" ${category.status==0?"selected":""}>删除</option>
								</select>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 control-label">是否上级</label>
							<div class="col-sm-8">
								<label class="radio-inline">
									<input type="radio" name="isParent" value="1" ${category.isParent==1?"checked":""}>
									是
								</label>
								<label class="radio-inline">
									<input type="radio" name="isParent" value="0" ${category.isParent==0?"checked":""}>
									否
								</label>
							</div>
						</div>
					</div>
				</div>

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
		1、上级分类指的是当前添加的分类所属的父级分类<br>
		2、排列序号用于在分类排序时使用，默认按照从小到大升序排序<br>
		3、是否上级用于说明当前分类是否为一个父级分类
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

		/* iCheck */
		$("input:radio").iCheck({
			checkboxClass: 'icheckbox_minimal-blue',
			radioClass: 'iradio_minimal-blue',
			increaseArea: '20%' // optional
		});

		/* 表单验证 */
		$("#form").validate({
			submitHandler: function (form) {
				// 异步提交表单
				var url = "${basePath}/admin/category/addCategory.do";

				var id = $(form).find("input[name='id']").val();
				if (id) {
					url = "${basePath}/admin/category/updateCategory.do";
				}

				var data = $(form).serialize();
				$.post(url, data, function (res) {
					if (res.state === 1) {
						top.layer.alert(res.message, {icon: 1}, function (index) {
							top.layer.close(index);
							location = "${basePath}/admin/category/showCategoryList.do";
						});
					} else {
						top.layer.alert(res.message, {icon: 2});
					}
				});
			}
		});

		/* 选择上级分类 */
		$("#parentName").click(function () {
			top.layer.open({
				type: 2,
				area: ["320px", "420px"],
				title: "选择上级分类",
				content: "${basePath}/admin/category/showCategoryTree.do",
				btn: ["确定", "关闭"],
				yes: function (index, layerObj) {
					var zTreeObj = layerObj.find("iframe")[0].contentWindow.zTreeObj;
					var nodes = zTreeObj.getSelectedNodes();
					if (nodes && nodes.length) {
						$("#parentName").val(nodes[0].name);
						$("#parentId").val(nodes[0].id);
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