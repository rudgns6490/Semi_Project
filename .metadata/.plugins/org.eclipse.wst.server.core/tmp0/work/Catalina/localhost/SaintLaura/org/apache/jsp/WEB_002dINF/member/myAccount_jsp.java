/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 10:11:35 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class myAccount_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/myAccount.css\">\r\n");
      out.write("<script src=\"");
      out.print(ctxPath );
      out.write("/js_ysl/myAccount.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("$(document).ready(function() {\r\n");
      out.write("\t\r\n");
      out.write("\t// 주문&목록 리스트\r\n");
      out.write("\tgetOrderList(\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginuser.idx}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\");\r\n");
      out.write("\t\r\n");
      out.write("\t$(\".logoutMenu\").click(function(){\r\n");
      out.write("\t      \r\n");
      out.write("\t      alert(\"로그아웃 되었습니다.\");\r\n");
      out.write("\t      location.href=\"logout.ysl\";\r\n");
      out.write("\t      \r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("\t$.ajax({\r\n");
      out.write("\t\turl:\"/SaintLaura/myWishJSON.ysl\", \r\n");
      out.write("\t\ttype:\"GET\", \r\n");
      out.write("\t\tdata:{\"email\":\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${(sessionScope.loginuser).email}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"},\r\n");
      out.write("\t\tdataType:\"json\",\r\n");
      out.write("\t\tsuccess:function(json){\r\n");
      out.write("\t\t\tvar html = \"\";\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif(json.length == 0) { // 데이터가 존재하지 않는 경우 \r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\thtml += \"<div class='wish-contents'>\"\r\n");
      out.write("\t   \t\t\t      + \"\t<div style='width: 100%; text-align: center; font-size: 8pt;'><br><br><br><br><br><br><br>위시리스트가 비었습니다. <br>\"\r\n");
      out.write("\t   \t\t\t      + \"</div>\";\r\n");
      out.write("\t   \t\t\t      \r\n");
      out.write("\t\t\t\t$(\"#displayYSL\").append(html);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse { // 데이터가 존재하는 경우 \r\n");
      out.write("\t\t\t\t$.each(json, function(index, item){\r\n");
      out.write("\t\t\t\t\tif(index < 2) {\r\n");
      out.write("\t\t\t\t\t\thtml += \" <div class='showWishImage' > \"\r\n");
      out.write("\t\t\t\t\t\t\t  + \"    <a href='/SaintLaura/productDetail.ysl?pnum=\"+item.pnum+\"' style='text-decoration: none;'> \"\r\n");
      out.write("\t\t\t\t\t\t\t  + \" \t\t\t<img class='listViewImage mainImage' src='/SaintLaura/images_Product/\"+item.pimage1+\"' style='width: 120px; height: 180px;'> \"\r\n");
      out.write("\t\t\t\t\t\t\t  + \"    </a>\"\r\n");
      out.write("\t\t\t\t\t\t      + \" </div> \";\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\telse {\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t//YSL 상품결과를 출력하기\r\n");
      out.write("\t\t\t\t$(\"#displayYSL\").append(html);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}, \r\n");
      out.write("\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\talert(\"code: \"+request.status+\"\\n\"+\"message: \"+request.responseText+\"\\n\"+\"error: \"+error);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<img src=\"images/myAccount_Banner.jpg\" class=\"myAccountBanner\"/>\r\n");
      out.write("\t\t<div style=\"border: solid rgb(239, 239, 239) 1px; height: 79px;\" >\r\n");
      out.write("\t\t\t<ul class=\"logged\">\r\n");
      out.write("\t\t\t\t<li class=\"profileMenu basicMenu\" onclick=\"javascript:location.href='");
      out.print(ctxPath);
      out.write("/myAccountUpdate.ysl'\">나의 정보</li>\r\n");
      out.write("\t\t\t\t<li class=\"orderMenu basicMenu\" onclick=\"javascript:location.href='");
      out.print(ctxPath);
      out.write("/orderNReturnList.ysl'\">주문 &amp; 반품</li>\r\n");
      out.write("\t\t\t\t<li class=\"wishlistMenu basicMenu\" onclick=\"javascript:location.href='");
      out.print(ctxPath);
      out.write("/myWishList.ysl'\">위시리스트</li>\r\n");
      out.write("\t\t\t\t<li class=\"logoutMenu\"><span style=\"cursor:pointer\">로그아웃</span></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"welcomeMsg\" style=\"border: solid rgb(239, 239, 239) 1px; border-top: hidden;\">\r\n");
      out.write("\t\t\t<div class=\"hello\">안녕하세요, <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ sessionScope.loginuser.name }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</span> 고객님</div>\r\n");
      out.write("\t\t\t<div class=\"explanation\">고객님의 개인 계정의 모든 개인정보, 설정 내용, 저장된 아이템을 안전하게 보관합니다.</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"overview\">\r\n");
      out.write("\t\t\t<div class=\"profileContainer col-xs-4 row-eq-height\">\r\n");
      out.write("\t\t\t\t<div class=\"firstWrapper\">\r\n");
      out.write("\t\t\t\t\t<div class=\"myinfo info\">나의 정보</div>\r\n");
      out.write("\t\t\t\t\t<ul class=\"title info\">\r\n");
      out.write("\t\t\t\t\t\t<li class=\"listinfo info\">이름<br/><span class=\"datainfo\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ sessionScope.loginuser.name }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</span></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"listinfo info\">이메일<br/><span class=\"datainfo\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ sessionScope.loginuser.email }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</span></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"listinfo info\" style=\"padding-bottom: 25px;\">생년월일<br/><span class=\"datainfo\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ sessionScope.loginuser.birthday }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</span></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t<div class=\"updateInfo moreBtn\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"spanBtn\" onclick=\"javascript:location.href='");
      out.print(ctxPath);
      out.write("/myAccountUpdate.ysl'\">수정</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"orderContainer col-xs-4 row-eq-height\">\r\n");
      out.write("\t\t\t\t<div class=\"secondWrapper\">\r\n");
      out.write("\t\t\t\t\t<div class=\"myinfo info\">주문&amp;반품</div>\r\n");
      out.write("\t\t\t\t\t<ul class=\"title info\">\r\n");
      out.write("\t\t\t\t\t\t<li class=\"moreinfo info\">\r\n");
      out.write("\t\t\t\t\t\t\t<table class=\"accountOrderTable\">\r\n");
      out.write("\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t<div class=\"moreinfo moreBtn\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"spanBtn\" onclick=\"javascript:location.href='");
      out.print(ctxPath);
      out.write("/orderNReturnList.ysl'\">모두보기</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"wishlistContainer col-xs-4 row-eq-height\">\r\n");
      out.write("\t\t\t\t<div class=\"thirdWrapper\">\r\n");
      out.write("\t\t\t\t\t<div class=\"myinfo info\">위시리스트</div>\r\n");
      out.write("\t\t\t\t\t\t<div id=\"displayYSL\" ></div>\r\n");
      out.write("\t\t\t\t\t<div class=\"updateInfo moreBtn\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"spanBtn\" onclick=\"javascript:location.href='");
      out.print(ctxPath);
      out.write("/myWishList.ysl'\">모두보기</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
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