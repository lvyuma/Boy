<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | OrderList</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/select2/dist/css/select2.min.css">
	<link rel="stylesheet"
	      href="${basePath}/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
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
		<div class="box-header with-border">订单列表</div>
		<!-- /.box-header -->
		<div class="box-body">

			<!-- 搜索栏 -->
			<form class="form-inline searchBar" method="post">
				<div class="form-group">
					<span>订单号：</span>
					<input type="text" name="id" class="form-control" size="10">
				</div>
				<div class="form-group">
					<span>状态：</span>
					<select name="status" class="form-control select2">
						<option value="-1">- 请选择 -</option>
						<option value="0">待付款</option>
						<option value="1">付款中</option>
						<option value="2">已付款(未发货)</option>
						<option value="3">已发货(待收货)</option>
						<option value="4">交易完成</option>
						<option value="5">取消订单</option>
					</select>
				</div>
				<div class="form-group">
					<span>下单日期：</span>
					<div class="input-group">
						<input type="text" name="beginDate" class="form-control datepicker" placeholder="起始日期" size="8">
						<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
					</div>
					-
					<div class="input-group">
						<input type="text" name="endDate" class="form-control datepicker" placeholder="结束日期" size="8">
						<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
					</div>
				</div>
				<div class="form-group">
					<button type="button" class="btn btn-default btnSearch"><i class="fa fa-search"></i> 查询</button>
					<button type="reset" class="btn btn-default"><i class="fa fa-repeat"></i> 重置</button>
				</div>
			</form>

			<!-- 工具栏 -->
			<div id="toolbar">
				<button class="btn btn-default btnDeliver"><i class="fa fa-truck"></i> 发货</button>
				<button class="btn btn-default btnConfirm"><i class="fa fa-gift"></i> 确认收货</button>
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
<script src="${basePath}/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="${basePath}/bower_components/bootstrap-datepicker/dist/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<!-- AdminLTE App -->
<script src="${basePath}/lte/js/adminlte.min.js"></script>
<!-- Select2 -->
<script src="${basePath}/bower_components/select2/dist/js/select2.full.min.js"></script>
<!-- Bootstrap Table -->
<script src="${basePath}/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${basePath}/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script>
	var $table = $("#table");

	function initTable() {
		$table = $("#table").bootstrapTable({
			columns: [
				{
					field: "ck", checkbox: true
				}, {
					field: "id",
					title: "订单号",
					sortable: true
				}, {
					field: "paymentAmount",
					title: "总金额",
					sortable: true
				}, {
					field: "status",
					title: "订单状态",
					formatter: function (value) {
						return ["待付款", "付款中", "已付款(未发货)", "已发货(待收货)", "交易完成", "取消订单"][value || 0];
					}
				}, {
					field: "createTime",
					title: "下单时间",
					sortable: true,
					formatter: function (value) {
						return new Date(value).toLocaleString();
					}
				}, {
					field: "buyerNick",
					title: "买家昵称"
				}, {
					field: "operate",
					title: "操作",
					width: "120px",
					formatter: function (value, row) {
						var url = "${basePath}/admin/order/showOrderDetail.do?orderId=" + row.id;
						return '<a class="btn btn-primary btn-xs" title="查看详细" href="' + url + '"><i class="fa fa-search-plus"></i></a>';
					}
				}
			],
			toolbar: "#toolbar",
			showRefresh: true,
			pagination: true,
			pageSize: 10,
			idField: "id",
			sidePagination: "server",
			url: "${basePath}/admin/order/getOrderPageObject.do",
			responseHandler: function (res) {
				return res.data;
			},
			queryParams: function (params) {
				$(".searchBar [name]").each(function () {
					params[$(this).attr("name")] = $(this).val();
				});
				return params;
			}
		});
	}

	$(function () {

		// 初始化下拉选控件
		$(".select2").select2({
			// 隐藏搜索框
			minimumResultsForSearch: -1
		});

		// 初始化日期控件
		$(".datepicker").datepicker({
			autoclose: true,
			format: "yyyy-mm-dd",
			language: "zh-CN"
		});

		// 初始化表格
		initTable();

		// 搜索按钮点击事件
		$(".btnSearch").click(function () {
			$table.bootstrapTable("refreshOptions", {pageNumber: 1});
		});

		// 发货
		$(".btnDeliver").click(function () {
			var rows = $table.bootstrapTable("getSelections");
			if (rows.length <= 0) {
				top.layer.alert("请选择一个要发货的订单！", {icon: 7});
				return false;
			}
			var url = "${basePath}/admin/order/deliverGoods.do";
			var data = {"orderId": rows[0].id};
			$.post(url, data, function (res) {
				if (res.state === 1) {
					$table.bootstrapTable("refresh");
				}
				top.layer.alert(res.message);
			});
		});

		// 确认收货
		$(".btnConfirm").click(function () {
			var rows = $table.bootstrapTable("getSelections");
			if (rows.length <= 0) {
				top.layer.alert("请选择一个确认收货的订单！", {icon: 7});
				return false;
			}
			var url = "${basePath}/admin/order/confirmReceivedGoods.do";
			var data = {"orderId": rows[0].id};
			$.post(url, data, function (res) {
				if (res.state === 1) {
					$table.bootstrapTable("refresh");
				}
				top.layer.alert(res.message);
			});
		});

	});
</script>

</body>
</html>