/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 09:19:11 UTC
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

      out.write('\r');
      out.write('\n');

	String ctxPath = request.getContextPath();

      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(ctxPath);
      out.write("/js/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("\t\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("  //===== TOP 버튼 ===== \\\\\r\n");
      out.write("  var mybutton = document.getElementById(\"myBtn\");\r\n");
      out.write("\t\r\n");
      out.write("  //When the user scrolls down 20px from the top of the document, show the button\r\n");
      out.write("  window.onscroll = function() {scrollFunction()};\r\n");
      out.write("\t\r\n");
      out.write("  function scrollFunction() {\r\n");
      out.write("\tif (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {\r\n");
      out.write("\t  mybutton.style.display = \"block\";\r\n");
      out.write("\t} else {\r\n");
      out.write("\t  mybutton.style.display = \"none\";\r\n");
      out.write("\t}\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  //When the user clicks on the button, scroll to the top of the document\r\n");
      out.write("  function topFunction() {\r\n");
      out.write("\tdocument.body.scrollTop = 0;\r\n");
      out.write("\tdocument.documentElement.scrollTop = 0;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  // ==== 검색창 ==== \\\\\r\n");
      out.write("  function openSearch() {\r\n");
      out.write("\tdocument.getElementById(\"myOverlay\").style.display = \"block\";\r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("  function closeSearch() {\r\n");
      out.write("    document.getElementById(\"myOverlay\").style.display = \"none\";\r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("  // === list 정렬버튼 === \\\\\r\n");
      out.write("  $(function(){\r\n");
      out.write("\t$(\"div.arrayIcon #array1\").html(\"<img src='https://www.giordano.co.kr/_skin/giordano/img/button/list_type0.png' width='30' height='30' style='transform:rotate(90deg)'/>\");\r\n");
      out.write("\t$(\"div.arrayIcon #array3\").html(\"<img src='https://www.giordano.co.kr/_skin/giordano/img/button/list_type1_over.png' width='30' height='30'/>\");\r\n");
      out.write("\t\r\n");
      out.write("\t$(\"div.arrayIcon #array1\").click(function(){\r\n");
      out.write("\t  $(\"div.arrayIcon #array1\").html(\"<img src='https://www.giordano.co.kr/_skin/giordano/img/button/list_type0_over.png' width='30' height='30' style='transform:rotate(90deg)'/>\");\r\n");
      out.write("\t  $(\"div.arrayIcon #array3\").html(\"<img src='https://www.giordano.co.kr/_skin/giordano/img/button/list_type1.png' width='30' height='30'/>\");\r\n");
      out.write("    });\r\n");
      out.write("\t\t\r\n");
      out.write("    $(\"div.arrayIcon #array3\").click(function(){\r\n");
      out.write("\t  $(\"div.arrayIcon #array1\").html(\"<img src='https://www.giordano.co.kr/_skin/giordano/img/button/list_type0.png' width='30' height='30' style='transform:rotate(90deg)'/>\");\r\n");
      out.write("\t  $(\"div.arrayIcon #array3\").html(\"<img src='https://www.giordano.co.kr/_skin/giordano/img/button/list_type1_over.png' width='30' height='30'/>\");\r\n");
      out.write("\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t// === List 정렬 종류 === \\\\\r\n");
      out.write("\t$(\"div.list2\").hide();\r\n");
      out.write("\t$(\"div.arrayIcon #array1\").click(function(){\r\n");
      out.write("\t  $(\"div.list1\").hide();\r\n");
      out.write("\t  $(\"div.list2\").show();\r\n");
      out.write("\t  $(\"#list21\").addClass(\"active\");\r\n");
      out.write("\t});\r\n");
      out.write("\t$(\"div.arrayIcon #array3\").click(function(){\r\n");
      out.write("\t  $(\"div.list2\").hide();\r\n");
      out.write("\t  $(\"div.list1\").show();\r\n");
      out.write("\t  $(\"#list11\").addClass(\"active\");\r\n");
      out.write("\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t$(\"a.listNumber\").click(function(){\r\n");
      out.write("\t  $(this).addClass(\"active\");\r\n");
      out.write("\t  $(\"div.pagination a\").not($(this)).removeClass(\"active\");\r\n");
      out.write("\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t/* 작업내용 */\t\r\n");
      out.write("\t$('#login-form-link').click(function(e) {\r\n");
      out.write("\t  $(\"#login-form\").delay(100).fadeIn(100);\r\n");
      out.write("\t  $(\"#register-form\").fadeOut(100);\r\n");
      out.write("\t  $('#register-form-link').removeClass('active');\r\n");
      out.write("\t  $(this).addClass('active');\r\n");
      out.write("\t  e.preventDefault();\r\n");
      out.write("\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t$('#register-form-link').click(function(e) {\r\n");
      out.write("\t  $(\"#register-form\").delay(100).fadeIn(100);\r\n");
      out.write("\t  $(\"#login-form\").fadeOut(100);\r\n");
      out.write("\t  $('#login-form-link').removeClass('active');\r\n");
      out.write("\t  $(this).addClass('active');\r\n");
      out.write("\t  e.preventDefault();\r\n");
      out.write("\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t$(\"#login-submit\").click(function() {\r\n");
      out.write("\t  goLogin();\r\n");
      out.write("\t}); \r\n");
      out.write("\t\r\n");
      out.write("\t$(\"#login_up-submit\").click(function(){\r\n");
      out.write("\t  location.href=\"/SemiProject/member/memberFormStart.army\";\t\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\t$(\"#userpw\").keydown(function(event) {\r\n");
      out.write("\t  if (event.keyCode == 13) {\r\n");
      out.write("\t\tgoLogin();\r\n");
      out.write("\t  }\r\n");
      out.write("\t}); \r\n");
      out.write("\t\r\n");
      out.write("\tvar loginUserid = localStorage.getItem('saveid');\t\r\n");
      out.write("\tif(loginUserid != null) {\r\n");
      out.write("\t  $(\"#loginUserid\").val(loginUserid);\r\n");
      out.write("\t  $(\"input:checkbox[id=saveid]\").prop(\"checked\", true);\r\n");
      out.write("\t} \r\n");
      out.write("\t\t\r\n");
      out.write("  }); // $(document).ready(function() ----------------------------------------------\r\n");
      out.write("\r\n");
      out.write("  function goLogin() {\t\r\n");
      out.write("    var loginUserid = $(\"#userid\").val().trim();\r\n");
      out.write("\tvar loginPwd = $(\"#userpw\").val().trim();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\tif(loginUserid == \"\") {\r\n");
      out.write("\t  alert(\"아이디를 입력하세요!!\");\r\n");
      out.write("\t  $(\"#userid\").val(\"\");\r\n");
      out.write("\t  $(\"#userid\").focus();\r\n");
      out.write("\t  return;\r\n");
      out.write("\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\tif(loginPwd == \"\") {\r\n");
      out.write("\t  alert(\"비밀번호를 입력하세요!!\");\r\n");
      out.write("\t  $(\"#userpw\").val(\"\");\r\n");
      out.write("\t  $(\"#userpw\").focus();\r\n");
      out.write("\t  return;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\t// 로컬 스토리지(localStorage)를 사용하여 userid 값 저장시키기 \r\n");
      out.write("\t// 아이저장이 체크되어 있으면 \r\n");
      out.write("\tif( $(\"input:checkbox[id=saveid]\").is(\":checked\") ) { \r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t  var loginUserid = localStorage.getItem('saveid');\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t  if(loginUserid != null && loginUserid != $(\"#userid\").val()) {\r\n");
      out.write("\t\tlocalStorage.removeItem('saveid');\r\n");
      out.write("\t\tlocalStorage.setItem('saveid', $(\"#userid\").val()); \r\n");
      out.write("\t  }\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t  if(loginUserid == null) {\r\n");
      out.write("\t\tlocalStorage.setItem('saveid', $(\"#userid\").val());\r\n");
      out.write("\t  }\r\n");
      out.write("\t}\t   \r\n");
      out.write("\t// 아이저장이 체크되어있지 않음 \r\n");
      out.write("\telse {\r\n");
      out.write("\t  var loginUserid = localStorage.getItem('saveid');\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t  if(loginUserid != null) {\r\n");
      out.write("\t\tlocalStorage.removeItem('saveid');\r\n");
      out.write("\t  }\r\n");
      out.write("\t} \r\n");
      out.write("\t\t   \r\n");
      out.write("\tvar frm = document.loginFrm;\r\n");
      out.write("\tfrm.method = \"POST\";\r\n");
      out.write("\tfrm.action = \"");
      out.print(request.getContextPath());
      out.write("/member/loginEnd.army\";\r\n");
      out.write("\tfrm.submit();\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container-fluid text-center\">    \r\n");
      out.write("  <div class=\"row content\">\r\n");
      out.write("\t<!-- 작업내용 -->\r\n");
      out.write("    <div class=\"col-md-6 col-md-offset-3 bb\">\r\n");
      out.write("\t  <div class=\"panel panel-login\">\r\n");
      out.write("\t\t<div class=\"panel-heading\">\r\n");
      out.write("\t\t  <div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"col-xs-6\">\r\n");
      out.write("\t\t\t  <a href=\"#\" class=\"active\" id=\"login-form-link\">로그인</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-xs-6\">\r\n");
      out.write("\t\t\t  <a href=\"#\" id=\"register-form-link\">비회원로그인 </a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t\t  <hr/>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"panel-body\">\r\n");
      out.write("\t\t  <div class=\"row\">\r\n");
      out.write("\t\t    <div class=\"col-lg-9\">\r\n");
      out.write("\t\t\t  <form name=\"loginFrm\" id=\"login-form\" role=\"form\" style=\"display: block;\">\r\n");
      out.write("\t\t\t    <div class=\"form-group\">\r\n");
      out.write("\t\t\t\t  <input type=\"text\"  id=\"userid\" name=\"userid\" tabindex=\"1\" class=\"form-control\" placeholder=\"아이디\" value=\"\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t  <input type=\"password\" name=\"userpw\" id=\"userpw\"  tabindex=\"2\" style=\"height: 45px\" class=\"form-control\" placeholder=\"비밀번호\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"form-group text-center\" style=\"text-align: left;\">\r\n");
      out.write("\t\t\t\t  <input type=\"checkbox\" tabindex=\"3\" class=\"\" name=\"saveid\" id=\"saveid\">\r\n");
      out.write("\t\t\t\t  <label for=\"saveid\"> 아이디저장</label>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t  <div class=\"row\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6 col-sm-offset-3\">\r\n");
      out.write("\t\t\t\t\t  <input type=\"button\" name=\"login-submit\" id=\"login-submit\" tabindex=\"4\" class=\"form-control btn btn-login\" value=\"로그인\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6 col-sm-offset-3\">\r\n");
      out.write("\t\t\t\t\t  <input type=\"button\" name=\"login_up-submit\" id=\"login_up-submit\" tabindex=\"4\" class=\"form-control btn btn-login\" value=\"회원가입\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t  <div class=\"row\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-9\">\r\n");
      out.write("\t\t\t\t\t  <div class=\"text-center\">\r\n");
      out.write("\t\t\t\t\t\t<a tabindex=\"5\" style=\"cursor: pointer;\" data-toggle=\"modal\" data-target=\"#userIdfind\" data-dismiss=\"modal\">아이디찾기</a> /\r\n");
      out.write("\t\t\t\t\t\t<a tabindex=\"5\" style=\"cursor: pointer;\" data-toggle=\"modal\" data-target=\"#userpwFind\" data-dismiss=\"modal\" data-backdrop=\"static\">비밀번호찾기</a>\r\n");
      out.write("\t\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t  </form>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t  </div>\r\n");
      out.write("\t</div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("<div class=\"modal fade\" id=\"userIdfind\" role=\"dialog\">\r\n");
      out.write("  <div class=\"modal-dialog\">\r\n");
      out.write("    <!-- Modal content-->\r\n");
      out.write("    <div class=\"modal-content\">\r\n");
      out.write("      <div class=\"modal-header\">\r\n");
      out.write("        <button type=\"button\" class=\"close myclose\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("        <h4 class=\"modal-title\">아이디 찾기</h4>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-body\" style=\"height: 300px; width: 100%;\">\r\n");
      out.write("        <div id=\"idFind\">\r\n");
      out.write("          <iframe style=\"border: none; width: 100%; height: 280px;\"");
      out.write(">\r\n");
      out.write("          </iframe>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-footer\">\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-default myclose\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>  \r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"modal fade\" id=\"userpwFind\" role=\"dialog\">\r\n");
      out.write("  <div class=\"modal-dialog\">  \r\n");
      out.write("    <!-- Modal content-->\r\n");
      out.write("    <div class=\"modal-content\">\r\n");
      out.write("      <div class=\"modal-header\">\r\n");
      out.write("        <button type=\"button\" class=\"close myclose\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("        <h4 class=\"modal-title\">비밀번호 찾기</h4>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-body\">\r\n");
      out.write("        <div id=\"pwFind\">\r\n");
      out.write("          <iframe style=\"border: none; width: 100%; height: 350px;\" ");
      out.write(">  \r\n");
      out.write("          </iframe>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-footer\">\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-default myclose\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>  \r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("  \r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\t\r\n");
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