<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | OrderDetail</title>
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
		<div class="box-header">订单详细
			<div class="box-tools pull-right">
				<a href="${basePath}/admin/order/showOrderList.do" class="btn btn-box-tool">
					<i class="fa fa-fw fa-arrow-left"></i>返回订单列表
				</a>
			</div>
		</div>
		<!-- /.box-header -->
		<div class="box-body">

			<form class="form-horizontal" style="margin-bottom:10px">

				<h4 class="page-header">订单信息</h4>
				<table class="table table-bordered">
					<tr>
						<td class="active text-right" width="15%">订单号:</td>
						<td width="35%">${order.id}</td>
						<td class="active text-right" width="15%">订单状态:</td>
						<td width="35%">
							<c:choose>
								<c:when test="${order.status == 1}">待付款</c:when>
								<c:when test="${order.status == 2}">付款中</c:when>
								<c:when test="${order.status == 3}">已付款(未发货)</c:when>
								<c:when test="${order.status == 4}">已发货(待签收)</c:when>
								<c:when test="${order.status == 5}">交易完成</c:when>
								<c:when test="${order.status == 6}">取消订单</c:when>
							</c:choose>
						</td>
					</tr>
					<tr>
						<td class="active text-right">支付方式:</td>
						<td>
							<c:choose>
								<c:when test="${order.status == 1}">在线支付</c:when>
								<c:when test="${order.status == 2}">货到付款</c:when>
							</c:choose>
						</td>
						<td class="active text-right">订单金额:</td>
						<td>&yen; ${order.paymentAmount}</td>
					</tr>
					<tr>
						<td class="active text-right">订单运费:</td>
						<td>&yen; ${order.postFee}</td>
						<td class="active text-right">下单时间:</td>
						<td><fmt:formatDate value="${order.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					</tr>
					<tr>
						<td class="active text-right">付款时间:</td>
						<td><fmt:formatDate value="${order.paymentTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
						<td class="active text-right">发货时间:</td>
						<td><fmt:formatDate value="${order.consignTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					</tr>
					<tr>
						<td class="active text-right" width="15%">交易完成时间:</td>
						<td><fmt:formatDate value="${order.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
						<td class="active text-right" width="15%">交易关闭时间:</td>
						<td><fmt:formatDate value="${order.closeTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					</tr>
				</table>

				<h4 class="page-header">物流信息</h4>
				<table class="table table-bordered">
					<tr>
						<td class="active text-right" width="15%">物流名称:</td>
						<td width="35%">${order.shippingName}</td>
						<td class="active text-right" width="15%">物流单号:</td>
						<td width="35%">${order.shippingCode}</td>
					</tr>
				</table>

				<h4 class="page-header">买家信息</h4>
				<table class="table table-bordered">
					<tr>
						<td class="active text-right" width="15%">买家昵称:</td>
						<td width="35%">${order.buyerNick}</td>
						<td class="active text-right" width="15%">是否评价:</td>
						<td width="35%">${order.buyerRate==0 ? "否" : "是"}</td>
					</tr>
					<tr>
						<td class="active text-right" width="15%">买家留言:</td>
						<td colspan="3">${order.buyerMessage}</td>
					</tr>
				</table>

				<h4 class="page-header">订单商品信息</h4>

				<!-- 表格数据 -->
				<table class="table">
					<thead>
					<tr>
						<th>编号</th>
						<th>商品标题</th>
						<th>商品图片</th>
						<th>商品单价</th>
						<th>商品数量</th>
						<th>总金额</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${orderItemList}" var="orderItem">
						<tr>
							<td>${orderItem.id}</td>
							<td>${orderItem.title}</td>
							<td><img src="${basePath}${orderItem.image}" width="50" height="50"></td>
							<td>${orderItem.price}</td>
							<td>${orderItem.num}</td>
							<td>${orderItem.totalAmount}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>

			</form>

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

</body>
</html>