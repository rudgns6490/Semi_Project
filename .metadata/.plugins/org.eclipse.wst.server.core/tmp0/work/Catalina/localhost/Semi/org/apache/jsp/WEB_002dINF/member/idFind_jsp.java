/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 09:33:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class idFind_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("   \r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../header.jsp", out, false);
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("   \r\n");
      out.write("<style>\r\n");
      out.write("\t#wrap{\r\n");
      out.write("\t/* \tborder: solid 1px red;\t */\r\n");
      out.write("\t\tpadding-bottom: 60px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t#title{\r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("\t\ttext-underline-position: under;\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t\ttext-decoration: underline;\r\n");
      out.write("\t\tfont-size: 15pt;\r\n");
      out.write("\t\tcolor: #00a0e2;\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.explain{\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t\tfont-size: 9pt;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#Findid_title{\r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("\t\tfont-size: 15pt;\r\n");
      out.write("\t\t/* border: solid 1px green; */\r\n");
      out.write("\t\tmargin: 0 auto; \r\n");
      out.write("\t\tdisplay: inherit;\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#Find_box{\r\n");
      out.write("\t\tborder: solid 1px #dfdfdf;\r\n");
      out.write("\t\theight: 400px; \r\n");
      out.write("\t\twidth: 1200px;\r\n");
      out.write("\t\tmargin: 0 auto;\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.first_title{\r\n");
      out.write("\t\t/* border: solid 1px red; */\r\n");
      out.write("\t\twidth: 160px;\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#Find{\r\n");
      out.write("\t\tmargin-top: 60px;\r\n");
      out.write("\t/* \tborder: solid 1px purple; */\r\n");
      out.write("\t\tpadding: 0px 200px 0px 200px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#second_Find{\r\n");
      out.write("\t/* \tborder: solid 1px blue; */\r\n");
      out.write("\t\twidth: 350px;\r\n");
      out.write("\t\theight: 150px;\r\n");
      out.write("\t\tmargin: 0 auto; \r\n");
      out.write("\t\tpadding-top: 30px;\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#button_box{\r\n");
      out.write("\t/* \tborder: solid 1px orange; */\r\n");
      out.write("\t\tpadding: 20px 0px 20px 0px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#idFind_button{\r\n");
      out.write("\t\tdisplay: block;\r\n");
      out.write("\t\tmargin: 0px auto;\r\n");
      out.write("\t\tfloat: inherit;\r\n");
      out.write("    \tcursor: pointer;\r\n");
      out.write("    \t}\r\n");
      out.write("    \r\n");
      out.write(" \r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t\r\n");
      out.write("\t$(document).ready(function() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$('#phone_Find').hide();\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$('#Findradio1').click(function(){\r\n");
      out.write("\t\t\t$('#email_Find').show();\r\n");
      out.write("\t\t\t$('#phone_Find').hide();\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$('#Findradio2').click(function(){\r\n");
      out.write("\t\t\t$('#email_Find').hide();\r\n");
      out.write("\t\t\t$('#phone_Find').show();\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("\tfunction findBtn(){\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t  var frm = document.idFind;\r\n");
      out.write("\t\t  frm.method = \"POST\";\r\n");
      out.write("\t\t  frm.action = \"idFindEnd.sa\";\r\n");
      out.write("\t\t  frm.submit();\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<form name=\"idFind\">\r\n");
      out.write("<div id=\"wrap\">\r\n");
      out.write("\t<div id=\"title_area\">\r\n");
      out.write("\t\t<p id=\"title\">아이디 찾기<p>\r\n");
      out.write("\t\t\t<p class=\"explain\">가입하신 방법에 따라 아이디 찾기가 가능합니다.<br/>\r\n");
      out.write("\t\t\t법인사업자 회원 또는 외국인 회원의 경우 법인명과 법인번호 또는 이름과 등록번호를 입력해 주세요.</p>\r\n");
      out.write("\t\t<div id=\"Find_box\">\r\n");
      out.write("\t\t\t<div id=\"Find\">\r\n");
      out.write("\t\t\t\t<span id=\"Findid_title\">아이디 찾기</span><br/>\r\n");
      out.write("\t\t\t\t  <div id=\"second_Find\">\r\n");
      out.write("\t\t\t\t\t<span class=\"first_title\">회원유형</span>\r\n");
      out.write("\t\t\t\t\t<input type=\"radio\" name=\"Findradio\" value=\"email\" id=\"Findradio1\" checked/><label for=\"Findradio1\">이메일</label>\r\n");
      out.write("\t\t\t\t\t<input type=\"radio\" name=\"Findradio\" value=\"mobile\" id=\"Findradio2\"/><label for=\"Findradio2\">휴대폰</label><br/>\r\n");
      out.write("\t\t\t\t\t<span class=\"first_title\">이름</span>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"name\" style=\"width: 179px; height: 30px\"/><br/>\r\n");
      out.write("\t\t\t\t\t<div id=\"email_Find\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"first_title\">이메일로 찾기</span>\r\n");
      out.write("\t\t\t\t\t\t<input class=\"email_Find\" name=\"email\" type=\"text\" style=\"width: 179px; height: 30px; margin:5px 0px 5px 0px\"/><br/>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div id=\"phone_Find\" style=\"margin:5px 0px 5px 0px\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"first_title\">휴대폰 번호로 찾기</span>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"mobile1\" maxlength=\"3\" style=\"width: 50px; height: 30px\"/>-<input type=\"text\" name=\"mobile2\" maxlength=\"4\" style=\"width: 60px; height: 30px\"/>-<input type=\"text\" name=\"mobile3\" maxlength=\"4\" style=\"width: 60px; height: 30px\"/>\r\n");
      out.write("\t\t\t\t    </div>\r\n");
      out.write("\t\t\t\t  </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div id=\"button_box\">\r\n");
      out.write("\t\t\t\t<a type=\"submit\"><img onclick=\"findBtn();\" id=\"idFind_button\" src=\"/Semi/images/if_Find.png\"></a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("</form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../footer.jsp", out, false);
      out.write("  \r\n");
      out.write(" \r\n");
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