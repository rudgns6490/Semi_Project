/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 10:17:42 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.payment;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class orderNReturnList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1575884356788L));
    _jspx_dependants.put("jar:file:/C:/myjsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/SaintLaura/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
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
      out.write("\r\n");
 String ctxPath = request.getContextPath(); 
      out.write("     \r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- <link rel=\"stylesheet\" href=\"css/myAccount.css\"> -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/orderNReturnList.css\">\r\n");
      out.write("<script src=\"");
      out.print(ctxPath);
      out.write("/js_ysl/orderNReturnList.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("$(document).ready(function () {\r\n");
      out.write("\t\r\n");
      out.write("\tgetOrderNReturnList(\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginuser.idx}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\");\r\n");
      out.write("\t\r\n");
      out.write("\t$(\".logoutMenu\").click(function(){\r\n");
      out.write("\t\t\r\n");
      out.write("\t\talert(\"로그아웃 되었습니다.\");\r\n");
      out.write("\t\tlocation.href=\"logout.ysl\";\r\n");
      out.write("\t\t\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("function getOrderNReturnList(idx, start) {\r\n");
      out.write("\t\r\n");
      out.write("\t$.ajax({\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\turl:\"/SaintLaura/orderNReturnList.ysl\",\r\n");
      out.write("\t\t\tmethod:\"POST\",\r\n");
      out.write("\t\t\tdata:{\"idx\":idx},\r\n");
      out.write("\t\t\tdataType:\"JSON\",\r\n");
      out.write("\t\t\tsuccess:function(json) {\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tvar html = \"\";\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\thtml += \"<tr><th class='mainLine info col-xs-2'>주문 번호</th>\" +\r\n");
      out.write("\t\t\t\t\t\t\"<th class='mainLine info col-xs-2'>날짜</th>\" +\r\n");
      out.write("\t\t\t\t\t\t\"<th class='mainLine info col-xs-2'>상태</th>\" +\r\n");
      out.write("\t\t\t\t\t\t\"<th class='mainLine info col-xs-2'>가격</th>\" +\r\n");
      out.write("\t\t\t\t\t\t\"<th class='mainLine info col-xs-2'>반품 번호</th>\" +\r\n");
      out.write("\t\t\t\t\t\t\"<th class='mainLine info col-xs-2'>상세정보</th></tr>\";\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tif(json.length == 0) {\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\thtml += \"<tr>\" +\r\n");
      out.write("\t\t\t\t\t\t\t\"<td colspan='6' width='100' style='border-top: solid 1px #e9e9e9; text-align: center; font-size:9pt; padding:30px 0;'>주문하신 상품이 존재하지 않습니다</td></tr>\";\r\n");
      out.write("\t\t\t\t\t   \r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t$(\"#orderTable\").html(html);\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\telse {\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t$.each(json, function(index,item) {\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\tgetReturnStatus(item.orderNo_fk, index)\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\thtml += \"<tr><td class='mainLine1 info col-xs-2 orderNumber'>\"+item.orderNo_fk+\"</td>\" +\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\"<td class='mainLine1 info col-xs-2'>\"+item.orderDate+\"</td>\" +\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\"<td class='mainLine1 info col-xs-2'>\"+item.orderStatus+\"</td>\" +\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\"<td class='mainLine1 info col-xs-2 orderPrice'>￦ <span>\"+numberWithCommas(item.price)+\"</span></td>\" +\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\"<td class='mainLine1 info col-xs-2 returnStatus\"+index+\"'></td>\" +\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\"<td class='mainLine1 info col-xs-2 push'><a href='/SaintLaura/orderDetail.ysl?idx=\"+idx+\"&orderNo_fk=\"+item.orderNo_fk+\"' style='text-decoration: none; color:black;'>보기</a></td></tr>\";\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\t$(\"#orderTable\").html(html);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t},\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\t\talert(\"code : \" + request.status + \"\\n\" + \"message : \" +request.responseText + \"\\n\" +\"error : \" + error);\r\n");
      out.write("\t\t\t} \r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\t\t\t\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function numberWithCommas(x) {\r\n");
      out.write("    return x.toString().replace(/\\B(?=(\\d{3})+(?!\\d))/g, \",\");\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function getReturnStatus(orderNo_fk, index) {\r\n");
      out.write("\r\n");
      out.write("\t$.ajax({\r\n");
      out.write("\t\t\r\n");
      out.write("\t\turl:\"/SaintLaura/returnList.ysl\",\r\n");
      out.write("\t\tmethod:\"POST\",\r\n");
      out.write("\t\tdata:{\"orderNo_fk\":orderNo_fk},\r\n");
      out.write("\t\tdataType:\"JSON\",\r\n");
      out.write("\t\tsuccess:function(json) {\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar html = \"\";\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif(json.orderDetailNo_fk == \"\") {\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\thtml = \"\";\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\".returnStatus\"+index).html(html);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse {\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\thtml += \"<a href='/SaintLaura/returnDetail.ysl?orderNo=\"+orderNo_fk+\"' style='color:black;'>교환반품상세</a>\";\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\".returnStatus\"+index).html(html);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t},\r\n");
      out.write("\t\t\r\n");
      out.write("\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\talert(\"code : \" + request.status + \"\\n\" + \"message : \" +request.responseText + \"\\n\" +\"error : \" + error);\r\n");
      out.write("\t\t} \r\n");
      out.write("\t\t\r\n");
      out.write("\t});\t\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<img src=\"images/myAccount_Banner.jpg\" class=\"myAccountBanner\"/>\r\n");
      out.write("\t\t<div style=\"border: solid rgb(239, 239, 239) 1px;\" >\r\n");
      out.write("\t\t\t<ul class=\"logged\">\r\n");
      out.write("\t\t\t\t<li class=\"profileMenu basicMenu\" onclick=\"javascript:location.href='");
      out.print(ctxPath);
      out.write("/myAccountUpdate.ysl'\">나의 정보</li>\r\n");
      out.write("\t\t\t\t<li class=\"orderMenu basicMenu\">주문&반품</li>\r\n");
      out.write("\t\t\t\t<li class=\"wishlistMenu basicMenu\" onclick=\"javascript:location.href='");
      out.print(ctxPath);
      out.write("/myWishList.ysl'\">위시리스트</li>\r\n");
      out.write("\t\t\t\t<li class=\"logoutMenu\">로그아웃</li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"welcomeMsg\" style=\"border: solid rgb(239, 239, 239) 1px; border-top: hidden;\">\r\n");
      out.write("\t\t\t<div class=\"hello\">주문 & 반품</div>\r\n");
      out.write("\t\t\t<div class=\"explanation\">구매 내역과 배송 현황을 확인하십시오. 여기에서 반품신청서 작성 및 환불 정보 확인이 가능합니다.</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<form>\r\n");
      out.write("\t\t\t<table id=\"orderTable\">\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\t\t\r\n");
      out.write("\t\t\r\n");
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