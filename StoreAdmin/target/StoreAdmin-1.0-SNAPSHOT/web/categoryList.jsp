<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | CategoryList</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/plugins/bootstrap-table/bootstrap-table.min.css">
	<link rel="stylesheet" href="${basePath}/plugins/jquery-treegrid/css/jquery.treegrid.css">
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
		<%--<div class="box-header with-border">商品分类</div>--%>
		<!-- /.box-header -->
		<div class="box-body">

			<!-- 工具栏 -->
			<div id="toolbar">
				<a class="btn btn-default" href="${basePath}/admin/category/showCategoryForm.do">
					<i class="fa fa-plus"></i> 添加
				</a>
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
<script src="${basePath}/plugins/bootstrap-table/extensions/treegrid/bootstrap-table-treegrid.min.js"></script>
<script src="${basePath}/plugins/jquery-treegrid/js/jquery.treegrid.min.js"></script>
<script>
	var $table = $("#table");

	function initTable() {
		$table = $("#table").bootstrapTable({
			columns: [
				{
					field: "ck",
					checkbox: true
				}, {
					field: "name",
					title: "名称"
				}, {
					field: "status",
					title: "状态",
					formatter: function (value) {
						if (value === 1) {
							return '<span class="label label-info">正常</span>';
						} else {
							return '<span class="label label-default">删除</span>';
						}
					}
				}, {
					field: "sortOrder",
					title: "排序"
				}, {
					field: "isParent",
					title: "是否父分类",
					formatter: function (value) {
						return value === 1 ? "是" : "否";
					}
				}, {
					field: "operate",
					title: "操作",
					width: "120px",
					events: operateEvents,
					formatter: function () {
						return [
							'<button class="btn btn-primary btn-xs" title="查看"><i class="fa fa-search-plus"></i></button> ',
							'<button class="btn btn-success btn-xs" title="修改"><i class="fa fa-pencil"></i></button> ',
							'<button class="btn btn-danger btn-xs" title="删除"><i class="fa fa-trash"></i></button>'
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
			url: "${basePath}/admin/category/getCategoryPageObject.do",
			responseHandler: function (res) {
				return res.data;
			},
			queryParams: function (params) {
				// $(".searchBar [name]").each(function () {
				// 	params[$(this).attr("name")] = $(this).val();
				// });
				return params;
			}
		});
	}

	// 操作按钮事件
	window.operateEvents = {
		// 查看
		"click .btn-primary": function (event, value, row, index) {
			location = "${basePath}/admin/category/showCategoryForm.do?id=" + row.id;
		},
		// 修改
		"click .btn-success": function (event, value, row, index) {
			location = "${basePath}/admin/category/showCategoryForm.do?id=" + row.id;
		},
		// 删除
		"click .btn-danger": function (event, value, row, index) {
			top.layer.confirm("确认要删除吗？", {icon: 3}, function (index) {
				top.layer.close(index);
				var url = "${basePath}/admin/category/deleteCategory.do";
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
		initTable();
	});
</script>

</body>
</html>