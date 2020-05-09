<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | Welcome</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
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
	<div class="row">
		<div class="col-sm-9">
			<!-- 数据总览 -->
			<div class="box box-widget">
				<div class="box-header with-border">
					数据总览
					<div class="box-tools"><span class="label label-info">拼夕夕</span></div>
				</div>
				<div class="box-body">

					<div class="row">
						<div class="col-md-3 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-aqua">
								<div class="inner">
									<h3>150</h3>
									<p>新订单</p>
								</div>
								<div class="icon">
									<i class="fa fa-shopping-bag"></i>
								</div>
								<a href="${basePath}/admin/order/showOrderList.do" class="small-box-footer">
									更多信息 <i class="fa fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-md-3 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-green">
								<div class="inner">
									<h3>53<sup style="font-size: 20px">%</sup></h3>
									<p>销售率</p>
								</div>
								<div class="icon">
									<i class="fa fa-bar-chart"></i>
								</div>
								<a href="${basePath}/admin/goods/showGoodsList.do" class="small-box-footer">
									更多信息 <i class="fa fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-md-3 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-yellow">
								<div class="inner">
									<h3>44</h3>
									<p>用户注册量</p>
								</div>
								<div class="icon">
									<i class="fa fa-user-plus"></i>
								</div>
								<a href="${basePath}/admin/user/showUserList.do" class="small-box-footer">
									更多信息 <i class="fa fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-md-3 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-red">
								<div class="inner">
									<h3>65</h3>
									<p>访问量</p>
								</div>
								<div class="icon">
									<i class="fa fa-pie-chart"></i>
								</div>
								<a href="${basePath}/admin/user/showUserList.do" class="small-box-footer">
									更多信息 <i class="fa fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
						<!-- ./col -->
					</div>

				</div>
			</div>
			<!-- 待办提醒 -->
			<div class="box box-widget">
				<div class="box-header with-border">
					待办提醒
					<div class="box-tools">
						<button type="button" class="btn btn-box-tool" data-widget="collapse">
							<i class="fa fa-minus"></i>
						</button>
					</div>
				</div>
				<div class="box-body">
					<p>对不起，没有任何数据噢！<a href="#">创建提醒</a></p>
				</div>
			</div>

		</div>
		<!-- /.col-sm-9 -->

		<div class="col-sm-3">
			<!-- 我的便签 -->
			<div class="box box-widget">
				<div class="box-header with-border">我的便笺</div>
				<div class="box-body no-padding">




					<textarea class="no-border form-control" rows="4">Hello World.</textarea>
				</div>
			</div>
			<!-- 订单提醒 -->
			<div class="box box-widget">
				<div class="box-header with-border">
					订单提醒
					<div class="box-tools"><span class="label label-info">拼夕夕</span></div>
				</div>
				<div class="box-body no-padding">
					<ul class="nav nav-stacked">
						<li><a href="${basePath}/admin/order/showOrderList.do">
							待付款 <span class="pull-right badge bg-aqua">5</span></a></li>
						<li><a href="${basePath}/admin/order/showOrderList.do">
							已付款 <span class="pull-right badge bg-red">3</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /.col-sm-3 -->
	</div>
	<!-- /.row -->
</div>

<!-- REQUIRED JS SCRIPTS -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${basePath}/lte/js/adminlte.min.js"></script>

</body>
</html>