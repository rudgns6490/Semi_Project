/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 10:15:40 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class customerService_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
 String ctxPath = request.getContextPath(); 
      out.write("    \r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\">\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\r\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/customerService.css\">\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("\t$(document).ready(function() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t/* 교환 */\r\n");
      out.write("\t\t$(\"#change\").css(\"display\", \"none\");\r\n");
      out.write("\t\t$(\"#change-detail\").on(\"click\", function(){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar status = $(\"#change\").css(\"display\");\r\n");
      out.write("\t\t\tif(status == \"none\"){\r\n");
      out.write("\t\t\t\t$(\"#change\").slideDown(300);\r\n");
      out.write("\t\t\t\t$(\"#progress\").slideUp(300);\r\n");
      out.write("\t\t\t\t$(\"#return\").slideUp(300);\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t$(\"#change-detail\").html(\"접기\");\r\n");
      out.write("\t\t\t\t$(\"#return-detail\").html(\"자세히 읽기\");\r\n");
      out.write("\t\t\t\t$(\"#progress-detail\").html(\"자세히 읽기\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse {\r\n");
      out.write("\t\t\t\t$(\"#change\").slideUp(300);\r\n");
      out.write("\t\t\t\t$(\"#change-detail\").html(\"자세히 읽기\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t/* 반품 */\r\n");
      out.write("\t\t$(\"#return\").css(\"display\", \"none\");\r\n");
      out.write("\t\t$(\"#return-detail\").on(\"click\", function(){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar status = $(\"#return\").css(\"display\");\r\n");
      out.write("\t\t\tif(status == \"none\"){\r\n");
      out.write("\t\t\t\t$(\"#return\").slideDown(300);\r\n");
      out.write("\t\t\t\t$(\"#change\").slideUp(300);\r\n");
      out.write("\t\t\t\t$(\"#progress\").slideUp(300);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\"#return-detail\").html(\"접기\");\r\n");
      out.write("\t\t\t\t$(\"#change-detail\").html(\"자세히 읽기\");\r\n");
      out.write("\t\t\t\t$(\"#progress-detail\").html(\"자세히 읽기\");\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse {\r\n");
      out.write("\t\t\t\t$(\"#return\").slideUp(300);\r\n");
      out.write("\t\t\t\t$(\"#return-detail\").html(\"자세히 읽기\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t/* 진행상황 */\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(\"#progress\").css(\"display\", \"none\");\r\n");
      out.write("\t\t$(\"#progress-detail\").on(\"click\", function(){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar status = $(\"#progress\").css(\"display\");\r\n");
      out.write("\t\t\tif(status == \"none\"){\r\n");
      out.write("\t\t\t\t$(\"#progress\").slideDown(300);\r\n");
      out.write("\t\t\t\t$(\"#return\").slideUp(300);\r\n");
      out.write("\t\t\t\t$(\"#change\").slideUp(300);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\"#progress-detail\").html(\"접기\");\r\n");
      out.write("\t\t\t\t$(\"#return-detail\").html(\"자세히 읽기\");\r\n");
      out.write("\t\t\t\t$(\"#change-detail\").html(\"자세히 읽기\");\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse {\r\n");
      out.write("\t\t\t\t$(\"#progress\").slideUp(300);\r\n");
      out.write("\t\t\t\t$(\"#progress-detail\").html(\"자세히 읽기\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\tfunction customerEmail() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tjavacsript:location.href=\"");
      out.print(ctxPath);
      out.write("/customerEmailService.ysl\";\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tfunction searchStore() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tjavacsript:location.href=\"");
      out.print(ctxPath);
      out.write("/searchStore.ysl\";\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<img src=\"images/customerService-banner.jpg\" class=\"customerServiceBanner\"/>\r\n");
      out.write("\t\t<div id=\"customerHead\">\r\n");
      out.write("\t\t\t<span class=\"customerTitle\">고객 서비스</span>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div id=\"customerBody\">\r\n");
      out.write("\t\t\t<span style=\"font-size: 8pt;\">\r\n");
      out.write("\t\t\t문의사항이나 도움이 필요하시면 언제든지 연락주시기 바랍니다. <br/>\r\n");
      out.write("\t\t\t운영시간은 월요일부터 토요일까지 오전 10시30분~오후 10시까지 입니다. (공휴일제외) <br/>\r\n");
      out.write("\t\t\t담당 직원이 고객님의 문의에 성심성의껏 답변해 드리고 브랜드와 제품에 대해 자세히 안내해 드립니다. <br/>\r\n");
      out.write("\t\t\t</span>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div class=\"customerFooter col-xs-4\">\r\n");
      out.write("\t\t\t<span class=\"footerTitle\" style=\"font-size: 11pt; font-weight: bold;\">이메일</span>\r\n");
      out.write("\t\t\t<br/>\r\n");
      out.write("\t\t\t<span style=\"font-size: 8pt;\">\r\n");
      out.write("\t\t\t\t영업일 기준 24시간 이내에 회신해 드릴 수 있도록<br/>\r\n");
      out.write("\t\t\t\t최선을 다하겠습니다.<br/><br/>\r\n");
      out.write("\t\t\t</span>\r\n");
      out.write("\t\t\t<button class=\"btn-third btn-Css btn-another\" id=\"register-btn\" style=\"color:white; margin-top:17px; font-size: 9pt;\" onclick=\"customerEmail();\">이메일 문의</button>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"customerFooter col-xs-4\">\r\n");
      out.write("\t\t\t<span class=\"footerTitle\" style=\"font-size: 11pt; font-weight: bold; color:black;\">전화</span>\r\n");
      out.write("\t\t\t<br/>\r\n");
      out.write("\t\t\t<span style=\"font-size: 8pt;\">\r\n");
      out.write("\t\t\t\t저희 직원에게 말씀해 주세요:<br/> \r\n");
      out.write("\t\t\t\t+82 1092470229<br/>\r\n");
      out.write("\t\t\t\t월요일~토요일, 오전 10시30~오후 10시\r\n");
      out.write("\t\t\t</span>\r\n");
      out.write("\t\t\t<a href=\"tel:01092470229\"><button class=\"btn-third btn-Css btn-another\" id=\"register-btn\" style=\"white; margin-top:17px; font-size: 9pt;\">전화 문의</button></a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"customerFooter col-xs-4\">\r\n");
      out.write("\t\t\t<span class=\"footerTitle\" style=\"font-size: 11pt; font-weight: bold; color:black;\">생 로라 매장 안내</span>\r\n");
      out.write("\t\t\t<br/>\r\n");
      out.write("\t\t\t<span style=\"font-size: 8pt;\">\r\n");
      out.write("\t\t\t\tSaint Laura의 쇼핑경험을 오프라인에서도 느껴보세요<br/> \r\n");
      out.write("\t\t\t\t전화번호 해당 매장 내 참조<br/> \r\n");
      out.write("\t\t\t\t영업시간 해당 매장 내 참조\r\n");
      out.write("\t\t\t</span>\r\n");
      out.write("\t\t\t<button class=\"btn-third btn-Css btn-another\" id=\"register-btn\" style=\"color:white; margin-top:17px; font-size: 9pt;\" onclick=\"searchStore();\">생 로라 매장 안내</button>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<hr style=\"color: #f2f2f2; margin-top: 230px;\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div style=\" margin-top: 60px;\">\r\n");
      out.write("\t\t\t<div style=\"float:left; width:33%; font-weight: bold; font-size: 11pt;\">\r\n");
      out.write("\t\t\t\t자주묻는 질문\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<div style=\"float:right; width:67%; font-size: 8pt;\">\r\n");
      out.write("\t\t\t\t<div style=\"margin: 0 20px 20px 20px;\">\r\n");
      out.write("\t\t\t\t\t<div style=\"font-weight: bold;\">\r\n");
      out.write("\t\t\t\t\t\t교환\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<h6><a id=\"change-detail\" style=\"font-size: 8pt; color: black; cursor: pointer; text-decoration: underline;\">자세히 읽기</a></h6>\r\n");
      out.write("\t\t\t\t\t<div id=\"change\" style=\"float: right; font-size: 8pt\">\r\n");
      out.write("\t\t\t\t\t\t<p>구매하신 아이템의 사이즈 및/또는 색상 교환을 원하시는 경우 배송일로부터 30일 이내에 추가 비용 없이 교환하실 수 있습니다.</p>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<p>반품신청서를 작성하세요. 이때 \"교환\" 옵션을 선택하시고 교환이 가능한 사이즈 및/또는 색상 중 원하시는 것을 선택하세요. \r\n");
      out.write("\t\t\t\t\t\t고객님을 위해 새로 선택하신 아이템을 보관해 놓겠습니다. 반품하신 아이템을 수령하는 즉시 기존의 배송 주소로 새로 선택하신 아이템을 보내드립니다. \r\n");
      out.write("\t\t\t\t\t\t아이템이 발송되면 고객님께 이메일로 알려 드립니다.</p>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<p>사이즈 및/또는 색상 교환은 한 품목 당 1회에 한합니다. 하지만 당사의 반품정책에 기재된 내용에 따라 다시 반품하실 수 있습니다.</p>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<br/><br/>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<div style=\"margin: 20px;\">\r\n");
      out.write("\t\t\t\t\t<div style=\"font-weight: bold;\">\r\n");
      out.write("\t\t\t\t\t\t반품 현황을 알 수 있나요?\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<h6><a id=\"return-detail\" style=\"font-size: 8pt; color: black; cursor: pointer; text-decoration: underline;\">자세히 읽기</a></h6>\r\n");
      out.write("\t\t\t\t\t<div id=\"return\" style=\"font-size: 8pt\">\r\n");
      out.write("\t\t\t\t\t\t<p>반품 현황은 \r\n");
      out.write("\t\t\t\t\t\t<a style=\"font-size: 8pt; color: black; cursor: pointer; text-decoration: underline;\" onclick=\"javascript:location.href='");
      out.print(ctxPath);
      out.write("/orderNReturnList.ysl'\">나의 반품정보</a> \r\n");
      out.write("\t\t\t\t\t\t페이지에서 언제든지 확인하실 수 있습니다.</p>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<br/>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<div style=\"margin: 20px;\">\r\n");
      out.write("\t\t\t\t\t<div style=\"font-weight: bold;\">\r\n");
      out.write("\t\t\t\t\t\t주문 진행 상황을 알 수 있나요?\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<h6><a id=\"progress-detail\" style=\"font-size: 8pt; color: black; cursor: pointer; text-decoration: underline;\">자세히 읽기</a></h6>\r\n");
      out.write("\t\t\t\t\t<div id=\"progress\" style=\"font-size: 8pt\">\r\n");
      out.write("\t\t\t\t\t\t<p>언제든지 주문 현황을 확인하고 배송 상태를 추적하실 수 있습니다. \r\n");
      out.write("\t\t\t\t\t\t<a style=\"font-size: 8pt; color: black; cursor: pointer; text-decoration: underline;\" onclick=\"javascript:location.href='");
      out.print(ctxPath);
      out.write("/orderNReturnList.ysl'\">나의 주문정보</a> 페이지에서 이메일로 보내드린 주문 번호를 입력하세요. \r\n");
      out.write("\t\t\t\t\t\t가입하신 고객님께서는 나의 계정에서 주문과 관련된 모든 정보를 확인하실 수 있습니다.</p>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<br/>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
