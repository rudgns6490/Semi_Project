/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 09:35:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.myshop;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class myPageIndex_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1576647303837L));
    _jspx_dependants.put("jar:file:/C:/myjsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Semi/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/fmt.tld", Long.valueOf(1425946270000L));
    _jspx_dependants.put("jar:file:/C:/myjsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Semi/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../header.jsp", out, false);
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("\tbody {\r\n");
      out.write("      font-family: 'Open Sans', NanumGothic,'Malgun Gothic', Dotum,sans-serif;\r\n");
      out.write("      }\r\n");
      out.write("      \r\n");
      out.write("    ul {\r\n");
      out.write("    \tlist-style-type: none;\r\n");
      out.write("    \tpadding: 0px;\r\n");
      out.write("    \tdisplay: inline-block;\r\n");
      out.write("\t\twidth: 100%;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("\ta{\r\n");
      out.write("\t\tcursor: pointer;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.container {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t\twidth: 100%;\r\n");
      out.write("\t\theight: 100%;\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.contents {\r\n");
      out.write("\t\tmargin: 0 auto;\r\n");
      out.write("\t\twidth: 86.7%;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\th2#myPage {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t    letter-spacing: .3px;\r\n");
      out.write("\t    color: #00a0e2;\r\n");
      out.write("\t    font-weight: 900;\r\n");
      out.write("\t    font-size: 20px;\r\n");
      out.write("\t    margin-top: 15px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\th2#myPage:after {\r\n");
      out.write("\t\tcontent: \"\";\r\n");
      out.write("        display: block;\r\n");
      out.write("        width: 94px;\r\n");
      out.write("        border-bottom: solid 3px #00a0e2;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.mymenuDiv {\r\n");
      out.write("\t\tmargin-top: 42px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tul.mymenuList {\r\n");
      out.write("\t\twidth: 100%;\r\n");
      out.write("\t\tfont-size: 22px;\r\n");
      out.write("    \tfont-weight: bold;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tul.mymenuList:after {\r\n");
      out.write("\t\tcontent: \"\";\r\n");
      out.write("        display: block;\r\n");
      out.write("        width: 100%;\r\n");
      out.write("        border-bottom: solid 2px black;\r\n");
      out.write("        margin: 0 auto;\r\n");
      out.write("        position: relative;\r\n");
      out.write("        top: 7px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tul.mymenuList li {\r\n");
      out.write("    \tpadding-left: 0px;\r\n");
      out.write("    \tmargin: 0 30px 0 30px;\r\n");
      out.write("    \tdisplay: inline-block;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tul.mymenuList > li > a {\r\n");
      out.write("\t\tcolor: black;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tul.mymenuList > li > a.myLink:hover {\r\n");
      out.write("\t\tcolor: red;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.description {\r\n");
      out.write("\t\tmargin-top: 30px;\r\n");
      out.write("\t\tfont-size: 17px;\r\n");
      out.write("\t\ttext-align: left;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.status {\r\n");
      out.write("\t\tborder: solid 2px black;\r\n");
      out.write("\t\tborder-top: solid 6px black;\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t\twidth: 100%;\r\n");
      out.write("\t\tmargin-top: 20px;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tdiv.sttTitle {\r\n");
      out.write("\t\tpadding-top: 10px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.sttTitle h3{\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t\tfont-size: 18px;\r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.sttTitle span{\r\n");
      out.write("\t\tfont-size: 18px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.sttContents {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t\twidth: 100%;\r\n");
      out.write("\t\tpadding: 40px 0px 20px 0px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tli.orderList {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t\tfont-size: 17px;\r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("\t\twidth: 20%;\r\n");
      out.write("\t\tmargin: 0px 25px 0px 25px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\ta.orderLink{\r\n");
      out.write("\t\tdisplay: block;\r\n");
      out.write("\t\tmargin-top: 22px;\r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("    \tfont-size: 21px;\r\n");
      out.write("    \tcolor: #00a0e2;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tul.CS {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t\tfont-size: 16px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.orderDiv {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t\twidth: 80%;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.csDiv {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t\twidth: 19%;\r\n");
      out.write("\t\tposition: relative;\r\n");
      out.write("\t\ttop: 5px; \r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tspan.icoDot {\r\n");
      out.write("    display: inline-block;\r\n");
      out.write("    width: 2px;\r\n");
      out.write("    height: 2px;\r\n");
      out.write("    margin: 8px 6px 0 0;\r\n");
      out.write("    background: #4d4d4d;\r\n");
      out.write("    vertical-align: top;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tli.orderCS {\r\n");
      out.write("\t\tmargin: 5px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.myOrder {\r\n");
      out.write("\t\tborder: solid 1px green;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\th3.myOrderTitle {\r\n");
      out.write("\t\tfont-size: 25px;\r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("\t\tdisplay: block;\r\n");
      out.write("\t\ttext-align: left;\r\n");
      out.write("\t\tmargin-top: 50px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\ttable.myOrderTbl {\r\n");
      out.write("\t\twidth: 100%;\r\n");
      out.write("\t\tmargin-top: 30px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\ttable.myOrderTbl th {\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t\tfont-size: 19px;\r\n");
      out.write("\t\tborder-bottom: solid 1px black;\r\n");
      out.write("\t\tpadding-bottom: 8px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\ttable.myOrderTbl td {\r\n");
      out.write("\t\theight: 185px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\ttable.myOrderTbl td.fontTbl {\r\n");
      out.write("\t\tfont-size: 18px;\r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("\t\tcolor: black;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\ttd.number {\r\n");
      out.write("\t\tfont-size: 12px;\r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.itemImg {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t\tfloat: left;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.itemDesc {\r\n");
      out.write("\t\ttext-align: left;\r\n");
      out.write("\t\tmargin-top: 5.6%;\r\n");
      out.write("\t\tmargin-left: 28%;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.itemDesc a, span {\r\n");
      out.write("\t\tdisplay: block;\r\n");
      out.write("\t\tcolor: black;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tdiv.itemDesc span {\r\n");
      out.write("\t\tfont-size: 12px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\ta.line {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t\twidth: 90%;\r\n");
      out.write("\t\tborder-top: solid 2px black;\r\n");
      out.write("\t\tpadding: 0 5px 0 5px;\r\n");
      out.write("\t\tcolor: black;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t/* ==== Paging bar css ==== */\r\n");
      out.write("\t.pageNumber {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tfont-size:16px; \r\n");
      out.write("\t\tfont-weight:bold;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.pagination {\r\n");
      out.write("\t  display: block;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.pagination a {\r\n");
      out.write("\t  color: black;\r\n");
      out.write("\t  padding: 3px 10px;\r\n");
      out.write("\t  text-decoration: none;\r\n");
      out.write("\t  cursor : pointer;\r\n");
      out.write("\t  margin : 0 10px;\r\n");
      out.write("\t}\r\n");
      out.write(" \t\r\n");
      out.write("\t.pagination span.active {\r\n");
      out.write("\t \tborder : solid 2px black;\r\n");
      out.write("\t \tcolor: black;\r\n");
      out.write("\t\tpadding: 3px 10px;\r\n");
      out.write("\t\ttext-decoration: none;\r\n");
      out.write("\t\tcursor : pointer;\r\n");
      out.write("\t\tmargin : 0 10px;\r\n");
      out.write("\t\tfont-size: 16px; \r\n");
      out.write("\t\tfont-weight: bold;  \r\n");
      out.write("\t}\r\n");
      out.write(" \t\r\n");
      out.write("\t.pagination a:hover, .pagination span:hover {\r\n");
      out.write("\t   text-decoration: underline;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.writeBtn {\r\n");
      out.write("\tcursor : pointer;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"contents\">\r\n");
      out.write("\t\t\t<div class=\"titleArea\">\r\n");
      out.write("\t\t\t\t<h2 id=\"myPage\">MY PAGE</h2>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"mymenuDiv\">\r\n");
      out.write("\t\t\t\t<ul class=\"mymenuList\">\r\n");
      out.write("\t\t\t\t\t<li><a href=\"/Semi/myshop/myPageIndex.sa\" style=\"color: red;\">my</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"/Semi/myshop/order/list.sa\">order</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"/Semi/member/modify.sa\">profile</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"/Semi/myshop/mileage/historyList.sa\">mileage</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"/Semi/myshop/boardList.sa\">board</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"/Semi/myshop/wishList.sa\">wishlist</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"/Semi/myshop/addr/list.sa\">address</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"status\">\r\n");
      out.write("\t\t\t\t<div class=\"sttTitle\">\r\n");
      out.write("\t\t\t\t\t<h3>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginUser.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(" 님의 주문처리 현황</h3>\r\n");
      out.write("\t\t\t\t\t<span>(최근 3개월 기준)</span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"sttContents\">\r\n");
      out.write("\t\t\t\t\t<div class=\"orderDiv\">\r\n");
      out.write("\t\t\t\t\t<ul class=\"order\">\r\n");
      out.write("\t\t\t\t\t\t<li class=\"orderList\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>결제완료</span>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"orderLink\" href=\"/Semi/myshop/order/list.sa?startDate=&endDate=%5Bobject%20HTMLInputElement%5D&status=결제완료\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${NumByOrderStatus.finishOrder}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"orderList\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>배송준비중</span>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"orderLink\" href=\"/Semi/myshop/order/list.sa?startDate=&endDate=%5Bobject%20HTMLInputElement%5D&status=배송준비중\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${NumByOrderStatus.preparingShipping}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"orderList\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>배송중</span>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"orderLink\" href=\"/Semi/myshop/order/list.sa?startDate=&endDate=%5Bobject%20HTMLInputElement%5D&status=배송중\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${NumByOrderStatus.OnShipping}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"orderList\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>배송완료</span>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"orderLink\" href=\"/Semi/myshop/order/list.sa?startDate=&endDate=%5Bobject%20HTMLInputElement%5D&status=배송완료\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${NumByOrderStatus.done}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"csDiv\">\r\n");
      out.write("\t\t\t\t\t<ul class=\"CS\">\r\n");
      out.write("\t\t\t\t\t\t<li class=\"orderCS\"><span class=\"icoDot\"></span>취소 : &nbsp; 0</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"orderCS\"><span class=\"icoDot\"></span>교환 : &nbsp; 0</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"orderCS\"><span class=\"icoDot\"></span>반품 : &nbsp; 0</li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"myOrderDiv\">\r\n");
      out.write("\t\t\t\t<h3 class=\"myOrderTitle\">MY ORDER</h3>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<table class=\"myOrderTbl\">\r\n");
      out.write("\t\t\t\t<colgroup >\r\n");
      out.write("\t\t\t\t\t<col style=\"width: 12%;\">\r\n");
      out.write("\t\t\t\t\t<col style=\"width: 12%;\">\r\n");
      out.write("\t\t\t\t\t<col style=\"width: 30%;\">\r\n");
      out.write("\t\t\t\t\t<col style=\"width: 12%;\">\r\n");
      out.write("\t\t\t\t\t<col style=\"width: 12%;\">\r\n");
      out.write("\t\t\t\t\t<col style=\"width: 12%;\">\r\n");
      out.write("\t\t\t\t\t<col style=\"width: 12%;\">\r\n");
      out.write("\t\t\t\t</colgroup>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<th>Order Number</th>\r\n");
      out.write("\t\t\t\t\t\t<th>Order Date</th>\r\n");
      out.write("\t\t\t\t\t\t<th>Item</th>\r\n");
      out.write("\t\t\t\t\t\t<th>Quantity</th>\r\n");
      out.write("\t\t\t\t\t\t<th>Price</th>\r\n");
      out.write("\t\t\t\t\t\t<th>Order Status</th>\r\n");
      out.write("\t\t\t\t\t\t<th>취소/교환/반품</th>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t");
      if (_jspx_meth_c_005fif_005f2(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<div class=\"pagination\">\r\n");
      out.write("\t\t\t\t");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageBar}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../footer.jsp", out, false);
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f0_reused = false;
    try {
      _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f0.setParent(null);
      // /WEB-INF/myshop/myPageIndex.jsp(349,5) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetailList != null}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
      if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t\t\t\t");
          if (_jspx_meth_c_005fforEach_005f0(_jspx_th_c_005fif_005f0, _jspx_page_context))
            return true;
          out.write("\r\n");
          out.write("\t\t\t\t\t");
          int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      _jspx_th_c_005fif_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fif_005f0, javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fif_005f0);
      // /WEB-INF/myshop/myPageIndex.jsp(350,6) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("order");
      // /WEB-INF/myshop/myPageIndex.jsp(350,6) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/myshop/myPageIndex.jsp(350,6) '${orderDetailList}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${orderDetailList}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      // /WEB-INF/myshop/myPageIndex.jsp(350,6) name = varStatus type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVarStatus("status");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("\t\t\t\t\t\t\t<tr>\r\n");
            out.write("\t\t\t\t\t\t\t\t<td class=\"number\">\r\n");
            out.write("\t\t\t\t\t\t\t\t\t<a class=\"line\" href=\"/Semi/myshop/order/detail.sa?prodcode=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.prodcode}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("&ordernum=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.ordernum}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\">\r\n");
            out.write("\t\t\t\t\t\t\t\t\t[");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.ordernum}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("]</a>\r\n");
            out.write("\t\t\t\t\t\t\t\t</td>\r\n");
            out.write("\t\t\t\t\t\t\t\t<td class=\"fontTbl\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.orderdate}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("\t\t\t\t\t\t\t\t<td class=\"fontTbl\">\r\n");
            out.write("\t\t\t\t\t\t\t\t<div class=\"itemImg\" >\r\n");
            out.write("\t\t\t\t\t\t\t\t<a href=\"/Semi/product/detail.sa?prodcode=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.prodcode}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("&cateno=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.cateno}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\">\r\n");
            out.write("\t\t\t\t\t\t\t\t<img src=\"/Semi/imgProd/");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.prodimg}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\" alt=\"주문한상품이미지\" style=\"width: 100px;\"/></a>\r\n");
            out.write("\t\t\t\t\t\t\t\t</div>\r\n");
            out.write("\t\t\t\t\t\t\t\t<div class=\"itemDesc fontTbl\" >\r\n");
            out.write("\t\t\t\t\t\t\t\t<a href=\"/Semi/product/detail.sa?prodcode=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.prodcode}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("&cateno=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.cateno}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\">\r\n");
            out.write("\t\t\t\t\t\t\t\t\t");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.prodname}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\r\n");
            out.write("\t\t\t\t\t\t\t\t</a>\r\n");
            out.write("\t\t\t\t\t\t\t\t<span>[옵션: ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.model}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("]</span>\r\n");
            out.write("\t\t\t\t\t\t\t\t</div>\r\n");
            out.write("\t\t\t\t\t\t\t\t</td>\r\n");
            out.write("\t\t\t\t\t\t\t\t<td class=\"fontTbl\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.quantity}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("\t\t\t\t\t\t\t\t");
            out.write("\r\n");
            out.write("\t\t\t\t\t\t\t\t<td class=\"fontTbl\"><span>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.price}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</span> WON</td>\r\n");
            out.write("\t\t\t\t\t\t\t\t<td class=\"fontTbl\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.orderstatus}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\r\n");
            out.write("\t\t\t\t\t\t\t\t\t");
            if (_jspx_meth_c_005fif_005f1(_jspx_th_c_005fforEach_005f0, _jspx_page_context, _jspx_push_body_count_c_005fforEach_005f0))
              return true;
            out.write("\r\n");
            out.write("\t\t\t\t\t\t\t\t</td>\r\n");
            out.write("\t\t\t\t\t\t\t\t<td class=\"fontTbl\">-</td>\r\n");
            out.write("\t\t\t\t\t\t\t</tr>\r\n");
            out.write("\t\t\t\t\t\t");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fforEach_005f0, javax.servlet.jsp.PageContext _jspx_page_context, int[] _jspx_push_body_count_c_005fforEach_005f0)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f1_reused = false;
    try {
      _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fforEach_005f0);
      // /WEB-INF/myshop/myPageIndex.jsp(373,9) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.orderstatus == '배송완료'}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t\t\t\t\t\t\t\t<br/><br/><a class=\"writeBtn\" href=\"/Semi/board/product/write.sa?boardNo=3&prodcode=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${order.prodcode}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("\"><img src=\"/Semi/images/btn_write.gif\" alt=\"리뷰작성하기\" style=\"width: 100px;\"/></a>\r\n");
          out.write("\t\t\t\t\t\t\t\t\t");
          int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
      _jspx_th_c_005fif_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f1_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f2(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f2_reused = false;
    try {
      _jspx_th_c_005fif_005f2.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f2.setParent(null);
      // /WEB-INF/myshop/myPageIndex.jsp(382,5) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetailList == null}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f2 = _jspx_th_c_005fif_005f2.doStartTag();
      if (_jspx_eval_c_005fif_005f2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t\t\t\t<tr>\r\n");
          out.write("\t\t\t\t\t\t\t<td colspan=\"7\" style=\"text-align:center; font-size:12pt; padding: 20px 0; font-weight:bold;\">주문 내역이 없습니다</td>\r\n");
          out.write("\t\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t\t");
          int evalDoAfterBody = _jspx_th_c_005fif_005f2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f2);
      _jspx_th_c_005fif_005f2_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f2, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f2_reused);
    }
    return false;
  }
}
