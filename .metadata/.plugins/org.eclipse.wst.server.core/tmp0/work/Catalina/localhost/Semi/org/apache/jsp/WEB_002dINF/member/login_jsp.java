/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 09:32:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../header.jsp", out, false);
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("\r\n");
      out.write("\t#wrap{\r\n");
      out.write("\t\t/* border: solid 1px pink; */\r\n");
      out.write("\t\tpadding: 35px 50px 35px 50px;\r\n");
      out.write("\t\twidth: 60%;\r\n");
      out.write("\t\tmargin: 0 auto;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#fontlogin{\r\n");
      out.write("\t \t/* border: solid 1px purple; */\r\n");
      out.write("\t \tpadding: 0px 30px 35px 30px;\r\n");
      out.write("\t\ttext-align: center; \r\n");
      out.write("\t\tcolor: #00a0e2;\r\n");
      out.write("\t\ttext-decoration: underline;\r\n");
      out.write("\t\tmargin: 20px 100px 50px 100px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#loginbox{\r\n");
      out.write("\t\t/* border: solid 1px orange; */\r\n");
      out.write("\t\twidth: 450px; \r\n");
      out.write("\t\tmargin: 0 auto;\r\n");
      out.write("\t\tmargin-bottom: 70px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#wrap2{\r\n");
      out.write("\t\t/* border: solid 1px black; */\r\n");
      out.write("\t\theight: 300px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#forgot{\r\n");
      out.write("\t    /* border: solid 1px blue; */\r\n");
      out.write("\t    text-decoration: none;\r\n");
      out.write("\t    padding: 0px;\r\n");
      out.write("\t    \r\n");
      out.write("\t    \r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\t.linka{\r\n");
      out.write("\t\ttext-decoration: none;\r\n");
      out.write("\t\tborder: none;\r\n");
      out.write("\t\tcolor: black;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t\r\n");
      out.write("\t$(document).ready(function(){\r\n");
      out.write("\r\n");
      out.write("\t\t$(\"#loginButton\").click(function(){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tgoLogin();\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(\"#pwd\").keydown(function(event){  // keydown : 키보드 눌렀을 때  <-> keyup : 누르고 뗄때\r\n");
      out.write("\t\t\t                                     // event : key down 이벤트\r\n");
      out.write("\t\t\t// 암호입력란에 엔터를 했을 경우, 로그인 시도한다.\r\n");
      out.write("\t\t\tif(event.keyCode == 13) {  // key down 한 이벤트의 키가 1. ==> // 엔터 : keyCode 13 (대소문자 구분!)\r\n");
      out.write("\t\t\t\tgoLogin();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\t\t\r\n");
      out.write("\t\t   \r\n");
      out.write("\t});  // end of 4(document).ready()==========================\r\n");
      out.write("\t\t\r\n");
      out.write("\tfunction goLogin(){\r\n");
      out.write("\t\t// alert(\"로그인 처리\");\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tvar loginUserid = $(\"#userid\").val().trim();\r\n");
      out.write("\t\tvar loginPwd = $(\"#pwd\").val().trim();\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tif(loginUserid == \"\") {\r\n");
      out.write("\t\t\talert(\"아이디 항목은 필수 입력값입니다.\");\r\n");
      out.write("\t\t\t$(\"#userid\").val(\"\").focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(loginPwd == \"\") {\r\n");
      out.write("\t\t\talert(\"패스워드 항목은 필수 입력값입니다.\");\r\n");
      out.write("\t\t\t$(\"#pwd\").val(\"\").focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tvar frm = document.loginFrm;\r\n");
      out.write("\t\tfrm.method = \"post\";\r\n");
      out.write("\t\tfrm.action =\"");
      out.print( request.getContextPath() );
      out.write("/member/loginEnd.sa\";\r\n");
      out.write("\t\tfrm.submit();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t}; // end of goLogin()=================\t\r\n");
      out.write("\t\t\r\n");
      out.write("</script>\t\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<form name=\"loginFrm\">\r\n");
      out.write("<div id=\"wrap\">\r\n");
      out.write("\t\t<div id=\"fontlogin\"><h4 style=\"font-weight: bold; text-underline-position: under;\">LOG IN</h4></div>\r\n");
      out.write("\t\t<div id=\"wrap2\">\r\n");
      out.write("\t\t  <div id=\"loginbox\">\r\n");
      out.write("\t\t\t<table id=\"loginmain\" style=\"display: inline-block; height: 110px;\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"width: 20%; font-weight: bold; font-size: 14pt;\">ID&nbsp;<span class=\"star\"></span></td>\r\n");
      out.write("\t\t\t\t\t<td style=\"width: 80%; text-align: left;\">\r\n");
      out.write("\t\t\t\t\t    <input type=\"text\" style=\"border: solid 1.5px black; height: 30px; width: 230px;\" name=\"userid\" id=\"userid\" class=\"requiredInfo\" required />&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t    <img id=\"idcheck\" style=\"vertical-align: middle;\" />\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td rowspan=\"2\">\r\n");
      out.write("\t\t\t\t\t <a href=\"#\" id=\"loginButton\"><img src=\"/Semi/images/btn_login.gif\"/></a>\r\n");
      out.write("\t\t\t\t\t</td> \r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"width: 20%; font-weight: bold; font-size: 14pt;\">PASS&nbsp;<span class=\"star\"></span></td>\r\n");
      out.write("\t\t\t\t\t<td style=\"width: 80%; text-align: left;\"><input type=\"password\" style=\"border: solid 1.5px black; height: 30px; width: 230px;\"name=\"pwd\" id=\"pwd\" class=\"requiredInfo\" required />\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\t\t\t\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<ul id=\"forgot\" style=\"font-size: 14pt; font-weight: bold; margin: 15px 0px 15px 0px;\"/>\r\n");
      out.write("\t\t\t\t\t\t<li style=\"display: inline-block;\"><a class=\"linka\" href=\"/Semi/member/idFind.sa\">Forgot Your ID? &</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li style=\"display: inline-block; margin-bottom: 35px;\"><a class=\"linka\" href=\"/Semi/member/passwordFind.sa\">Forgot Your Password?</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<div style=\"border: solid 1.5px black;\"></div><br/>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<table style=\"width: 100%; height: 70px;\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td><span style=\"border: none; font-size: 14pt; font-weight: bold;\">Are you not a member? Join Now!</span></td>\r\n");
      out.write("\t\t\t\t\t<td rowspan=\"2\">\r\n");
      out.write("\t\t\t\t\t <a href=\"/Semi/member/join.sa\" style=\"float:right;\"><img  src=\"/Semi/images/btn_join.gif\"/></a>\r\n");
      out.write("\t\t\t\t\t</td> \r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../footer.jsp", out, false);
      out.write("  \r\n");
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
