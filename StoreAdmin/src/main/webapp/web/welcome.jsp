<%@ page contentType="text/html;charset=UTF-8" %>
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
		<div class="col-sm-9" >
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
									<h3>Ident</h3>
									<p>订单</p>
								</div>
								<div class="icon">
									<i class="glyphicon glyphicon-eye-open"></i>
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
									<h3>Goods<sup style="font-size: 20px"></sup></h3>
									<p>商品操作</p>
								</div>
								<div class="icon">
									<i class="glyphicon glyphicon-equalizer"></i>
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
									<h3>User</h3>
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
									<h3>Hot</h3>
									<p>商品热销</p>
								</div>
								<div class="icon">
									<i class="glyphicon glyphicon-asterisk"></i>
								</div>
								<a href="${basePath}/admin/goods/showHotGoodsList.do" class="small-box-footer">
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
					<iframe name="myiframe" src="${basePath}/admin/goods/showWelcomGoodsList.do" width="100%" height=425px" frameborder="0"></iframe>

				</div>

			</div>

		</div>


		<!-- /.col-sm-9 -->

		<div class="col-sm-3">
			<!-- 我的便签 -->
			<div class="box box-widget">
				<div class="box-header with-border">我的便笺</div>
				<div align="center" class="box-body no-padding">

					<%--<form id="form1" action="#"  method="post">--%>
						<%--<input type="text" name="note">--%>
						<textarea id="d1" name="note" rows="7" cols="26" placeholder="Hello World"></textarea>
						<input id="bq_btn" type="button" value="保存">
					<%--</form>--%>
					<%--<textarea class="no-border form-control" rows="4">Hello World.</textarea>--%>



						<%--<form id="form1" name="form1" action="" method="post">--%>
							<%--<input type="hidden" name="note" value="${now }">--%>
							<%----%>
						<%--</form>--%>


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
						<%--<li><a href="${basePath}/admin/order/showOrderList.do">--%>
							<%--待付款 <span class="pull-right badge bg-aqua"></span></a></li>--%>
						<li><a href="${basePath}/admin/order/showOrderList.do">
							已付款 <span class="pull-right badge bg-red"></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /.col-sm-3 -->
	</div>


	<!-- /.row -->
</div>


<%--<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>--%>
<!-- REQUIRED JS SCRIPTS -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" >


	$("#bq_btn").on('click',function () {
		var note = $('#d1').val();
		// alert(textareaContents);
		$.ajax({
			url: "${basePath}/admin/insertNote.do",
			type: "POST",
			data:{"note":note},
			dataType: "json",
			complete:function(data)
			{

				alert("保存成功");
				console.log("hgjsdhkjfghdshfgjasdgkl");
			}
		});
	})

	$(document).ready(function () {
        // var note = $('#d1').val();
		// $("#bq_btn")
        var msg = "###" ;
        $.ajax({
            url:"${basePath}/admin/readLastNote.do",
            type:"POST",
            // data:{"note":note},
            dataType:"json",
            complete:function (data) {
                msg = data.responseJSON.data;
                $("#d1").val(msg);
                // alert("******:[" + msg + "]");

            }
        })

	})

	<%--$.ajax({--%>
		<%--url: "${basePath}/admin/insertNote.do",--%>
		<%--type: "POST",--%>
		<%--data:("#form1").serialize(),--%>
		<%--dataType: "json",--%>
		<%--success: function (res) {--%>
			<%--alert("hhhhhha")--%>
		<%--}--%>
	<%--});--%>

</script>

<!-- REQUIRED JS SCRIPTS -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${basePath}/lte/js/adminlte.min.js"></script>

</body>
</html>