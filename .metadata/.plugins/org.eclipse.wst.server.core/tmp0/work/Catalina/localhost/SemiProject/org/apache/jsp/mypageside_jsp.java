/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 09:19:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mypageside_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

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
  }

  public void _jspDestroy() {
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
      out.write("\r\n");

	String ctxPath = request.getContextPath();

      out.write("  \r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("$(document).ready(function(){\r\n");
      out.write("\r\n");
      out.write("\t\t  \r\n");
      out.write("\t  $(\"#wishStateSide\").click(function(){\r\n");
      out.write("\t\t  location.href = '");
      out.print( ctxPath );
      out.write("/member/memberMyWish.army';\r\n");
      out.write("\t  });\r\n");
      out.write("\r\n");
      out.write("\t  $(\"#orderStateSide\").click(function(){\r\n");
      out.write("\t\t  location.href = '");
      out.print( ctxPath );
      out.write("/member/memberMyOrder.army';\t\t  \r\n");
      out.write("\t  });\r\n");
      out.write("\t  \r\n");
      out.write("\t  $(\"#currentStateSide\").click(function(){\r\n");
      out.write("\t\t  location.href = '");
      out.print( ctxPath );
      out.write("/member/membermypage.army';\t\t  \r\n");
      out.write("\t  });\r\n");
      out.write("\t  \r\n");
      out.write("\t  \t\t  \r\n");
      out.write("\t  $(\"#memberInfoEditside\").click(function(){\r\n");
      out.write("\t\t  location.href = '");
      out.print( ctxPath );
      out.write("/member/membermyInfoEdit.army';\t\t  \r\n");
      out.write("\t  });\r\n");
      out.write("\t  \r\n");
      out.write("\t  $(\"#inquiryStateSide\").click(function(){\r\n");
      out.write("           location.href = '");
      out.print( ctxPath );
      out.write("/customercenter/inquiryList.army';        \r\n");
      out.write("      });\r\n");
      out.write("\t \r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("</script>  \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("<h2 style=\"margin-left: 60px; margin-top: 100px; margin-bottom: 30px;\">마이페이지</h2>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t<span class=\"title\">주문조회</span>\r\n");
      out.write("\t\t<ul class=\"sideul\">\r\n");
      out.write("\t\t  <li class=\"sideli\" id=\"orderStateSide\" style=\"cursor: pointer;\">주문현황</li>\r\n");
      out.write("\t\t  <li class=\"sideli\" id=\"inquiryStateSide\" style=\"cursor: pointer;\">1:1 문의</li>\t\t\t\t\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\r\n");
      out.write("\t\t<span class=\"title\">활동관리</span>\r\n");
      out.write("\t\t<ul class=\"sideul\">\r\n");
      out.write("\t\t  <li class=\"sideli\" id=\"wishStateSide\" style=\"cursor: pointer;\">위시리스트</li>\r\n");
      out.write("\t\t  <li class=\"sideli\" id=\"currentStateSide\" style=\"cursor: pointer;\">최근 본 상품</li>\t\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t\t<span class=\"title\" style=\"cursor: pointer;\">회원정보</span>\r\n");
      out.write("\t\t<ul class=\"sideul\">\r\n");
      out.write("\t\t  <li class=\"sideli\" id=\"memberInfoEditside\" style=\"cursor: pointer;\">회원정보 변경</li>\t\r\n");
      out.write("\t\t</ul>");
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
}
