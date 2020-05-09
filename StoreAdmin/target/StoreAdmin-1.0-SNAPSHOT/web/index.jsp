<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/lte/css/AdminLTE.min.css">
	<link rel="stylesheet" href="${basePath}/lte/css/skins/_all-skins.min.css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body class="hold-transition skin-blue-light sidebar-mini fixed">
<div class="wrapper">

	<!-- Main Header -->
	<header class="main-header">
		<!-- Logo -->
		<a href="#" class="logo">
			<!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>S</b>A</span>
			<!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Store</b>Admin</span>
		</a>

		<!-- Header Navbar -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
				<span class="sr-only">Toggle navigation</span>
			</a>
			<!-- Navbar Right Menu -->
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<!-- Messages: style can be found in dropdown.less-->
					<%--<li class="dropdown messages-menu">--%>
						<!-- Menu toggle button -->
						<%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
							<%--<i class="fa fa-envelope-o"></i>--%>
							<%--<span class="label label-success">0</span>--%>
						<%--</a>--%>
					<%--</li>--%>
					<!-- /.messages-menu -->

					<!-- Notifications Menu -->
					<%--<li class="dropdown notifications-menu">--%>
						<%--<!-- Menu toggle button -->--%>
						<%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
							<%--<i class="fa fa-bell-o"></i>--%>
							<%--<span class="label label-warning">0</span>--%>
						<%--</a>--%>
					<%--</li>--%>

					<%--<!-- Tasks Menu -->--%>
					<%--<li class="dropdown tasks-menu">--%>
						<%--<!-- Menu Toggle Button -->--%>
						<%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
							<%--<i class="fa fa-flag-o"></i>--%>
							<%--<span class="label label-danger">0</span>--%>
						<%--</a>--%>
					<%--</li>--%>

					<!-- User Account Menu -->
					<li class="dropdown user user-menu">
						<!-- Menu Toggle Button -->
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<!-- The user image in the navbar-->
							<img src="${basePath}${sessionScope.admin.image}" class="user-image">
							<!-- hidden-xs hides the username on small devices so only the image appears. -->
							<span class="hidden-xs nick-name">${sessionScope.admin.realName}</span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${basePath}/admin/showProfile.do" target="myiframe"><i class="fa fa-user"></i> 个人资料</a>
							</li>
							<li><a href="${basePath}/admin/showPassword.do" target="myiframe"><i class="fa fa-lock"></i> 更改密码</a></li>
							<li class="divider"></li>
							<li><a href="#" onclick="logout()"><i class="fa fa-power-off"></i> 安全退出</a></li>
						</ul>
					</li>
					<!-- Logout Button -->
					<li>
						<a href="#" onclick="logout()"><i class="fa fa-power-off"></i></a>
					</li>
				</ul>
			</div>
		</nav>
	</header>

	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">

		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">

			<!-- Sidebar user panel (optional) -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="${basePath}${sessionScope.admin.image}" class="img-circle">
				</div>
				<div class="pull-left info">
					<p class="nick-name">${sessionScope.admin.realName}</p>
					<!-- Status -->
					<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
				</div>
			</div>

			<!-- search form (Optional) -->
			<form action="http://www.baidu.com/s"  class="sidebar-form">
				<div class="input-group">
					<input type="text" name="wd" class="form-control" placeholder="百度一下">
					<span class="input-group-btn">
						<button type="submit" name="search" id="search-btn" class="btn btn-flat">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
			</form>
			<a href="wwww.baidu.com"></a>
			<!-- /.search form -->

			<!-- Sidebar Menu -->
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header"><h3>目录</h3></li>
				<!-- Optionally, you can add icons to the links -->
				<li class="active">
					<a href="${basePath}/admin/showIndex.do"><i class="fa fa-home"></i> <span>主页</span></a>
				</li>
				<li class="treeview">
					<a href="#">
						<i class="fa fa-user"></i>
						<span>用户管理</span>
						<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
					</a>
					<ul class="treeview-menu">
						<li><a href="${basePath}/admin/user/showUserList.do" target="myiframe">用户列表</a></li>
						<li><a href="${basePath}/admin/user/showUserForm.do" target="myiframe">添加用户</a></li>
					</ul>
				</li>
				<li class="treeview">
					<a href="#">
						<i class="fa fa-bars"></i>
						<span>商品管理</span>
						<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
					</a>
					<ul class="treeview-menu">
						<li><a href="${basePath}/admin/goods/showGoodsList.do" target="myiframe">商品列表</a></li>
						<li><a href="${basePath}/admin/goods/showGoodsForm.do" target="myiframe">添加商品</a></li>
					</ul>
				</li>
				<li class="treeview">
					<a href="#">
						<i class="fa fa-cubes"></i>
						<span>商品分类</span>
						<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
					</a>
					<ul class="treeview-menu">
						<li><a href="${basePath}/admin/category/showCategoryList.do" target="myiframe">分类列表</a></li>
						<li><a href="${basePath}/admin/category/showCategoryForm.do" target="myiframe">添加分类</a></li>
					</ul>
				</li>
				<li class="treeview">
					<a href="#">
						<i class="fa fa-list-ul"></i>
						<span>订单管理</span>
						<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
					</a>
					<ul class="treeview-menu">
						<li><a href="${basePath}/admin/order/showOrderList.do" target="myiframe">销售订单</a></li>
					</ul>
				</li>
			</ul>
			<!-- /.sidebar-menu -->
		</section>
		<!-- /.sidebar -->
	</aside>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!--------------------------
		  | Your Page Content Here |
		  -------------------------->
		<div class="iframe-box">
			<iframe name="myiframe" src="${basePath}/admin/showWelcome.do" width="100%" height="100%"
			        frameborder="0"></iframe>
		</div>
	</div>
	<!-- /.content-wrapper -->

</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${basePath}/lte/js/adminlte.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
<script src="${basePath}/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="${basePath}/bower_components/fastclick/lib/fastclick.js"></script>
<script src="${basePath}/plugins/layer/layer.js"></script>
<script>
	// layer 默认皮肤
	layer.config({skin: "layui-layer-lan"});

	// 注销登录
	function logout() {
		var msg = "确定注销登录吗？";
		layer.confirm(msg, {icon: 3, title: "提示"}, function (index) {
			location.href = "${basePath}/admin/logout.do";
			layer.close(index);
		});
	}
</script>

</body>
</html>