/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 11:42:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.event;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class eventDetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    \r\n");
 
	String ctxPath = request.getContextPath();

      out.write("\r\n");
      out.write("    \r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../header_dog.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<title>현재 진행중인 이벤트</title>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print( ctxPath);
      out.write("/js/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("\r\n");
      out.write("/* button */\r\n");
      out.write("#back_btn {\r\n");
      out.write("    width: 240px;\r\n");
      out.write("    height: 50px;\r\n");
      out.write("    font-size: 16px;\r\n");
      out.write("    color: #f5f5f5;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    line-height: 50px;\r\n");
      out.write("    background: #42362f;\r\n");
      out.write("    margin: 6% 0 0 42%; \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#bottom {\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\theight: 250px;\r\n");
      out.write("}\r\n");
      out.write("/* /button */\r\n");
      out.write("\r\n");
      out.write(".content {\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\tmargin: 0 auto;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".s_title {\r\n");
      out.write("    padding: 18px 0 14px;\r\n");
      out.write("    color: #333;\r\n");
      out.write("    font-size: 18px;\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("    text-align: left;\r\n");
      out.write("    margin-left: 10%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".s_title p {\r\n");
      out.write("    padding-top: 10px;\r\n");
      out.write("    color: #666;\r\n");
      out.write("    font-size: 14px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".boxtitle {\r\n");
      out.write("    padding: 42px 30px 36px;\r\n");
      out.write("    border-top: 5px solid #000;\r\n");
      out.write("    border-bottom: 1px solid #ccc;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".boxtitle .title {\r\n");
      out.write("    padding-bottom: 19px;\r\n");
      out.write("    color: #000;\r\n");
      out.write("    font-size: 32px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".container {\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\tmargin: 0 auto;\r\n");
      out.write("\tpadding: 0px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".heart {\r\n");
      out.write("\tcolor: red;\r\n");
      out.write("\tdisplay: inline;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("\tfunction goBack() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tjavascript:history.back();\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("\t<div><img src=\"/Semi_Team1/images/event/event_title.gif\" style=\"width: 100%;\"></div>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"content\">\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"s_title\">\r\n");
      out.write("\t\t\tEVENT\r\n");
      out.write("\t\t\t<p>하림 펫푸드의 다양한 이벤트에 참여해 보세요.</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div class=\"boxtitle\">\r\n");
      out.write("          <div class=\"title\"><p class=\"heart\">♡</p> 댕댕이 친구들에게 특별한 크리스마스 선물을 <p class=\"heart\">♡</p></div>\r\n");
      out.write("          <p style=\"font-size: 13pt;\">이벤트 기간 : 2019.12.3 ~ 2019.12.24</p>\r\n");
      out.write("        </div>\r\n");
      out.write("\t\r\n");
      out.write("\t    <div>\r\n");
      out.write("\t\t\t<img src=\"/Semi_Team1/images/event/eventDetail.jpg\" style=\"display: block; margin: 0 auto;\" />\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"bottom\">\r\n");
      out.write("     \t<button type=\"button\" id=\"back_btn\" onclick=\"goBack();\">목록으로</button>\r\n");
      out.write("     </div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../footer_dog.jsp", out, false);
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
