/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 09:19:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.customercenter;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class noticeOneDetail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1574935130000L));
    _jspx_dependants.put("jar:file:/C:/myjsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/SemiProject/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
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
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
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
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
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
      out.write("\tdocument.getElementById(\"myOverlay\").style.display = \"none\";\r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("  // === list 정렬버튼 === \\\\\r\n");
      out.write("  $(function(){\r\n");
      out.write("\t$(\"div.arrayIcon #array1\").html(\"<img src='https://www.giordano.co.kr/_skin/giordano/img/button/list_type0.png' width='30' height='30' style='transform:rotate(90deg)'/>\");\r\n");
      out.write("\t$(\"div.arrayIcon #array3\").html(\"<img src='https://www.giordano.co.kr/_skin/giordano/img/button/list_type1_over.png' width='30' height='30'/>\");\r\n");
      out.write("\t\t\r\n");
      out.write("\t$(\"div.arrayIcon #array1\").click(function(){\r\n");
      out.write("\t  $(\"div.arrayIcon #array1\").html(\"<img src='https://www.giordano.co.kr/_skin/giordano/img/button/list_type0_over.png' width='30' height='30' style='transform:rotate(90deg)'/>\");\r\n");
      out.write("\t  $(\"div.arrayIcon #array3\").html(\"<img src='https://www.giordano.co.kr/_skin/giordano/img/button/list_type1.png' width='30' height='30'/>\");\r\n");
      out.write("\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t$(\"div.arrayIcon #array3\").click(function(){\r\n");
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
      out.write("\t});\t\r\n");
      out.write("\t$(\"a.listNumber\").click(function(){\r\n");
      out.write("\t\t$(this).addClass(\"active\");\r\n");
      out.write("\t\t$(\"div.pagination a\").not($(this)).removeClass(\"active\");\r\n");
      out.write("\t});\t\r\n");
      out.write("\t/* 작업내용 */\t\r\n");
      out.write("  });\r\n");
      out.write("\t\r\n");
      out.write("  function gosubmit(object) {\t\r\n");
      out.write("\tif(confirm('정말 삭제 하시겠습니까?')) {\r\n");
      out.write("\t  var index = object; \r\n");
      out.write("\t  location.href=\"");
      out.print( ctxPath);
      out.write("/customercenter/noticeListDelete.army?index=\"+index+\"\";\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\telse {\r\n");
      out.write("\t  location.href=\"javascript:history.go(0);\";\t\r\n");
      out.write("\t}\t\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  function goUpdate(index, noticetile, noticecontent) {\r\n");
      out.write("\tif(confirm('정말 수정 하시겠습니까?')) {\r\n");
      out.write("\t  var frm = document.noticeFrm;\t\r\n");
      out.write("\t  frm.method = \"GET\";\r\n");
      out.write("\t  frm.action = \"");
      out.print( ctxPath);
      out.write("/customercenter/noticeListUpdateStart.army\";\r\n");
      out.write("\t  frm.submit();\r\n");
      out.write("\t}\r\n");
      out.write("\telse {\r\n");
      out.write("\t  location.href=\"javascript:history.go(0);\";\t\r\n");
      out.write("\t}\r\n");
      out.write("  }\r\n");
      out.write("</script>\r\n");
      out.write("  \r\n");
      out.write("<div class=\"container-fluid text-center\">    \r\n");
      out.write("  <div class=\"row content\">\r\n");
      out.write("\t<!-- 작업 시작 -->\t\r\n");
      out.write("\t");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t");
      //  c:if
      org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
      boolean _jspx_th_c_005fif_005f1_reused = false;
      try {
        _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
        _jspx_th_c_005fif_005f1.setParent(null);
        // /WEB-INF/customercenter/noticeOneDetail.jsp(114,1) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty list && sessionScope.loginuser.userid == 'admin'}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
        int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
        if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\t\r\n");
            out.write("\t  <div class=\"col-md-7 col-md-offset-2\"> \r\n");
            out.write("\t\t<form name=\"noticeFrm\">\r\n");
            out.write("\t\t  <table class=\"table table-striped\">\r\n");
            out.write("\t\t\t<tbody>\r\n");
            out.write("\t\t\t  <tr>\r\n");
            out.write("\t\t\t\t<td colspan=\"4\" class=\"text-center\">\r\n");
            out.write("\t\t\t\t  <input type=\"button\" value=\"삭제하기\" onclick=\"gosubmit('");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list.noticeno}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("')\" class=\"btn btn-danger\">&nbsp;&nbsp;\r\n");
            out.write("\t\t\t\t  <input type=\"button\" class=\"btn btn-primary\" onclick=\"location.href='");
            out.print( request.getContextPath());
            out.write("/customercenter/notice.army'\" value=\"목록보기\">&nbsp;&nbsp;\r\n");
            out.write("\t\t\t\t  <input type=\"button\" value=\"수정하기\" onclick=\"goUpdate()\" class=\"btn btn-success\">&nbsp;&nbsp;\r\n");
            out.write("\t\t\t\t  <input type=\"hidden\" value='");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list.noticeno}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("' name=\"noticeno\">\r\n");
            out.write("\t\t\t\t  <input type=\"hidden\" value='");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list.noticetile}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("' name=\"noticetile\">\r\n");
            out.write("\t\t\t\t  <input type=\"hidden\" value='");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list.noticecontent}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("' name=\"noticecontent\">\r\n");
            out.write("\t\t\t\t</td>\r\n");
            out.write("\t\t\t  </tr>\r\n");
            out.write("\t\t\t</tbody>\r\n");
            out.write("\t\t  </table>\r\n");
            out.write("\t\t</form>\t\t\t\t\r\n");
            out.write("\t  </div>\r\n");
            out.write("\t");
            int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
        _jspx_th_c_005fif_005f1_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f1_reused);
      }
      out.write("\r\n");
      out.write("     <!-- 작업 끝 -->\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("    \r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("    ");
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
      // /WEB-INF/customercenter/noticeOneDetail.jsp(101,1) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty list}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
      if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\t\r\n");
          out.write("\t  <div class=\"col-md-7 col-md-offset-2\"> \r\n");
          out.write("\t\t<h3 style=\"margin-bottom: 50px;\"> ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list.noticetile}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</h3>\t\t\r\n");
          out.write("\t\t<table class=\"table table-striped\">\r\n");
          out.write("\t\t  <tbody>\r\n");
          out.write("\t\t\t<tr>\r\n");
          out.write("\t\t\t  <td style=\"text-align: center; \">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list.noticecontent }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("\t\t\t</tr>\r\n");
          out.write("\t\t  </tbody>\r\n");
          out.write("\t\t</table>\r\n");
          out.write("\t  </div>\r\n");
          out.write("\t");
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
}
