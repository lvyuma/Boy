/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-03-21 20:03:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class goodsForm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    java.lang.Throwable exception = org.apache.jasper.runtime.JspRuntimeLibrary.getThrowable(request);
    if (exception != null) {
      response.setStatus(javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    }
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
      out.write("\t<title>StoreAdmin | GoodsForm</title>\n");
      out.write("\t<meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/bootstrap/dist/css/bootstrap.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/bower_components/font-awesome/css/font-awesome.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/iCheck/minimal/blue.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/dropify/css/dropify.min.css\">\n");
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
      out.write("\t\t<div class=\"box-header\">商品");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.id != null ? \"修改\" : \"添加\"}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</div>\n");
      out.write("\t\t<!-- /.box-header -->\n");
      out.write("\t\t<div class=\"box-body\">\n");
      out.write("\n");
      out.write("\t\t\t<form class=\"form-horizontal\" id=\"form\" method=\"post\">\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"id\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\">\n");
      out.write("\n");
      out.write("\t\t\t\t<h4 class=\"page-header\">商品信息</h4>\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\"><font color=\"red\">*</font>商品分类</label>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-sm-8 has-feedback\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" id=\"categoryId\" name=\"categoryId\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.categoryId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"text\" id=\"categoryName\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.categoryName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" class=\"form-control\" required>\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"glyphicon glyphicon-search form-control-feedback\"></span>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\"><font color=\"red\">*</font>商品系列</label>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-sm-8\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"text\" name=\"itemType\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.itemType}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" class=\"form-control\" required>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- /.row -->\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\"><font color=\"red\">*</font>商品标题</label>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-sm-8\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"text\" name=\"title\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.title}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" class=\"form-control\" required>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\"><font color=\"red\">*</font>卖点描述</label>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-sm-8\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"text\" name=\"sellPoint\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.sellPoint}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" class=\"form-control\" required>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- /.row -->\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\"><font color=\"red\">*</font>商品单价</label>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-sm-8\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"number\" name=\"price\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.price}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" class=\"form-control\" required>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\"><font color=\"red\">*</font>库存数量</label>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-sm-8\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"number\" name=\"num\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.num}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" class=\"form-control\" required>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- /.row -->\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\">商品条形码</label>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-sm-8\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"text\" name=\"barcode\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.barcode}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" class=\"form-control\">\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\">显示优先级</label>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-sm-8\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"number\" name=\"priority\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.priority}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" class=\"form-control\">\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- /.row -->\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\">商品状态</label>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-sm-8\">\n");
      out.write("\t\t\t\t\t\t\t\t<select name=\"status\" class=\"form-control\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"1\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.status==1?\"selected\":\"\"}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write(">上架</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"0\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.status==0?\"selected\":\"\"}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write(">下架</option>\n");
      out.write("\t\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- /.row -->\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\">商品图片</label>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-sm-8\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"image\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.image}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"file\" class=\"dropify\"\n");
      out.write("\t\t\t\t\t\t\t\t       data-height=\"100\" data-allowed-file-extensions=\"jpg jpeg png gif\"\n");
      out.write("\t\t\t\t\t\t\t\t       data-max-file-size=\"2M\" data-default-file=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${goods.image}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- /.row -->\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"hr-line-dashed\"></div>\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<div class=\"col-xs-offset-2\">\n");
      out.write("\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-primary\">保 存</button>\n");
      out.write("\t\t\t\t\t\t&nbsp;\n");
      out.write("\t\t\t\t\t\t<button class=\"btn btn-default\" onclick=\"history.go(-1)\">返 回</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</form>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- /.box-body -->\n");
      out.write("\t</div>\n");
      out.write("\t<!-- /.box -->\n");
      out.write("\n");
      out.write("\t<div class=\"alert alert-dismissable text-info\">\n");
      out.write("\t\t<button type=\"button\" data-dismiss=\"alert\" class=\"close\">×</button>\n");
      out.write("\t\t提示和建议：<br>\n");
      out.write("\t\t1、请填写正确的手机号码，方便忘记密码时通过短信验证码重置密码<br>\n");
      out.write("\t\t2、管理员拥有所有权限，请勿随意修改，以免造成丢失操作权限<br>\n");
      out.write("\t\t3、“冻结”的用户依然属于有效用户，只是不允许该用户登录，数据等都不变\n");
      out.write("\t</div>\n");
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
      out.write("<!-- iCheck -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/iCheck/icheck.min.js\"></script>\n");
      out.write("<!-- jQuery Form -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/jquery-form/jquery.form.min.js\"></script>\n");
      out.write("<!-- jQuery Validation -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/validation/jquery.validate.min.js\"></script>\n");
      out.write("<!-- Dropify -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/dropify/js/dropify.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("\t$(function () {\n");
      out.write("\n");
      out.write("\t\t/* iCheck */\n");
      out.write("\t\t$(\"input[name='gender']\").iCheck({\n");
      out.write("\t\t\tcheckboxClass: 'icheckbox_minimal-blue',\n");
      out.write("\t\t\tradioClass: 'iradio_minimal-blue',\n");
      out.write("\t\t\tincreaseArea: '20%' // optional\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\t/* 表单验证 */\n");
      out.write("\t\tvar validator = $(\"#form\").validate({\n");
      out.write("\t\t\tsubmitHandler: function (form) {\n");
      out.write("\t\t\t\t// 异步提交表单\n");
      out.write("\t\t\t\tvar url = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/goods/addGoods.do\";\n");
      out.write("\n");
      out.write("\t\t\t\tvar id = $(form).find(\"input[name='id']\").val();\n");
      out.write("\t\t\t\tif (id) {\n");
      out.write("\t\t\t\t\turl = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/goods/updateGoods.do\";\n");
      out.write("\t\t\t\t}\n");
      out.write("\n");
      out.write("\t\t\t\t$.ajax({\n");
      out.write("\t\t\t\t\turl: url,\n");
      out.write("\t\t\t\t\ttype: \"POST\",\n");
      out.write("\t\t\t\t\tdata: $(form).serialize(),\n");
      out.write("\t\t\t\t\tdataType: \"json\",\n");
      out.write("\t\t\t\t\tsuccess: function (res) {\n");
      out.write("\t\t\t\t\t\tif (res.state === 1) {\n");
      out.write("\t\t\t\t\t\t\ttop.layer.alert(res.message, {icon: 1}, function (index) {\n");
      out.write("\t\t\t\t\t\t\t\ttop.layer.close(index);\n");
      out.write("\t\t\t\t\t\t\t\tlocation = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/goods/showGoodsList.do\";\n");
      out.write("\t\t\t\t\t\t\t});\n");
      out.write("\t\t\t\t\t\t} else {\n");
      out.write("\t\t\t\t\t\t\ttop.layer.alert(res.message, {icon: 2});\n");
      out.write("\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t}\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\t/* 图片上传 */\n");
      out.write("\t\t$('.dropify').dropify().change(function () {\n");
      out.write("\t\t\tvar data = new FormData();\n");
      out.write("\t\t\tdata.append(\"image\", this.files[0]);\n");
      out.write("\t\t\tdata.append(\"imagePath\", $('input[name=\"image\"]').val());\n");
      out.write("\t\t\t$.ajax({\n");
      out.write("\t\t\t\turl: \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/goods/uploadImage.do\",\n");
      out.write("\t\t\t\ttype: \"POST\",\n");
      out.write("\t\t\t\tdata: data,\n");
      out.write("\t\t\t\tcontentType: false,\n");
      out.write("\t\t\t\tprocessData: false,\n");
      out.write("\t\t\t\tdataType: \"json\",\n");
      out.write("\t\t\t\tsuccess: function (res) {\n");
      out.write("\t\t\t\t\tif (res.state === 1) {\n");
      out.write("\t\t\t\t\t\t$('input[name=\"image\"]').val(res.data);\n");
      out.write("\t\t\t\t\t\ttop.layer.msg(res.message);\n");
      out.write("\t\t\t\t\t} else {\n");
      out.write("\t\t\t\t\t\ttop.layer.alert(res.message, {icon: 2});\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t});\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\t// 选择商品分类\n");
      out.write("\t\t$(\"#categoryName\").click(function () {\n");
      out.write("\t\t\ttop.layer.open({\n");
      out.write("\t\t\t\ttype: 2,\n");
      out.write("\t\t\t\tarea: [\"320px\", \"420px\"],\n");
      out.write("\t\t\t\ttitle: \"选择商品分类\",\n");
      out.write("\t\t\t\tcontent: \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/admin/category/showCategoryTree.do\",\n");
      out.write("\t\t\t\tbtn: [\"确定\", \"关闭\"],\n");
      out.write("\t\t\t\tyes: function (index, layerObj) {\n");
      out.write("\t\t\t\t\tvar zTreeObj = layerObj.find(\"iframe\")[0].contentWindow.zTreeObj;\n");
      out.write("\t\t\t\t\tvar nodes = zTreeObj.getSelectedNodes();\n");
      out.write("\t\t\t\t\tif (nodes) {\n");
      out.write("\t\t\t\t\t\t$(\"#categoryName\").val(nodes[0].name);\n");
      out.write("\t\t\t\t\t\t$(\"#categoryId\").val(nodes[0].id);\n");
      out.write("\t\t\t\t\t\t// 重新验证字段\n");
      out.write("\t\t\t\t\t\tvalidator.element(\"#categoryName\");\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t\ttop.layer.close(index);\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t\t// cancel: function(){}\n");
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
    // /web/goodsForm.jsp(3,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fset_005f0.setVar("basePath");
    // /web/goodsForm.jsp(3,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
    _jspx_th_c_005fset_005f0.setValue(new org.apache.jasper.el.JspValueExpression("/web/goodsForm.jsp(3,0) '${pageContext.request.contextPath}'",_el_expressionfactory.createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
    int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
    if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
    return false;
  }
}
