/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 10:54:41 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.magazine;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ingredient_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1572935174000L));
    _jspx_dependants.put("jar:file:/C:/myjsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Semi_Team1/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
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
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

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
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
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
      out.write("    \r\n");
 
	String ctxPath = request.getContextPath();

      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../header_dog.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<title>원료사전</title>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print( ctxPath);
      out.write("/js/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("\r\n");
      out.write("/* tab */\r\n");
      out.write(".tab_menu {\r\n");
      out.write("\tdisplay: table;\r\n");
      out.write("  \tmargin-left:auto;\r\n");
      out.write("  \tmargin-right: auto;\r\n");
      out.write("  \tpadding: 0px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".tab_menu li {\t\r\n");
      out.write("\tpadding: 20px 50px 3px 50px;\r\n");
      out.write(" \tlist-style: none;\r\n");
      out.write("    float: left;\r\n");
      out.write("    border-bottom: 2px solid #dcdcdc;\r\n");
      out.write("    color: #000;\r\n");
      out.write("    font-size: 20px;\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    cursor: pointer;\r\n");
      out.write("    line-height: 280%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".tab_menu li a {\r\n");
      out.write("    display: block;\r\n");
      out.write("    color: inherit;\r\n");
      out.write("    font: inherit;\r\n");
      out.write("    text-decoration: none;\r\n");
      out.write("    margin: 0 auto;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".tab_menu li.over {\r\n");
      out.write("    border-bottom: 2px solid #9d6849;\r\n");
      out.write("    color: #9d6849;\r\n");
      out.write("}\r\n");
      out.write("/* /tab */\r\n");
      out.write("\r\n");
      out.write(".container {\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\tmargin: 0 auto;\r\n");
      out.write("\tpadding: 0px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* txt_title */\r\n");
      out.write(".txt_title {\r\n");
      out.write("\tpadding: 70px 0 40px 0; \r\n");
      out.write("\ttext-align:center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".k_s {\r\n");
      out.write("    margin-bottom: 5px;\r\n");
      out.write("    font-size: 18px;\r\n");
      out.write("    font-family: sans-serif;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".e_b {\r\n");
      out.write("    font-size: 56px;\r\n");
      out.write("    font-family: sans-serif;\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("/* /txt_title */\r\n");
      out.write("\r\n");
      out.write("/* searchbar */\r\n");
      out.write("* {\r\n");
      out.write("  box-sizing: border-box;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("form.example input[type=text] {\r\n");
      out.write("  padding: 10px;\r\n");
      out.write("  font-size: 15px;\r\n");
      out.write("  border: 1px solid grey;\r\n");
      out.write("  float: left;\r\n");
      out.write("  width: 80%;\r\n");
      out.write("  background: white;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("form.example button {\r\n");
      out.write("  float: left;\r\n");
      out.write("  width: 20%;\r\n");
      out.write("  padding: 10px;\r\n");
      out.write("  background: light gray;\r\n");
      out.write("  color: white;\r\n");
      out.write("  font-size: 15px;\r\n");
      out.write("  border: 1px solid grey;\r\n");
      out.write("  border-left: none;\r\n");
      out.write("  cursor: pointer;\r\n");
      out.write("  \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("form.example button:hover {\r\n");
      out.write("  background: #0b7dda;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("form.example::after {\r\n");
      out.write("  content: \"\";\r\n");
      out.write("  clear: both;\r\n");
      out.write("  display: table;\r\n");
      out.write("}\r\n");
      out.write("/* /searchbar */\r\n");
      out.write("\r\n");
      out.write(".line {\r\n");
      out.write("    width: 1300px;\r\n");
      out.write("    height: 2px;\r\n");
      out.write("    margin: 40px auto;\r\n");
      out.write("    background: gray;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* table */\r\n");
      out.write("table{\t\r\n");
      out.write("\twidth: 1250px;\r\n");
      out.write("\tmargin: 0 auto;\t\r\n");
      out.write("\tborder: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("td {\r\n");
      out.write("\tpadding: 35px 20px 35px 20px;\r\n");
      out.write("\tborder-bottom: 0.5px solid lightgray;\r\n");
      out.write("}\r\n");
      out.write("/* /table */\r\n");
      out.write("\r\n");
      out.write("/* pageBar */\r\n");
      out.write("#pageBar {\r\n");
      out.write("\tmargin: 10px 0;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    padding: 65px 0;\r\n");
      out.write("    color: black;\r\n");
      out.write("    font-size: 14pt; \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".move {\r\n");
      out.write("\tcolor: silver;\r\n");
      out.write("\tpadding: 7px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".move:hover { \r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tbackground-color: silver;\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("}\r\n");
      out.write("/* /pageBar */\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("\t$(document).ready(function(){\r\n");
      out.write("\t\r\n");
      out.write("\t\tif(\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${searchWord}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" != \"\") {  \r\n");
      out.write("\t\t\t$(\"#searchWord\").val(\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${searchWord}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\");\t\r\n");
      out.write("\t\t}  \r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(\"#searchWord\").bind(\"keydown\", function(event){\r\n");
      out.write("\t\t\tif(event.keyCode == 13) {  \r\n");
      out.write("\t\t\t\tgoSearch();\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\r\n");
      out.write("\t});// end of $(document).ready()-----------------------\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\tfunction goSearch() {\r\n");
      out.write("\t\tvar frm = document.searchFrm;\r\n");
      out.write("\t\tfrm.method = \"GET\";\r\n");
      out.write("\t\tfrm.action = \"ingredient.dog\"; \r\n");
      out.write("\t\tfrm.submit();\r\n");
      out.write("\t}\t\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("\t\r\n");
      out.write("\t<div><img src=\"/Semi_Team1/images/magazine/magazine_title_img.jpg\" style=\"width: 100%;\"></div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<ul class=\"tab_menu\">\r\n");
      out.write("\t\t      <li><a href=\"/Semi_Team1/magazine/cal.dog\">하루 칼로리 계산</a></li>\r\n");
      out.write("\t\t      <li><a href=\"/Semi_Team1/magazine/nutrient.dog\">영양성분</a></li> \r\n");
      out.write("\t\t      <li class=\"over\"><a href=\"/Semi_Team1/magazine/ingredient.dog\">원료사전</a></li>\r\n");
      out.write("\t\t      <li><a href=\"/Semi_Team1/magazine/humanGrage.dog\">휴먼 그레이드</a></li>\r\n");
      out.write("\t\t      <li><a href=\"/Semi_Team1/magazine/studio.dog\">이달의 우수 제조시설</a></li>\r\n");
      out.write("\t\t      <li><a href=\"/Semi_Team1/magazine/withDog.dog\">반려견 동반출근</a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"txt_title\">\r\n");
      out.write("\t    <div class=\"k_s\">원료사전</div>\r\n");
      out.write("\t    <div class=\"e_b\">INGREDIENT DICTIONARY</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("  \t\t\r\n");
      out.write("\t<form name=\"searchFrm\" class=\"example\" style=\"margin:auto; width:600px; padding: 15px 0 ;\">\r\n");
      out.write("  \t\t<input type=\"text\" placeholder=\"검색하실 원료를 입력해주세요\" id=\"searchWord\" name=\"searchWord\" />\r\n");
      out.write("  \t\t<input type=\"text\" style=\"display: none;\" />\r\n");
      out.write("  \t\t<button type=\"button\" onclick=\"goSearch();\"><i class=\"fa fa-search\"></i></button>\r\n");
      out.write("\t</form>\r\n");
      out.write("\t\t\r\n");
      out.write("\t<div class=\"line\"></div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"content\">\r\n");
      out.write("\t\r\n");
      out.write("\t\t<table>\r\n");
      out.write("\t\t\t");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"pageBar\">  \r\n");
      out.write("\t");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageBar}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(" \r\n");
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
      // /WEB-INF/magazine/ingredient.jsp(220,3) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${empty requestScope.list}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
      if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t\t<tr>\r\n");
          out.write("\t\t\t\t\t<td colspan=\"3\" style=\"text-align: center; font-size: 16pt;\">해당하는 원료가 없습니다.</td>\r\n");
          out.write("\t\t\t\t</tr>\r\n");
          out.write("\t\t\t");
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

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f1_reused = false;
    try {
      _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f1.setParent(null);
      // /WEB-INF/magazine/ingredient.jsp(226,3) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty requestScope.list}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t\t");
          if (_jspx_meth_c_005fforEach_005f0(_jspx_th_c_005fif_005f1, _jspx_page_context))
            return true;
          out.write("\r\n");
          out.write("\t\t\t");
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

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fif_005f1, javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fif_005f1);
      // /WEB-INF/magazine/ingredient.jsp(227,4) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("ingredientvo");
      // /WEB-INF/magazine/ingredient.jsp(227,4) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/magazine/ingredient.jsp(227,4) '${list}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${list}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("\t\t\t\t\t<tr>\r\n");
            out.write("\t\t\t\t\t\t<td style=\"font-size: 13pt; font-weight: bold; width: 200px; text-align: center;\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ingredientvo.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("\t\t\t\t\t\t<td><img src=\"/Semi_Team1/images/magazine/ingredient/");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ingredientvo.photoname}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(".jpg\" /></td> \r\n");
            out.write("\t\t\t\t\t\t<td style=\"font-size: 12pt; line-height: 200%; letter-spacing: 1px; word-spacing: 1px;\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ingredientvo.explanation}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("\t\t\t\t\t</tr>\r\n");
            out.write("\t\t\t\t");
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
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}
