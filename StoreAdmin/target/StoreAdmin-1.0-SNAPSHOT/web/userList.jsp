<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | UserList</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/plugins/bootstrap-table/bootstrap-table.min.css">
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
		<div class="box-header with-border">用户列表</div>
		<!-- /.box-header -->
		<div class="box-body">
			<!-- 搜索栏 -->
			<form id="searchbar" class="form-inline" method="post">
				<div class="form-group">
					<span>帐号：</span>
					<input type="text" name="username" class="form-control" size="10">
				</div>
				<div class="form-group">
					<span>邮箱：</span>
					<input type="email" name="email" class="form-control" size="10">
				</div>
				<div class="form-group">
					<span>手机：</span>
					<input type="text" name="phone" class="form-control" size="10">
				</div>
				<div class="form-group">
					<span>状态：</span>
					<select name="status" class="form-control">
						<option value="-1">- 请选择 -</option>
						<option value="1">启用</option>
						<option value="0">禁用</option>
					</select>
				</div>
				<div class="form-group">
					<button type="button" class="btn btn-default" id="btnSearch">
						<i class="fa fa-search"></i> 查询
					</button>
					<button type="reset" class="btn btn-default">
						<i class="fa fa-repeat"></i> 重置
					</button>
				</div>
			</form>

			<!-- 工具栏 -->
			<div id="toolbar">
				<a class="btn btn-default" href="${basePath}/admin/user/showUserForm.do"><i class="fa fa-plus"></i>
					添加</a>
				<button class="btn btn-default enabledUser" title="激活"><i class="fa fa-check"></i> 启用</button>
				<button class="btn btn-default disabledUser" title="冻结"><i class="fa fa-ban"></i> 禁用</button>
			</div>

			<!-- 表格数据 -->
			<table id="table"></table>

		</div>
		<!-- /.box-body -->
	</div>
	<!-- /.box -->

</div>

<!-- REQUIRED JS SCRIPTS -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${basePath}/lte/js/adminlte.min.js"></script>
<!-- Bootstrap Table -->
<script src="${basePath}/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${basePath}/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script>
	var $table = $("#table");

	/** 初始化表格 */
	function initTable() {
		$table.bootstrapTable({
			columns: [
				{
					field: "ck",
					checkbox: true
				}, {
					field: "username",
					title: "帐号"
				}, {
					field: "email",
					title: "邮箱"
				}, {
					field: "phone",
					title: "手机"
				}, {
					field: "gender",
					title: "性别",
					formatter: function (value) {
						return value === 1 ? "男" : "女";
					}
				}, {
					field: "status",
					title: "状态",
					formatter: function (value) {
						if (value === 1) {
							return '<span class="label label-info">启用</span>';
						} else {
							return '<span class="label label-default">禁用</span>';
						}
					}
				}, {
					field: "createdTime",
					title: "创建时间",
					formatter: function (value) {
						return new Date(value).toLocaleString();
					}
				}, {
					field: "operate",
					title: "操作",
					width: "120px",
					events: operateEvents,
					formatter: function (value, row, index) {
						return [
							'<button class="btn btn-primary btn-xs" title="查看">',
							'<i class="fa fa-search-plus"></i>',
							'</button> ',
							'<button class="btn btn-success btn-xs" title="修改">',
							'<i class="fa fa-pencil"></i>',
							'</button> ',
							'<button class="btn btn-danger btn-xs" title="删除">',
							'<i class="fa fa-trash"></i>',
							'</button>'
						].join('');
					}
				}
			],
			toolbar: "#toolbar",
			showRefresh: true,
			pagination: true,
			pageSize: 10,
			idField: "id",
			sidePagination: "server",
			url: "${basePath}/admin/user/getUserPageObject.do",

			queryParams: function (params) {
				$("#searchbar").find("[name]").each(function () {
					params[$(this).attr("name")] = $(this).val();
				});
				return params;
			},
			responseHandler: function (res) {
				return res.data;
			}
		});
	}

	/** 操作按钮事件 */
	window.operateEvents = {
		// 查看事件
		"click .btn-primary": function (e, value, row, index) {
			location = "${basePath}/admin/user/showUserForm.do?id=" + row.id;
		},
		// 修改事件
		"click .btn-success": function (e, value, row, index) {
			location = "${basePath}/admin/user/showUserForm.do?id=" + row.id;
		},
		// 删除事件
		"click .btn-danger": function (e, value, row, index) {
			top.layer.confirm("确认要删除吗？", {icon: 3}, function (index) {
				top.layer.close(index);
				var url = "${basePath}/admin/user/deleteUser.do";
				var data = {"id": row.id};
				$.post(url, data, function (res) {
					if (res.state === 1) {
						$table.bootstrapTable("refresh");
					}
					top.layer.alert(res.message);
				});
			});
		}
	};

	$(function () {
		// 初始化表格
		initTable();

		// 查询按钮点击事件
		$("#btnSearch").click(function () {
			$table.bootstrapTable("refreshOptions", {pageNumber: 1});
		});

		// 启用用户
		$(".enabledUser").click(function () {
			var rows = $table.bootstrapTable("getSelections");
			if (rows.length !== 1) {
				top.layer.alert("请选择一行记录再操作！", {icon: 7});
				return false;
			}
			top.layer.confirm("确认要启用吗？", {icon: 3}, function (index) {
				top.layer.close(index);
				var url = "${basePath}/admin/user/enabledUser.do";
				var data = {"id": rows[0].id};
				$.post(url, data, function (res) {
					if (res.state === 1) {
						$table.bootstrapTable("refresh");
					}
					top.layer.alert(res.message);
				});
			});
		});

		// 禁用用户
		$(".disabledUser").click(function () {
			var rows = $table.bootstrapTable("getSelections");
			if (rows.length !== 1) {
				top.layer.alert("请选择一行记录再操作！", {icon: 7});
				return false;
			}
			top.layer.confirm("确认要禁用吗？", {icon: 3}, function (index) {
				top.layer.close(index);
				var url = "${basePath}/admin/user/disabledUser.do";
				var data = {"id": rows[0].id};
				$.post(url, data, function (res) {
					if (res.state === 1) {
						$table.bootstrapTable("refresh");
					}
					top.layer.alert(res.message);
				});
			});
		});

	});
</script>

</body>
</html>