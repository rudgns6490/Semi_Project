/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 10:51:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_005fdog_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\r\n");
      out.write("<div id=\"footer\">\r\n");
      out.write("\t<div class=\"col-xs-9 col-md-2\"></div>\r\n");
      out.write("    <div class=\"col-xs-9 col-md-8\" style=\"padding:0;text-align:center;\">\r\n");
      out.write("      <div class=\"footer-box\" style=\"width:20%\">\r\n");
      out.write("          <div class=\"fb_title\">COMPANY INFO</div>\r\n");
      out.write("          <div class=\"fb_content\">\r\n");
      out.write("              <div>㈜ 하빈펫푸드</div>\r\n");
      out.write("              <div>대표 : 정하빈</div>\r\n");
      out.write("              <div>인천광역시 서구</div>\r\n");
      out.write("              <div>사업자 등록 번호 : 240-81-00698</div>\r\n");
      out.write("          </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"footer-box\" style=\"width:20%\">\r\n");
      out.write("          <div class=\"fb_title\">CUSTOMER CENTER</div>\r\n");
      out.write("          <div class=\"fb_content\">\r\n");
      out.write("              <div style=\"font-size:20pt;color:red;font-weight:bold;\">080-850-0085</div>\r\n");
      out.write("              <div>Open : AM 09:00 ~ PM 06:00</div>\r\n");
      out.write("              <div>Lunch : PM 12:00 ~ PM 01:00</div>\r\n");
      out.write("              <div>토, 일, 공휴일 휴무</div>\r\n");
      out.write("          </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"footer-box\" style=\"width:17%; margin-left:15px;\">\r\n");
      out.write("          <div class=\"fb_title\">SITE INFO</div>\r\n");
      out.write("          <div class=\"fb_content\">\r\n");
      out.write("              <div><a href=\"\">우리의 이야기</a></div>\r\n");
      out.write("              <div><a href=\"\">이용약관</a></div>\r\n");
      out.write("              <div><a href=\"\">개인정보처리방침</a></div>\r\n");
      out.write("              <div><a href=\"\">사업자정보확인</a></div>\r\n");
      out.write("              <div><a href=\"\">방문판매원찾기</a></div>\r\n");
      out.write("          </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"footer-box\" style=\"width:15%;\">\r\n");
      out.write("          <ul style=\"list-style: none;\">\r\n");
      out.write("              <li id=\"footerDropMenu\" style=\"text-align:left;\">\r\n");
      out.write("                  <span id=\"fdm_title\">FAMILY SITE</span>\r\n");
      out.write("                      <ul id=\"footerDropContent\">\r\n");
      out.write("                          <li><a href=\"\">(주)하빈</a></li>\r\n");
      out.write("                          <li><a href=\"\">지서영 인스타그램 페이지</a></li>\r\n");
      out.write("                          <li><a href=\"\">KH정보교육원</a></li>\r\n");
      out.write("                          <li><a href=\"\">김밥일번가</a></li>\r\n");
      out.write("                          \r\n");
      out.write("                      </ul>\r\n");
      out.write("              </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("          \r\n");
      out.write("          \r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
