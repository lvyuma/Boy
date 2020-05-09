<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | hotGoodsList</title>
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

	<%--<div class="box box-primary">--%>
		<div class="box-header with-border"><p align="center">热卖商品排行</p></div>
		<!-- /.box-header -->
		<%--<div class="box-body">--%>

			<!-- 搜索栏 -->
			<%--<form class="form-inline searchBar" method="post">--%>
				<%--<div class="form-group">--%>
					<%--<span>商品分类：</span>--%>
					<%--<div class="input-group">--%>
						<%--<input type="hidden" id="categoryId" name="categoryId">--%>
						<%--<input type="text" id="categoryName" class="form-control" size="10">--%>
						<%--<span class="input-group-addon"><i class="fa fa-search"></i></span>--%>
					<%--</div>--%>
				<%--</div>--%>
				<%--<div class="form-group">--%>
					<%--<span>商品名称：</span>--%>
					<%--<input type="text" name="title" class="form-control" size="10">--%>
				<%--</div>--%>
				<%--<div class="form-group">--%>
					<%--<span>状态：</span>--%>
					<%--<select name="status" class="form-control">--%>
						<%--<option value="-1">- 请选择 -</option>--%>
						<%--<option value="1">上架</option>--%>
						<%--<option value="0">下架</option>--%>
					<%--</select>--%>
				<%--</div>--%>
				<%--<div class="form-group">--%>
					<%--<button type="button" class="btn btn-default btnSearch"><i class="fa fa-search"></i> 查询</button>--%>
					<%--<button type="reset" class="btn btn-default"><i class="fa fa-repeat"></i> 重置</button>--%>
				<%--</div>--%>
			<%--</form>--%>

			<!-- 工具栏 -->
			<%--<div id="toolbar">--%>
				<%--&lt;%&ndash;<a class="btn btn-default" href="${basePath}/admin/goods/showGoodsForm.do?id="><i class="fa fa-plus"></i> 添加</a>&ndash;%&gt;--%>
				<%--<button class="btn btn-default enabledGoods"><i class="fa fa-check"></i> 上架</button>--%>
				<%--<button class="btn btn-default disabledGoods"><i class="fa fa-ban"></i> 下架</button>--%>
			<%--</div>--%>

			<!-- 表格数据 -->
			<table id="table"></table>

		<%--</div>--%>
		<!-- /.box-body -->
	<%--</div>--%>
	<!-- /.box -->

</div>

<!-- REQUIRED JS SCRIPTS -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${basePath}/lte/js/adminlte.min.js"></script>
<!-- Bootstrap Table -->
<script src="${basePath}/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<%--<script src="${basePath}/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>--%>
<script>
	var $table = $("#table");

	/** 初始化表格 */
	function initTable() {
		$table.bootstrapTable({
			columns: [
				// {field: "ck", checkbox: true},
				{field: "itemType", title: "商品系列"},
				{field: "title", title: "商品标题"},
				{field: "price", title: "单价"},
				{field: "saltGoodsNum",title: "已数量"},
				{field: "num", title: "库存数量"}

				// {
				// 	field: "operate", title: "操作", width: "120px", events: operateEvents,
				// 	formatter: function () {
				// 		return [
				// 			'<button class="btn btn-primary btn-xs" title="查看"><i class="fa fa-search-plus"></i></button> ',
				// 			'<button class="btn btn-success btn-xs" title="修改"><i class="fa fa-pencil"></i></button> ',
				// 			'<button class="btn btn-danger btn-xs" title="删除"><i class="fa fa-trash"></i></button>'
				// 		].join('');
				// 	}
				// }
			],
			// toolbar: "#toolbar",
			// showRefresh: true,
			pagination: true,
			onlyInfoPagination:true,
			pageNumber: 1,  //初始化加载第一页，默认第一页
			pageSize: 5,
			idField: "id",
			sidePagination: "server",
			url: "${basePath}/admin/goods/getWelcomGoodsPageObject.do",
			responseHandler: function (res) {
				return res.data;
			}
		});
	}

	<%--/** 操作按钮事件 */--%>
	<%--window.operateEvents = {--%>
		<%--// 查看事件--%>
		<%--"click .btn-primary": function (e, value, row, index) {--%>
			<%--location = "${basePath}/admin/goods/showGoodsForm.do?id=" + row.id;--%>
		<%--},--%>
		<%--// 修改事件--%>
		<%--"click .btn-success": function (e, value, row, index) {--%>
			<%--location = "${basePath}/admin/goods/showGoodsForm.do?id=" + row.id;--%>
		<%--},--%>
		<%--// 删除事件--%>
		<%--"click .btn-danger": function (e, value, row, index) {--%>
			<%--top.layer.confirm("确认要删除吗？", {icon: 3}, function (index) {--%>
				<%--top.layer.close(index);--%>
				<%--var url = "${basePath}/admin/goods/deleteGoods.do";--%>
				<%--var data = {"id": row.id};--%>
				<%--$.post(url, data, function (res) {--%>
					<%--if (res.state === 1) {--%>
						<%--$table.bootstrapTable("refresh");--%>
					<%--}--%>
					<%--top.layer.alert(res.message);--%>
				<%--});--%>
			<%--});--%>
		<%--}--%>
	<%--};--%>


	$(function () {
		// 初始化表格
		initTable();

		// 查询按钮点击事件
		$(".btnSearch").click(function () {
			$table.bootstrapTable("refreshOptions", {pageNumber: 1});
		});

		// 商品上架
		$(".enabledGoods").click(function () {
			var rows = $table.bootstrapTable("getSelections");
			if (rows.length !== 1) {
				top.layer.alert("请选择一行记录再操作！", {icon: 7});
				return false;
			}
			top.layer.confirm("确认要上架该商品吗？", {icon: 3}, function (index) {
				top.layer.close(index);
				var url = "${basePath}/admin/goods/enabledGoods.do";
				var data = {"id": rows[0].id};
				$.post(url, data, function (res) {
					if (res.state === 1) {
						$table.bootstrapTable("refresh");
					}
					top.layer.alert(res.message);
				});
			});
		});

		// 商品下架
		$(".disabledGoods").click(function () {
			var rows = $table.bootstrapTable("getSelections");
			if (rows.length !== 1) {
				top.layer.alert("请选择一行记录再操作！", {icon: 7});
				return false;
			}
			top.layer.confirm("确认要下架该商品吗？", {icon: 3}, function (index) {
				top.layer.close(index);
				var url = "${basePath}/admin/goods/disabledGoods.do";
				var data = {"id": rows[0].id};
				$.post(url, data, function (res) {
					if (res.state === 1) {
						$table.bootstrapTable("refresh");
					}
					top.layer.alert(res.message);
				});
			});
		});

		// 选择商品分类
		$("#barcode").click(function () {
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
						$("#barcode").val(nodes[0].name);
						$("#categoryId").val(nodes[0].id);
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