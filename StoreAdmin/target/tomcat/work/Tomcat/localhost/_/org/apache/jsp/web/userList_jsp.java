/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-03-21 18:59:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userList_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t<title>StoreAdmin | UserList</title>\n");
      out.write("\t<meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/bootstrap/dist/css/bootstrap.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/font-awesome/css/font-awesome.min.css\">\n");
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
      out.write("\t\t<div class=\"box-header with-border\">用户列表</div>\n");
      out.write("\t\t<!-- /.box-header -->\n");
      out.write("\t\t<div class=\"box-body\">\n");
      out.write("\t\t\t<!-- 搜索栏 -->\n");
      out.write("\t\t\t<form id=\"searchbar\" class=\"form-inline\" method=\"post\">\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<span>帐号：</span>\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"username\" class=\"form-control\" size=\"10\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<span>邮箱：</span>\n");
      out.write("\t\t\t\t\t<input type=\"email\" name=\"email\" class=\"form-control\" size=\"10\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<span>手机：</span>\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"phone\" class=\"form-control\" size=\"10\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<span>状态：</span>\n");
      out.write("\t\t\t\t\t<select name=\"status\" class=\"form-control\">\n");
      out.write("\t\t\t\t\t\t<option value=\"-1\">- 请选择 -</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">启用</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"0\">禁用</option>\n");
      out.write("\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<button type=\"button\" class=\"btn btn-default\" id=\"btnSearch\">\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-search\"></i> 查询\n");
      out.write("\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t<button type=\"reset\" class=\"btn btn-default\">\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-repeat\"></i> 重置\n");
      out.write("\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</form>\n");
      out.write("\n");
      out.write("\t\t\t<!-- 工具栏 -->\n");
      out.write("\t\t\t<div id=\"toolbar\">\n");
      out.write("\t\t\t\t<a class=\"btn btn-default\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/user/showUserForm.do\"><i class=\"fa fa-plus\"></i>\n");
      out.write("\t\t\t\t\t添加</a>\n");
      out.write("\t\t\t\t<button class=\"btn btn-default enabledUser\" title=\"激活\"><i class=\"fa fa-check\"></i> 启用</button>\n");
      out.write("\t\t\t\t<button class=\"btn btn-default disabledUser\" title=\"冻结\"><i class=\"fa fa-ban\"></i> 禁用</button>\n");
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
      out.write("<!-- AdminLTE App -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/lte/js/adminlte.min.js\"></script>\n");
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
      out.write("\t/** 初始化表格 */\n");
      out.write("\tfunction initTable() {\n");
      out.write("\t\t$table.bootstrapTable({\n");
      out.write("\t\t\tcolumns: [\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\tfield: \"ck\",\n");
      out.write("\t\t\t\t\tcheckbox: true\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"username\",\n");
      out.write("\t\t\t\t\ttitle: \"帐号\"\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"email\",\n");
      out.write("\t\t\t\t\ttitle: \"邮箱\"\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"phone\",\n");
      out.write("\t\t\t\t\ttitle: \"手机\"\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"gender\",\n");
      out.write("\t\t\t\t\ttitle: \"性别\",\n");
      out.write("\t\t\t\t\tformatter: function (value) {\n");
      out.write("\t\t\t\t\t\treturn value === 1 ? \"男\" : \"女\";\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"status\",\n");
      out.write("\t\t\t\t\ttitle: \"状态\",\n");
      out.write("\t\t\t\t\tformatter: function (value) {\n");
      out.write("\t\t\t\t\t\tif (value === 1) {\n");
      out.write("\t\t\t\t\t\t\treturn '<span class=\"label label-info\">启用</span>';\n");
      out.write("\t\t\t\t\t\t} else {\n");
      out.write("\t\t\t\t\t\t\treturn '<span class=\"label label-default\">禁用</span>';\n");
      out.write("\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"createdTime\",\n");
      out.write("\t\t\t\t\ttitle: \"创建时间\",\n");
      out.write("\t\t\t\t\tformatter: function (value) {\n");
      out.write("\t\t\t\t\t\treturn new Date(value).toLocaleString();\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t}, {\n");
      out.write("\t\t\t\t\tfield: \"operate\",\n");
      out.write("\t\t\t\t\ttitle: \"操作\",\n");
      out.write("\t\t\t\t\twidth: \"120px\",\n");
      out.write("\t\t\t\t\tevents: operateEvents,\n");
      out.write("\t\t\t\t\tformatter: function (value, row, index) {\n");
      out.write("\t\t\t\t\t\treturn [\n");
      out.write("\t\t\t\t\t\t\t'<button class=\"btn btn-primary btn-xs\" title=\"查看\">',\n");
      out.write("\t\t\t\t\t\t\t'<i class=\"fa fa-search-plus\"></i>',\n");
      out.write("\t\t\t\t\t\t\t'</button> ',\n");
      out.write("\t\t\t\t\t\t\t'<button class=\"btn btn-success btn-xs\" title=\"修改\">',\n");
      out.write("\t\t\t\t\t\t\t'<i class=\"fa fa-pencil\"></i>',\n");
      out.write("\t\t\t\t\t\t\t'</button> ',\n");
      out.write("\t\t\t\t\t\t\t'<button class=\"btn btn-danger btn-xs\" title=\"删除\">',\n");
      out.write("\t\t\t\t\t\t\t'<i class=\"fa fa-trash\"></i>',\n");
      out.write("\t\t\t\t\t\t\t'</button>'\n");
      out.write("\t\t\t\t\t\t].join('');\n");
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
      out.write("/admin/user/getUserPageObject.do\",\n");
      out.write("\n");
      out.write("\t\t\tqueryParams: function (params) {\n");
      out.write("\t\t\t\t$(\"#searchbar\").find(\"[name]\").each(function () {\n");
      out.write("\t\t\t\t\tparams[$(this).attr(\"name\")] = $(this).val();\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t\treturn params;\n");
      out.write("\t\t\t},\n");
      out.write("\t\t\tresponseHandler: function (res) {\n");
      out.write("\t\t\t\treturn res.data;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t});\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\t/** 操作按钮事件 */\n");
      out.write("\twindow.operateEvents = {\n");
      out.write("\t\t// 查看事件\n");
      out.write("\t\t\"click .btn-primary\": function (e, value, row, index) {\n");
      out.write("\t\t\tlocation = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/user/showUserForm.do?id=\" + row.id;\n");
      out.write("\t\t},\n");
      out.write("\t\t// 修改事件\n");
      out.write("\t\t\"click .btn-success\": function (e, value, row, index) {\n");
      out.write("\t\t\tlocation = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/user/showUserForm.do?id=\" + row.id;\n");
      out.write("\t\t},\n");
      out.write("\t\t// 删除事件\n");
      out.write("\t\t\"click .btn-danger\": function (e, value, row, index) {\n");
      out.write("\t\t\ttop.layer.confirm(\"确认要删除吗？\", {icon: 3}, function (index) {\n");
      out.write("\t\t\t\ttop.layer.close(index);\n");
      out.write("\t\t\t\tvar url = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/user/deleteUser.do\";\n");
      out.write("\t\t\t\tvar data = {\"id\": row.id};\n");
      out.write("\t\t\t\t$.post(url, data, function (res) {\n");
      out.write("\t\t\t\t\tif (res.state === 1) {\n");
      out.write("\t\t\t\t\t\t$table.bootstrapTable(\"refresh\");\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t\ttop.layer.alert(res.message);\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t});\n");
      out.write("\t\t}\n");
      out.write("\t};\n");
      out.write("\n");
      out.write("\t$(function () {\n");
      out.write("\t\t// 初始化表格\n");
      out.write("\t\tinitTable();\n");
      out.write("\n");
      out.write("\t\t// 查询按钮点击事件\n");
      out.write("\t\t$(\"#btnSearch\").click(function () {\n");
      out.write("\t\t\t$table.bootstrapTable(\"refreshOptions\", {pageNumber: 1});\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\t// 启用用户\n");
      out.write("\t\t$(\".enabledUser\").click(function () {\n");
      out.write("\t\t\tvar rows = $table.bootstrapTable(\"getSelections\");\n");
      out.write("\t\t\tif (rows.length !== 1) {\n");
      out.write("\t\t\t\ttop.layer.alert(\"请选择一行记录再操作！\", {icon: 7});\n");
      out.write("\t\t\t\treturn false;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\ttop.layer.confirm(\"确认要启用吗？\", {icon: 3}, function (index) {\n");
      out.write("\t\t\t\ttop.layer.close(index);\n");
      out.write("\t\t\t\tvar url = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/user/enabledUser.do\";\n");
      out.write("\t\t\t\tvar data = {\"id\": rows[0].id};\n");
      out.write("\t\t\t\t$.post(url, data, function (res) {\n");
      out.write("\t\t\t\t\tif (res.state === 1) {\n");
      out.write("\t\t\t\t\t\t$table.bootstrapTable(\"refresh\");\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t\ttop.layer.alert(res.message);\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t});\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\t// 禁用用户\n");
      out.write("\t\t$(\".disabledUser\").click(function () {\n");
      out.write("\t\t\tvar rows = $table.bootstrapTable(\"getSelections\");\n");
      out.write("\t\t\tif (rows.length !== 1) {\n");
      out.write("\t\t\t\ttop.layer.alert(\"请选择一行记录再操作！\", {icon: 7});\n");
      out.write("\t\t\t\treturn false;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\ttop.layer.confirm(\"确认要禁用吗？\", {icon: 3}, function (index) {\n");
      out.write("\t\t\t\ttop.layer.close(index);\n");
      out.write("\t\t\t\tvar url = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/user/disabledUser.do\";\n");
      out.write("\t\t\t\tvar data = {\"id\": rows[0].id};\n");
      out.write("\t\t\t\t$.post(url, data, function (res) {\n");
      out.write("\t\t\t\t\tif (res.state === 1) {\n");
      out.write("\t\t\t\t\t\t$table.bootstrapTable(\"refresh\");\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t\ttop.layer.alert(res.message);\n");
      out.write("\t\t\t\t});\n");
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
    // /web/userList.jsp(3,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fset_005f0.setVar("basePath");
    // /web/userList.jsp(3,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
    _jspx_th_c_005fset_005f0.setValue(new org.apache.jasper.el.JspValueExpression("/web/userList.jsp(3,0) '${pageContext.request.contextPath}'",_el_expressionfactory.createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
    int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
    if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
    return false;
  }
}
