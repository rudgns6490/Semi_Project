/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 10:23:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminProdUploadYSL_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../header.jsp", out, false);
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(ctxPath);
      out.write("/css/adminYSL.css?after\">\r\n");
      out.write("<script src=\"");
      out.print(ctxPath);
      out.write("/js_ysl/payment.js\"></script>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Lato\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("\t$(document).ready(function() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tprodUpload();\r\n");
      out.write("\t\t\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("\tfunction prodUpload() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tvar frm = document.prodUploadFrm;\r\n");
      out.write("\t\tfrm.submit();\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\turl:\"/SaintLaura/prodUpload.ysl\",\r\n");
      out.write("\t\t\tmethod:\"POST\",\r\n");
      out.write("\t\t\tdataType:\"JSON\",\r\n");
      out.write("\t\t\tsuccess:function(json){\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\talert(json.successObj);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t},\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\t\talert(\"code : \" + request.status + \"\\n\" + \"message : \" +request.responseText + \"\\n\" +\"error : \" + error);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"adminContainer\">\r\n");
      out.write("\t\t<div class=\"adminrow adminFirRow\">\r\n");
      out.write("\t\t\t<img src=\"images/payment-logo.png\" class=\"admingLogo\" />\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-xs-3 adminMenurow adminrow\" style=\"border-right: hidden;\" >\r\n");
      out.write("\t\t\t<div class=\"adminMenu adminOrder\"><span id=\"adminOrder\" onclick=\"location.href='adminOrderYSL.ysl'\">주문&반품리스트</span></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-xs-3 adminMenurow adminrow\" style=\"border-right: hidden; border-left: hidden;\">\r\n");
      out.write("\t\t\t<div class=\"adminMenu adminProduct\"><span id=\"adminProduct\" onclick=\"location.href='adminProdUploadYSL.ysl'\">상품등록</span></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-xs-3 adminMenurow adminrow\" style=\"border-right: hidden; border-left: hidden;\">\r\n");
      out.write("\t\t\t<div class=\"adminMenu adminCustomer\"><span id=\"adminCustomer\" onclick=\"location.href='adminCustomerYSL.ysl'\">고객리스트</span></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-xs-3 adminMenurow adminrow\" style=\"border-left: hidden;\">\r\n");
      out.write("\t\t\t<div class=\"adminMenu adminService\"><span id=\"adminService\" onclick=\"location.href='adminContactYSL.ysl'\">관리자</span></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"adminContentrow adminrow\">\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t<form name=\"prodUploadFrm\"\r\n");
      out.write("\t\t\t  method=\"POST\"\r\n");
      out.write("\t\t\t  enctype=\"multipart/form-data\"\r\n");
      out.write("\t\t\t  action=\"");
      out.print(ctxPath);
      out.write("/prodUpload.ysl\">\r\n");
      out.write("\t\t\t<div class=\"adminContent adminContentProduct\">\r\n");
      out.write("\t\t\t\t<table class=\"adminTable\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>상품카테고리</td>\r\n");
      out.write("\t\t\t\t\t\t<td>\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t  <select class=\"form-control\" id=\"pcategory_k\" name=\"pcategory_fk\">\r\n");
      out.write("\t\t\t\t\t\t\t    <option value=\"100000\">여성-크로스바디백</option>\r\n");
      out.write("\t\t\t\t\t\t\t    <option value=\"200000\">여성-숄더백</option>\r\n");
      out.write("\t\t\t\t\t\t\t    <option value=\"300000\">여성-클러치</option>\r\n");
      out.write("\t\t\t\t\t\t\t    <option value=\"400000\">남성-백팩</option>\r\n");
      out.write("\t\t\t\t\t\t\t    <option value=\"500000\">남성-캐쥬얼</option>\r\n");
      out.write("\t\t\t\t\t\t\t    <option value=\"600000\">남성-비즈니스</option>\r\n");
      out.write("\t\t\t\t\t\t\t  </select>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>상품명</td>\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t  <input type=\"text\" class=\"form-control\" id=\"pname\" name=\"pname\">\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>상품가격</td>\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t  <input type=\"text\" class=\"form-control\" id=\"price\" name=\"price\">\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>상품설명</td>\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t  <textarea class=\"form-control\" rows=\"5\" id=\"pcontent\" name=\"pcontent\"></textarea>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>상세색상</td>\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t  <input type=\"text\" class=\"form-control\" id=\"pcolor\" name=\"pcolor\">\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>상세크기</td>\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t  <input type=\"text\" class=\"form-control\" id=\"psize\" name=\"psize\">\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>상세소재</td>\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t  <input type=\"text\" class=\"form-control\" id=\"pmaterial\" name=\"pmaterial\">\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>상품재고</td>\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t  <input type=\"text\" class=\"form-control\" id=\"pqty\" name=\"pqty\">\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>이미지파일(4)</td>\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t  <input type=\"file\" class=\"form-control inputFile\" id=\"pimage1\" name=\"pimage1\">\r\n");
      out.write("\t\t\t\t\t\t\t  <input type=\"file\" class=\"form-control inputFile\" id=\"pimage2\" name=\"pimage2\">\r\n");
      out.write("\t\t\t\t\t\t\t  <input type=\"file\" class=\"form-control inputFile\" id=\"pimage3\" name=\"pimage3\">\r\n");
      out.write("\t\t\t\t\t\t\t  <input type=\"file\" class=\"form-control inputFile\" id=\"pimage4\" name=\"pimage4\">\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td colspan=\"2\" style=\"text-align: center;\"> \r\n");
      out.write("\t\t\t\t\t\t\t<button class=\"login-input btn-third btn-Css btn-another\" id=\"register-btn\" style=\"color:white; font-size: 9pt; width: 600px;\">상품 등록</button>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</table>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
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
