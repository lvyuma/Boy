<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreAdmin | CategoryTree</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/plugins/zTree_v3/css/metroStyle/metroStyle.css">
	<link rel="stylesheet" href="${basePath}/lte/css/AdminLTE.min.css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body class="hold-transition">

<div class="content">
	<div class="ztree" id="tree"></div>
</div>

<!-- REQUIRED JS SCRIPTS -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${basePath}/lte/js/adminlte.min.js"></script>
<script src="${basePath}/plugins/zTree_v3/js/jquery.ztree.all.min.js"></script>
<script>
	var zTreeObj = null;

	$(function () {

		// zTree 设置参数
		var setting = {
			view: {
				selectedMulti: false,
				showLine: true
			},
			callback: {
				onExpand: function (event, treeId, treeNode) {
					var treeObj = $.fn.zTree.getZTreeObj(treeId);
					var node = treeObj.getNodeByTId(treeNode.tId);
					// 沒有子节点才去查询
					if (node.children == null || node.children === "undefined") {
						var url = "${basePath}/admin/category/getCategoryListByParentId.do";
						var data = {"parentId": treeNode.id};
						$.getJSON(url, data, function (res) {
							treeObj.addNodes(node, res.data);
						});
					}
				}
			},
			data: {
				simpleData: {
					enable: true,
					idKey: "id",
					pIdKey: "parentId",
					rootPId: 0
				}
			}
		};

		// 获取商品分类数据
		$.getJSON("${basePath}/admin/category/getCategoryListByParentId.do", function (res) {
			// 初始化树结构
			zTreeObj = $.fn.zTree.init($("#tree"), setting, res.data);
			// 默认展开2级节点
			/*var nodes = zTreeObj.getNodesByParam("level", 1);
			for (var i = 0; i < nodes.length; i++) {
				zTreeObj.expandNode(nodes[i], true, false, false);
			}*/
		});

	});
</script>

</body>
</html>