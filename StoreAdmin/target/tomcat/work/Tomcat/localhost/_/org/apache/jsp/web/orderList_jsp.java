/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-03-22 02:28:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class orderList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\n');
      out.write('\n');
      if (_jspx_meth_c_005fset_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\t<title>StoreAdmin | OrderList</title>\n");
      out.write("\t<meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/bootstrap/dist/css/bootstrap.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/font-awesome/css/font-awesome.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/select2/dist/css/select2.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\"\n");
      out.write("\t      href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/bootstrap-table/bootstrap-table.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/lte/css/AdminLTE.min.css\">\n");
      out.write("\n");
      out.write("\t<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("\t<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("\t<!--[if lt IE 9]>\n");
      out.write("\t<script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("\t<script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("\t<![endif]-->\n");
      out.write("</head>\n");
      out.write("<body class=\"hold-transition bg-gray\">\n");
      out.write("\n");
      out.write("<div class=\"content\">\n");
      out.write("\n");
      out.write("\t<div class=\"box box-primary\">\n");
      out.write("\t\t<div class=\"box-header with-border\">订单列表</div>\n");
      out.write("\t\t<!-- /.box-header -->\n");
      out.write("\t\t<div class=\"box-body\">\n");
      out.write("\n");
      out.write("\t\t\t<!-- 搜索栏 -->\n");
      out.write("\t\t\t<form class=\"form-inline searchBar\" method=\"post\">\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<span>订单号：</span>\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"id\" class=\"form-control\" size=\"10\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<span>状态：</span>\n");
      out.write("\t\t\t\t\t<select name=\"status\" class=\"form-control select2\">\n");
      out.write("\t\t\t\t\t\t<option value=\"-1\">- 请选择 -</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"0\">待付款</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">付款中</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">已付款(未发货)</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"3\">已发货(待收货)</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"4\">交易完成</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"5\">取消订单</option>\n");
      out.write("\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<span>下单日期：</span>\n");
      out.write("\t\t\t\t\t<div class=\"input-group\">\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"beginDate\" class=\"form-control datepicker\" placeholder=\"起始日期\" size=\"8\">\n");
      out.write("\t\t\t\t\t\t<span class=\"input-group-addon\"><i class=\"fa fa-calendar\"></i></span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t-\n");
      out.write("\t\t\t\t\t<div class=\"input-group\">\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"endDate\" class=\"form-control datepicker\" placeholder=\"结束日期\" size=\"8\">\n");
      out.write("\t\t\t\t\t\t<span class=\"input-group-addon\"><i class=\"fa fa-calendar\"></i></span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<button type=\"button\" class=\"btn btn-default btnSearch\"><i class=\"fa fa-search\"></i> 查询</button>\n");
      out.write("\t\t\t\t\t<button type=\"reset\" class=\"btn btn-default\"><i class=\"fa fa-repeat\"></i> 重置</button>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</form>\n");
      out.write("\n");
      out.write("\t\t\t<!-- 工具栏 -->\n");
      out.write("\t\t\t<div id=\"toolbar\">\n");
      out.write("\t\t\t\t<button class=\"btn btn-default btnDeliver\"><i class=\"fa fa-truck\"></i> 发货</button>\n");
      out.write("\t\t\t\t<button class=\"btn btn-default btnConfirm\"><i class=\"fa fa-gift\"></i> 确认收货</button>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t<!-- 表格数据 -->\n");
      out.write("\t\t\t<table id=\"table\"></table>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- /.box-body -->\n");
      out.write("\t</div>\n");
      out.write("\t<!-- /.box -->\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- REQUIRED JS SCRIPTS -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/jquery/dist/jquery.min.js\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/bootstrap/dist/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/bootstrap-datepicker/dist/locales/bootstrap-datepicker.zh-CN.min.js\"></script>\n");
      out.write("<!-- AdminLTE App -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/lte/js/adminlte.min.js\"></script>\n");
      out.write("<!-- Select2 -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/select2/dist/js/select2.full.min.js\"></script>\n");
      out.write("<!-- Bootstrap Table -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/bootstrap-table/bootstrap-table.min.js\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("\tvar $table = $(\"#table\");\n");
      out.write("\n");
      out.write("\tfunction initTable() {\n");
      out.write("\t\t$table = $(\"#table\").bootstrapTable({\n");
      out.write("\t\t\tcolumns: [\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\tfield: \"ck\", checkbox: true\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"id\",\n");
      out.write("\t\t\t\t\ttitle: \"订单号\",\n");
      out.write("\t\t\t\t\tsortable: true\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"paymentAmount\",\n");
      out.write("\t\t\t\t\ttitle: \"总金额\",\n");
      out.write("\t\t\t\t\tsortable: true\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"status\",\n");
      out.write("\t\t\t\t\ttitle: \"订单状态\",\n");
      out.write("\t\t\t\t\tformatter: function (value) {\n");
      out.write("\t\t\t\t\t\treturn [\"待付款\", \"付款中\", \"已付款(未发货)\", \"已发货(待收货)\", \"交易完成\", \"取消订单\"][value || 0];\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"createTime\",\n");
      out.write("\t\t\t\t\ttitle: \"下单时间\",\n");
      out.write("\t\t\t\t\tsortable: true,\n");
      out.write("\t\t\t\t\tformatter: function (value) {\n");
      out.write("\t\t\t\t\t\treturn new Date(value).toLocaleString();\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"buyerNick\",\n");
      out.write("\t\t\t\t\ttitle: \"买家昵称\"\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"operate\",\n");
      out.write("\t\t\t\t\ttitle: \"操作\",\n");
      out.write("\t\t\t\t\twidth: \"120px\",\n");
      out.write("\t\t\t\t\tformatter: function (value, row) {\n");
      out.write("\t\t\t\t\t\tvar url = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/order/showOrderDetail.do?orderId=\" + row.id;\n");
      out.write("\t\t\t\t\t\treturn '<a class=\"btn btn-primary btn-xs\" title=\"查看详细\" href=\"' + url + '\"><i class=\"fa fa-search-plus\"></i></a>';\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t],\n");
      out.write("\t\t\ttoolbar: \"#toolbar\",\n");
      out.write("\t\t\tshowRefresh: true,\n");
      out.write("\t\t\tpagination: true,\n");
      out.write("\t\t\tpageSize: 10,\n");
      out.write("\t\t\tidField: \"id\",\n");
      out.write("\t\t\tsidePagination: \"server\",\n");
      out.write("\t\t\turl: \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/order/getOrderPageObject.do\",\n");
      out.write("\t\t\tresponseHandler: function (res) {\n");
      out.write("\t\t\t\treturn res.data;\n");
      out.write("\t\t\t},\n");
      out.write("\t\t\tqueryParams: function (params) {\n");
      out.write("\t\t\t\t$(\".searchBar [name]\").each(function () {\n");
      out.write("\t\t\t\t\tparams[$(this).attr(\"name\")] = $(this).val();\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t\treturn params;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t});\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\t$(function () {\n");
      out.write("\n");
      out.write("\t\t// 初始化下拉选控件\n");
      out.write("\t\t$(\".select2\").select2({\n");
      out.write("\t\t\t// 隐藏搜索框\n");
      out.write("\t\t\tminimumResultsForSearch: -1\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\t// 初始化日期控件\n");
      out.write("\t\t$(\".datepicker\").datepicker({\n");
      out.write("\t\t\tautoclose: true,\n");
      out.write("\t\t\tformat: \"yyyy-mm-dd\",\n");
      out.write("\t\t\tlanguage: \"zh-CN\"\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\t// 初始化表格\n");
      out.write("\t\tinitTable();\n");
      out.write("\n");
      out.write("\t\t// 搜索按钮点击事件\n");
      out.write("\t\t$(\".btnSearch\").click(function () {\n");
      out.write("\t\t\t$table.bootstrapTable(\"refreshOptions\", {pageNumber: 1});\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\t// 发货\n");
      out.write("\t\t$(\".btnDeliver\").click(function () {\n");
      out.write("\t\t\tvar rows = $table.bootstrapTable(\"getSelections\");\n");
      out.write("\t\t\tif (rows.length <= 0) {\n");
      out.write("\t\t\t\ttop.layer.alert(\"请选择一个要发货的订单！\", {icon: 7});\n");
      out.write("\t\t\t\treturn false;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\tvar url = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/order/deliverGoods.do\";\n");
      out.write("\t\t\tvar data = {\"orderId\": rows[0].id};\n");
      out.write("\t\t\t$.post(url, data, function (res) {\n");
      out.write("\t\t\t\tif (res.state === 1) {\n");
      out.write("\t\t\t\t\t$table.bootstrapTable(\"refresh\");\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t\ttop.layer.alert(res.message);\n");
      out.write("\t\t\t});\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\t// 确认收货\n");
      out.write("\t\t$(\".btnConfirm\").click(function () {\n");
      out.write("\t\t\tvar rows = $table.bootstrapTable(\"getSelections\");\n");
      out.write("\t\t\tif (rows.length <= 0) {\n");
      out.write("\t\t\t\ttop.layer.alert(\"请选择一个确认收货的订单！\", {icon: 7});\n");
      out.write("\t\t\t\treturn false;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\tvar url = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/order/confirmReceivedGoods.do\";\n");
      out.write("\t\t\tvar data = {\"orderId\": rows[0].id};\n");
      out.write("\t\t\t$.post(url, data, function (res) {\n");
      out.write("\t\t\t\tif (res.state === 1) {\n");
      out.write("\t\t\t\t\t$table.bootstrapTable(\"refresh\");\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t\ttop.layer.alert(res.message);\n");
      out.write("\t\t\t});\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fset_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fset_005f0.setParent(null);
    // /web/orderList.jsp(3,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fset_005f0.setVar("basePath");
    // /web/orderList.jsp(3,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
    _jspx_th_c_005fset_005f0.setValue(new org.apache.jasper.el.JspValueExpression("/web/orderList.jsp(3,0) '${pageContext.request.contextPath}'",_el_expressionfactory.createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
    int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
    if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
    return false;
  }
}
