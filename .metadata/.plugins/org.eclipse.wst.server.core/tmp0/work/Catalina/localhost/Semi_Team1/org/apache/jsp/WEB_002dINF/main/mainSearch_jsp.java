/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 10:52:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mainSearch_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1572935174000L));
    _jspx_dependants.put("jar:file:/C:/myjsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Semi_Team1/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
    _jspx_dependants.put("jar:file:/C:/myjsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Semi_Team1/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/fmt.tld", Long.valueOf(1425946270000L));
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
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody;

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
    _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.release();
    _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody.release();
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
      out.write(" \r\n");
      out.write("   \r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../header_dog.jsp", out, false);
      out.write(" \r\n");
      out.write("    \r\n");
      out.write("<title>검색어 [");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${searchWord }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("]</title>    \r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("<div id=\"mainSearch_body\">\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"div1\">Home > 상품 검색 결과 리스트</div>\r\n");
      out.write("\t<div class=\"div2\">검색</div>\r\n");
      out.write("\t<div class=\"div3\">\r\n");
      out.write("\t\t<div style=\"outline: none;border:solid 2px black;width: 50%; margin:0 auto; background-color: white;\">\r\n");
      out.write("\t\t\t<input type=\"text\" name=\"searchWord\" id=\"searchWord\" >\r\n");
      out.write("\t\t\t<img id=\"mainSearchBtn\" width=\"28\" height=\"28\" style=\"cursor: pointer;\" src=\"/Semi_Team1/images/header&footer/search.png\" >\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"div4\">\r\n");
      out.write("\t\t<div style=\"width:60%;display:inline-block;color:gray;\">총 <span style=\"color:red;font-weight: bold;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ searchAllPage }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</span> 개의 상품이 검색되었습니다.</div>\r\n");
      out.write("\t\t<div style=\"width:39%;display:inline-block;text-align:right;\">\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li class=\"li_border_right\"><a id=\"searchBy1\">신상품순</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"li_border_right\"><a id=\"searchBy2\">인기상품순</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"li_border_right\"><a id=\"searchBy3\">낮은가격순</a></li>\r\n");
      out.write("\t\t\t\t<li><a id=\"searchBy4\">높은가격순</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"searchList\">\r\n");
      out.write("\t\t");
      //  c:if
      org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
      boolean _jspx_th_c_005fif_005f0_reused = false;
      try {
        _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
        _jspx_th_c_005fif_005f0.setParent(null);
        // /WEB-INF/main/mainSearch.jsp(34,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ not empty searchList }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
        int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
        if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("\t\t\t");
            //  c:forEach
            org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
            boolean _jspx_th_c_005fforEach_005f0_reused = false;
            try {
              _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
              _jspx_th_c_005fforEach_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fif_005f0);
              // /WEB-INF/main/mainSearch.jsp(35,3) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
              _jspx_th_c_005fforEach_005f0.setVar("map");
              // /WEB-INF/main/mainSearch.jsp(35,3) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
              _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/main/mainSearch.jsp(35,3) '${ searchList }'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${ searchList }",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
              // /WEB-INF/main/mainSearch.jsp(35,3) name = varStatus type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
              _jspx_th_c_005fforEach_005f0.setVarStatus("status");
              int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
              try {
                int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
                if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                  do {
                    out.write("\r\n");
                    out.write("\t\t\t\t\r\n");
                    out.write("\t\t\t\t\t");
                    //  c:if
                    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
                    boolean _jspx_th_c_005fif_005f1_reused = false;
                    try {
                      _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
                      _jspx_th_c_005fif_005f1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fforEach_005f0);
                      // /WEB-INF/main/mainSearch.jsp(37,5) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
                      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ status.count%4 == 0 }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
                      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
                      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                        do {
                          out.write("\r\n");
                          out.write("\t\t\t\t\t\t<div class=\"prodList\">\r\n");
                          out.write("\t\t\t\t\t\t\t<div class=\"imageName\">\r\n");
                          out.write("\t\t\t\t\t\t\t\t<a href=\"");
                          out.print( request.getContextPath());
                          out.write("/purchase/purchaseContent.dog?prdcode=");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.product_code }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
                          out.write("\">\r\n");
                          out.write("\t\t\t\t\t\t\t\t\t<img src=\"");
                          out.print( request.getContextPath());
                          out.write("/images/");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.product_explanation }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
                          out.write("\">\r\n");
                          out.write("\t\t\t\t\t\t\t\t</a>\r\n");
                          out.write("\t\t\t\t\t\t\t</div>\r\n");
                          out.write("\t\t\t\t\t\t\t<div class=\"prodName\">");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.product_name }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
                          out.write("</div>\r\n");
                          out.write("\t\t\t\t\t\t\t<div class=\"price\">");
                          if (_jspx_meth_fmt_005fformatNumber_005f0(_jspx_th_c_005fif_005f1, _jspx_page_context, _jspx_push_body_count_c_005fforEach_005f0))
                            return;
                          out.write("원</div>\r\n");
                          out.write("\t\t\t\t\t\t</div><br>\r\n");
                          out.write("\t\t\t\t\t");
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
                    out.write("\t\t\t\t\t\r\n");
                    out.write("\t\t\t\t\t");
                    //  c:if
                    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
                    boolean _jspx_th_c_005fif_005f2_reused = false;
                    try {
                      _jspx_th_c_005fif_005f2.setPageContext(_jspx_page_context);
                      _jspx_th_c_005fif_005f2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fforEach_005f0);
                      // /WEB-INF/main/mainSearch.jsp(49,5) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
                      _jspx_th_c_005fif_005f2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ status.count%4 != 0 }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
                      int _jspx_eval_c_005fif_005f2 = _jspx_th_c_005fif_005f2.doStartTag();
                      if (_jspx_eval_c_005fif_005f2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                        do {
                          out.write("\r\n");
                          out.write("\t\t\t\t\t\t<div class=\"prodList\">\r\n");
                          out.write("\t\t\t\t\t\t\t<div class=\"imageName\">\r\n");
                          out.write("\t\t\t\t\t\t\t\t<a href=\"");
                          out.print( request.getContextPath());
                          out.write("/purchase/purchaseContent.dog?prdcode=");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.product_code }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
                          out.write("\">\r\n");
                          out.write("\t\t\t\t\t\t\t\t\t<img src=\"");
                          out.print( request.getContextPath());
                          out.write("/images/");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.product_explanation }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
                          out.write("\">\r\n");
                          out.write("\t\t\t\t\t\t\t\t</a>\r\n");
                          out.write("\t\t\t\t\t\t\t</div>\r\n");
                          out.write("\t\t\t\t\t\t\t<div class=\"prodName\">");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.product_name }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
                          out.write("</div>\r\n");
                          out.write("\t\t\t\t\t\t\t<div class=\"price\">");
                          if (_jspx_meth_fmt_005fformatNumber_005f1(_jspx_th_c_005fif_005f2, _jspx_page_context, _jspx_push_body_count_c_005fforEach_005f0))
                            return;
                          out.write("원</div>\r\n");
                          out.write("\t\t\t\t\t\t</div>\r\n");
                          out.write("\t\t\t\t\t");
                          int evalDoAfterBody = _jspx_th_c_005fif_005f2.doAfterBody();
                          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                            break;
                        } while (true);
                      }
                      if (_jspx_th_c_005fif_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                        return;
                      }
                      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f2);
                      _jspx_th_c_005fif_005f2_reused = true;
                    } finally {
                      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f2, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f2_reused);
                    }
                    out.write("\r\n");
                    out.write("\t\t\t\t\t\r\n");
                    out.write("\t\t\t");
                    int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
                    if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                      break;
                  } while (true);
                }
                if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                  return;
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
            out.write("\r\n");
            out.write("\t\t\r\n");
            out.write("\t\t");
            int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
        _jspx_th_c_005fif_005f0_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f0_reused);
      }
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"div5\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageBar }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../footer_dog.jsp", out, false);
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<style>\n");
      out.write("\t\r\n");
      out.write("\t#mainSearch_body {\r\n");
      out.write("\t\twidth: 70%;\r\n");
      out.write("\t\tmargin:0 auto;\r\n");
      out.write("\t\tpadding: 50px 0;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#searchList {\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t\tclear: both;\r\n");
      out.write("\t\tborder-bottom: solid 2px black;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.prodList {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t    width: 24%;\r\n");
      out.write("\t    /* border: solid 1px black; */\r\n");
      out.write("\t    padding: 20px 0;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.imageName{\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.imageName img {\r\n");
      out.write("\t\twidth: 80%;\r\n");
      out.write("\t    height: 200px;\r\n");
      out.write("\t    margin-top: 20px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.prodName {\r\n");
      out.write("\t\tfont-family: 'Nanum Gothic', sans-serif;\r\n");
      out.write("\t    width: 80%;\r\n");
      out.write("\t    margin: 10px auto;\r\n");
      out.write("\t    height: 60px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.price {\r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("\t    font-size: 14pt;\r\n");
      out.write("\t    margin: 10px 0;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#searchWord {\r\n");
      out.write("\t\toutline: none;\r\n");
      out.write("\t\tborder:none;\r\n");
      out.write("\t\twidth: 83%;\r\n");
      out.write("\t\tfont-weight:bold;\r\n");
      out.write("\t\theight: 34px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.div1{\r\n");
      out.write("\t\tcolor: gray;\r\n");
      out.write("\t    float: right;\r\n");
      out.write("\t    font-size: 9pt;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.div2{\r\n");
      out.write("\t\tclear: both;\r\n");
      out.write("\t\tfont-family: 'Nanum Gothic', sans-serif;\r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("\t\tfont-size: 28pt;\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t\tpadding: 20px 0;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.div3{\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t\tpadding: 30px 0;\r\n");
      out.write("\t\tborder: solid 1px #f2f2f2;\r\n");
      out.write("\t\tbackground-color: #f2f2f2;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.div4{\r\n");
      out.write("\t\tborder-bottom: solid 2px black;\r\n");
      out.write("\t\tpadding: 30px 0 10px 0;\r\n");
      out.write("\t\tfont-family: 'Nanum Gothic', sans-serif;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.div4 ul {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tlist-style-type: none;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.div4 ul li {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t\tpadding: 0 10px;\r\n");
      out.write("\t\tcursor: pointer;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t.div4 ul li a {\r\n");
      out.write("\t\ttext-decoration: none;\r\n");
      out.write("\t\tcolor: #a6a6a6;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.div5 {\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t\tpadding: 20px 0;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.searchBy_active {\r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("\t\tcolor: black !important;\r\n");
      out.write("\t}\r\n");
      out.write("\t\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\r\n");
      out.write("\t$(document).ready(function(){\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t// 신상품순, 인기상품순, 낮은가격순, 높은가격순\r\n");
      out.write("\t\tvar searchBy = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ searchBy }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\";\r\n");
      out.write("\t\t$(\"#searchBy\"+searchBy).addClass(\"searchBy_active\");\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t// 검색어 받아오기\r\n");
      out.write("\t\tvar initSearchWord = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ searchWord }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\";\r\n");
      out.write("\t\t$(\"#searchWord\").val(initSearchWord);\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t// 검색창에 엔터 누를 때 검색 되게\r\n");
      out.write("\t\t$(\"#searchWord\").keydown(function(event){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif(event.keyCode == 13){\r\n");
      out.write("\t\t\t\t$(\"#mainSearchBtn\").trigger(\"click\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t// 검색 버튼 누를 시에\r\n");
      out.write("\t\t$(\"#mainSearchBtn\").click(function(){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar searchWord = $(\"#searchWord\").val();\r\n");
      out.write("\t\t\tlocation.href=\"");
      out.print( request.getContextPath() );
      out.write("/main/searchMain.dog?currentShowPageNo=1&searchBy=1&searchWord=\"+searchWord;\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(\"#searchBy1\").click(function(){\r\n");
      out.write("\t\t\tvar searchWord = $(\"#searchWord\").val();\r\n");
      out.write("\t\t\tlocation.href=\"searchMain.dog?searchBy=1&searchWord=\"+searchWord;\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t$(\"#searchBy2\").click(function(){\r\n");
      out.write("\t\t\tvar searchWord = $(\"#searchWord\").val();\r\n");
      out.write("\t\t\tlocation.href=\"searchMain.dog?searchBy=2&searchWord=\"+searchWord;\r\n");
      out.write("\t\t});\t\r\n");
      out.write("\t\t$(\"#searchBy3\").click(function(){\r\n");
      out.write("\t\t\tvar searchWord = $(\"#searchWord\").val();\r\n");
      out.write("\t\t\tlocation.href=\"searchMain.dog?searchBy=3&searchWord=\"+searchWord;\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t$(\"#searchBy4\").click(function(){\r\n");
      out.write("\t\t\tvar searchWord = $(\"#searchWord\").val();\r\n");
      out.write("\t\t\tlocation.href=\"searchMain.dog?searchBy=4&searchWord=\"+searchWord;\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   ");
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

  private boolean _jspx_meth_fmt_005fformatNumber_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fif_005f1, javax.servlet.jsp.PageContext _jspx_page_context, int[] _jspx_push_body_count_c_005fforEach_005f0)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_005fformatNumber_005f0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    boolean _jspx_th_fmt_005fformatNumber_005f0_reused = false;
    try {
      _jspx_th_fmt_005fformatNumber_005f0.setPageContext(_jspx_page_context);
      _jspx_th_fmt_005fformatNumber_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fif_005f1);
      // /WEB-INF/main/mainSearch.jsp(45,26) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_fmt_005fformatNumber_005f0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.product_price }", java.lang.Object.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      // /WEB-INF/main/mainSearch.jsp(45,26) name = pattern type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_fmt_005fformatNumber_005f0.setPattern("###,###,###");
      int _jspx_eval_fmt_005fformatNumber_005f0 = _jspx_th_fmt_005fformatNumber_005f0.doStartTag();
      if (_jspx_th_fmt_005fformatNumber_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody.reuse(_jspx_th_fmt_005fformatNumber_005f0);
      _jspx_th_fmt_005fformatNumber_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_fmt_005fformatNumber_005f0, _jsp_getInstanceManager(), _jspx_th_fmt_005fformatNumber_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_fmt_005fformatNumber_005f1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fif_005f2, javax.servlet.jsp.PageContext _jspx_page_context, int[] _jspx_push_body_count_c_005fforEach_005f0)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_005fformatNumber_005f1 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    boolean _jspx_th_fmt_005fformatNumber_005f1_reused = false;
    try {
      _jspx_th_fmt_005fformatNumber_005f1.setPageContext(_jspx_page_context);
      _jspx_th_fmt_005fformatNumber_005f1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fif_005f2);
      // /WEB-INF/main/mainSearch.jsp(57,26) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_fmt_005fformatNumber_005f1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.product_price }", java.lang.Object.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      // /WEB-INF/main/mainSearch.jsp(57,26) name = pattern type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_fmt_005fformatNumber_005f1.setPattern("###,###,###");
      int _jspx_eval_fmt_005fformatNumber_005f1 = _jspx_th_fmt_005fformatNumber_005f1.doStartTag();
      if (_jspx_th_fmt_005fformatNumber_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody.reuse(_jspx_th_fmt_005fformatNumber_005f1);
      _jspx_th_fmt_005fformatNumber_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_fmt_005fformatNumber_005f1, _jsp_getInstanceManager(), _jspx_th_fmt_005fformatNumber_005f1_reused);
    }
    return false;
  }
}
