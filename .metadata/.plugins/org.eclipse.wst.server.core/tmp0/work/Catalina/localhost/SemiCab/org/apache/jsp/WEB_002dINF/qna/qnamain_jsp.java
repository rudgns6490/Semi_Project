/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-20 07:35:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.qna;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class qnamain_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1575262912000L));
    _jspx_dependants.put("jar:file:/C:/myjsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/SemiCab/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
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
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
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

      out.write('\r');
      out.write('\n');

    String ctxPath = request.getContextPath();

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Roboto&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("<script\r\n");
      out.write("\tsrc=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js\"></script>\r\n");
      out.write("<script\r\n");
      out.write("\tsrc=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("#main_container{ \r\n");
      out.write("\tbackground-color: #f2f2f2;\t\r\n");
      out.write("\tfont-family: 'Roboto', sans-serif;\r\n");
      out.write("\t\r\n");
      out.write("\tmin-width:1400px;\r\n");
      out.write("\twidth:100%;\r\n");
      out.write("\tmargin:0 auto;\r\n");
      out.write("\tpadding: 150px 0 50px; \r\n");
      out.write("} \r\n");
      out.write("\r\n");
      out.write("#second_container {   \r\n");
      out.write("\tbackground-color: white;\r\n");
      out.write("\twidth : 1320px;\r\n");
      out.write("\tmargin : 0 auto;\r\n");
      out.write("\tpadding : 40px;\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".title {\r\n");
      out.write("    margin: 0 0 20px;\r\n");
      out.write("    padding: 0 0 15px;\r\n");
      out.write("    border-bottom: 1px solid #e8e8e8;\r\n");
      out.write("    min-height: auto;\r\n");
      out.write("    overflow:hidden;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("h2 {\r\n");
      out.write("\twidth: 100px;\r\n");
      out.write("\tdisplay: inline-block;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".title p {\r\n");
      out.write("    display: inline-block;\r\n");
      out.write("    margin: 0 0 0 6px;\r\n");
      out.write("    padding: 0 0 0 10px;\r\n");
      out.write("    font-size: 11px;\r\n");
      out.write("    color: #949494;\r\n");
      out.write("    font-weight: normal;\r\n");
      out.write("    height: 30px;\r\n");
      out.write("    width: 100px;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".search {\r\n");
      out.write("    float: right;\r\n");
      out.write("    width: 55%;\r\n");
      out.write("    text-align: right;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("#search_date {\r\n");
      out.write("    margin: 0 2px 0 22px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".search select {\r\n");
      out.write("    margin: 0 2px 0 0;\r\n");
      out.write("    width: 72px;\r\n");
      out.write("    height: 36px;\r\n");
      out.write("    border: 1px solid #d5d5d5;\r\n");
      out.write("    line-height: 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#search {\r\n");
      out.write("    padding: 0 4px;\r\n");
      out.write("    border: 1px solid #d5d5d5;\r\n");
      out.write("    line-height: 34px;\r\n");
      out.write("    height: 34px;\r\n");
      out.write("    vertical-align: top;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".btn_write {\r\n");
      out.write("    display: inline-block;\r\n");
      out.write("    vertical-align: top;\r\n");
      out.write("    width: 56px;\r\n");
      out.write("    height: 36px;\r\n");
      out.write("    font-size: 13px;\r\n");
      out.write("    color: #fff;\r\n");
      out.write("    line-height: 36px;\r\n");
      out.write("    letter-spacing: 1px;\r\n");
      out.write("    text-decoration: none;\r\n");
      out.write("    background: #464646;\r\n");
      out.write("    border-radius: 2px;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".search_main{\r\n");
      out.write("    margin-bottom: 20px;\r\n");
      out.write("    overflow:hidden;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("table {\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\tborder-collapse: separate;\r\n");
      out.write("    border-spacing: 0px;\r\n");
      out.write("    border: solid 0px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(" th {\r\n");
      out.write("    padding: 12px 0;\r\n");
      out.write("    border: 0;\r\n");
      out.write("    border-top: 1px solid #000;\r\n");
      out.write("    border-bottom: 1px solid #e3e3e3;\r\n");
      out.write("    background: #fcfcfc;\r\n");
      out.write("    font-weight: 400;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".td_title{\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\twidth: 70px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("td {\r\n");
      out.write("    padding: 10px 6px;\r\n");
      out.write("    height: 32px;\r\n");
      out.write("    border: 0;\r\n");
      out.write("    border-bottom: 1px solid #e8e8e8;\r\n");
      out.write("    font-size: 13px;\r\n");
      out.write("    color: #555;\r\n");
      out.write("} \r\n");
      out.write("\r\n");
      out.write(".txtBreak{\r\n");
      out.write("\twidth: 1120px;\r\n");
      out.write("}\r\n");
      out.write(".notice_content{\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tpadding: 50px 0;\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".write_button{\r\n");
      out.write("\tborder: solid 0px red;\r\n");
      out.write("\twidth: 1320px;\r\n");
      out.write("\theight: 80px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".gRight{\r\n");
      out.write("\tfloat: right;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"main_container\">\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"second_container\">\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div class=\"title\">\r\n");
      out.write("            <h2><font>Q & A</font> </h2>\r\n");
      out.write("\t\t\t<p>상품 Q&amp;A입니다.</p>\r\n");
      out.write("        </div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<form method=\"GET\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t   <div class=\"search_main\">\t\r\n");
      out.write("\t\t   \r\n");
      out.write("\t\t\t\t<div class=\"search\">\r\n");
      out.write("\t\t\t\t\t검색어 입력\r\n");
      out.write("\t\t\t\t\t<select id=\"search_date\" name=\"search_date\" fw-filter=\"\" fw-label=\"\" fw-msg=\"\">\r\n");
      out.write("\t\t\t\t\t\t<option value=\"week\">일주일</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"month\">한달</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"month3\">세달</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"all\">전체</option>\r\n");
      out.write("\t\t\t\t\t</select> \r\n");
      out.write("\t\t\t\t\t<select id=\"search_key\" name=\"search_key\" fw-filter=\"\" fw-label=\"\" fw-msg=\"\">\r\n");
      out.write("\t\t\t\t\t\t<option value=\"subject\">제목</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"content\">내용</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"writer_name\">글쓴이</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"member_id\">아이디</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"nick_name\">별명</option>\r\n");
      out.write("\t\t\t\t\t</select> \r\n");
      out.write("\t\t\t\t\t<input id=\"search\" name=\"search\" fw-filter=\"\" fw-label=\"\" fw-msg=\"\" class=\"inputTypeText\" placeholder=\"\" value=\"\" type=\"text\">\r\n");
      out.write("\t\t\t\t\t <a href=\"#none\" onclick=\"BOARD.form_submit('boardSearchForm');\" class=\"btn_write\">검색</a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t  </div>\t\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"notice_first_title\">\r\n");
      out.write("\t\t\t\t<table border=\"1\" summary=\"\">\r\n");
      out.write("\t\t\t\t\t<thead\r\n");
      out.write("\t\t\t\t\t\tclass=\"listheader\">\r\n");
      out.write("\t\t\t\t\t\t<tr style=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t<th scope=\"col\">번호</th>\r\n");
      out.write("\t\t\t\t\t\t\t<th scope=\"col\">제목</th>\r\n");
      out.write("\t\t\t\t\t\t\t<th scope=\"col\">작성자</th>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</thead>\r\n");
      out.write("\t\t\t\t\t<tbody\r\n");
      out.write("\t\t\t\t\t\tclass=\"notice_second_title\">\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\t<div class=\"write_button\">\r\n");
      out.write("\t\t\t\t\t<span class=\"gRight\"> <a\r\n");
      out.write("\t\t\t\t\t\thref=\"http://localhost:9090/SemiCab/qnaWrite.ej\" class=\"\"> <img\r\n");
      out.write("\t\t\t\t\t\t\tsrc=\"http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_write.gif\"\r\n");
      out.write("\t\t\t\t\t\t\talt=\"글쓰기\"></a>\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
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

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /WEB-INF/qna/qnamain.jsp(221,5) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("QNAVO");
      // /WEB-INF/qna/qnamain.jsp(221,5) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/qna/qnamain.jsp(221,5) '${qnaList}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${qnaList}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("\t\t\t\t\t\t<tr style=\"background-color: #FFFFFF; color: #555555;\">\r\n");
            out.write("\t\t\t\t\t\t\t<td class=\"td_title\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${QNAVO.qna_num}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("\t\t\t\t\t\t\t<td class=\"txtBreak\"><strong>\r\n");
            out.write("\t\t\t\t\t\t\t\t <a name=\"num\" href=\"readqna.ej?num=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${QNAVO.qna_num}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write('"');
            out.write('>');
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${QNAVO.title}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</a> \r\n");
            out.write("\t\t\t\t\t\t\t<span class=\"txtEm\"></span></strong></td>\r\n");
            out.write("\t\t\t\t\t\t\t<td style=\"text-align: center;\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${QNAVO.username}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("\t\t\t\t\t\t</tr>\r\n");
            out.write("\t\t\t\t\t");
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