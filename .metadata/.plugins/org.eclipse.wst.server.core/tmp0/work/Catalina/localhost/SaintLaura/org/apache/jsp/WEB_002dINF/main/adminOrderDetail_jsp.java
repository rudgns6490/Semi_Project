/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 10:20:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminOrderDetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
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
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Lato\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t\r\n");
      out.write("\t$(document).ready( function(){\r\n");
      out.write("\r\n");
      out.write("\t\tgiveOrget();\r\n");
      out.write("\t\tgoSelectReturnInfo();\r\n");
      out.write("\t\tgoInvoiceNoSelectInfo();\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t// 주문상태 - 배송하기\r\n");
      out.write("\t\t$(\"#selectOS\").bind(\"change\", function(){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar idx = $(\".adminTableTR\").find(\"#idx\").text();\r\n");
      out.write("\t\t\tvar orderDetailNo = $(\".adminTableTR\").find(\"#orderDetailNo\").text();\r\n");
      out.write("\t\t\tvar selectOS = $(\"#selectOS option:selected\").val();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tgoOrderDeliveryUpdate(idx, orderDetailNo, selectOS);\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\r\n");
      out.write("\t\t// 반품상태 select\r\n");
      out.write("\t\t$(\"#returnStatus\").bind(\"change\", function(){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar idx = $(\".adminTableTR\").find(\"#idx\").text();\r\n");
      out.write("\t\t\tvar pnum = $(\".adminTableTR\").find(\"#pnum\").text();\r\n");
      out.write("\t\t\tvar orderDetailNo = $(\".adminTableTR\").find(\"#orderDetailNo\").text();\r\n");
      out.write("\t\t\tvar returnStatus = $(\"#returnStatus option:selected\").val();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tgoReturnInsert(idx, pnum, orderDetailNo, returnStatus);\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t// 변경 버튼을 누르면 update!!\r\n");
      out.write("\t\t$(\"#revise\").click( function(){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$(\"#selectedRS\").hide();\r\n");
      out.write("\t\t\t$(\"#returnStatus\").show();\r\n");
      out.write("\t\t});\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t// 교환할 제품번호 입력하기(교환신청일때만 가능!!)\r\n");
      out.write("\t\t$(\"#inputChagePnum\").keydown( function(event){\r\n");
      out.write("\t\t\tif(event.keyCode == 13) {\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tvar chagePnum = $(this).val()\t\t\t\t\r\n");
      out.write("\t\t\t\tvar orderDetailNo = $(\"#orderDetailNo\").text();\r\n");
      out.write("\t\t\t\tvar returnStatus = $(\"#hiddenSelectedRS\").val();\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t// 입력한 제품번호로 주문테이블, 제품테이블 업데이트\r\n");
      out.write("\t\t\t\tgoUpdateOrder(chagePnum, orderDetailNo, returnStatus);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t}); // end of $(document).ready( function()----------------\r\n");
      out.write("\t\r\n");
      out.write("\t// 목록으로 가기\r\n");
      out.write("\tfunction goOrderMenu() {\r\n");
      out.write("\t\tlocation.href=\"adminOrderYSL.ysl\";\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t// 받는사람과 주는사람의 정보가 같을경우~\r\n");
      out.write("\tfunction giveOrget() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tvar orderName = $(\"#orderName\").text();\r\n");
      out.write("\t\tvar orderHp = $(\"#orderHp\").text();\r\n");
      out.write("\t\tvar name = $(\"#name\").text();\r\n");
      out.write("\t\tvar hp = $(\"#hp\").text();\r\n");
      out.write("\r\n");
      out.write("\t\tif(orderName == name && orderHp == hp) {\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$(\"#getPerson\").hide();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t// 주문상태 바꾸면 update하기!\r\n");
      out.write("\tfunction goOrderDeliveryUpdate(idx, orderDetailNo, selectOS) {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\turl:\"");
      out.print( ctxPath);
      out.write("/adminOrderDeliveryUpdate.ysl\",\r\n");
      out.write("\t\t\ttype:\"POST\",\r\n");
      out.write("\t\t\tdata:{\"idx\":idx\r\n");
      out.write("\t\t\t\t ,\"orderDetailNo\":orderDetailNo\r\n");
      out.write("\t\t\t\t ,\"selectOS\":selectOS},\r\n");
      out.write("\t\t\tdataType:\"JSON\",\r\n");
      out.write("\t\t\tsuccess: function(json){\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tlocation.reload();\r\n");
      out.write("\t\t\t\talert(json.msg);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t// 송장번호 읽어오기\r\n");
      out.write("\t\t\t\tgoInvoiceNoSelectInfo();\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t},\r\n");
      out.write("\t\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\t\talert(\"code: \"+request.status+\"\\n\"+\"message: \"+request.responseText+\"\\n\"+\"error: \"+error);\r\n");
      out.write("\t\t\t} \r\n");
      out.write("\t\t\t  \r\n");
      out.write("\t\t   });\r\n");
      out.write("\t} // end of function goOrderDeliveryUpdate(idx, pnum, orderDetailNo, returnStatus)------------------------------\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t// 송장번호 읽어오기!\r\n");
      out.write("\tfunction goInvoiceNoSelectInfo() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\turl:\"");
      out.print( ctxPath);
      out.write("/adminInvoiceNoInsert.ysl\",\r\n");
      out.write("\t\t\ttype:\"POST\",\r\n");
      out.write("\t\t\tdata:{\"orderDetailNo\":\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.orderDetailNo}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"},\r\n");
      out.write("\t\t\tdataType:\"JSON\",\r\n");
      out.write("\t\t\tsuccess: function(json){\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tvar invoiceNo = json.invoiceNo;\r\n");
      out.write("\t\t\t\tvar invoiceDate = json.invoiceDate;\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\"#invoiceNo\").text(invoiceNo);\r\n");
      out.write("\t\t\t\t$(\"#invoiceDate\").text(invoiceDate);\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t},\r\n");
      out.write("\t\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\t\talert(\"code: \"+request.status+\"\\n\"+\"message: \"+request.responseText+\"\\n\"+\"error: \"+error);\r\n");
      out.write("\t\t\t} \r\n");
      out.write("\t\t\t  \r\n");
      out.write("\t\t   });\r\n");
      out.write("\t} // end of function goReturnInsert(idx, pnum, orderDetailNo, returnStatus)--------------------------\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t// 반품상태 바꾸면 insert하기!\r\n");
      out.write("\tfunction goReturnInsert(idx, pnum, orderDetailNo, returnStatus) {\r\n");
      out.write("\t\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\turl:\"");
      out.print( ctxPath);
      out.write("/adminReturnInsert.ysl\",\r\n");
      out.write("\t\t\ttype:\"POST\",\r\n");
      out.write("\t\t\tdata:{\"idx\":idx\r\n");
      out.write("\t\t\t\t ,\"pnum\":pnum\r\n");
      out.write("\t\t\t\t ,\"orderDetailNo\":orderDetailNo\r\n");
      out.write("\t\t\t\t ,\"returnStatus\":returnStatus},\r\n");
      out.write("\t\t\tdataType:\"JSON\",\r\n");
      out.write("\t\t\tsuccess: function(json){\r\n");
      out.write("\t\t\t\tlocation.reload();\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t// 교환신청은 제품재고 확인했을 때 alert\r\n");
      out.write("\t\t\t\tif(returnStatus != \"4\") {\r\n");
      out.write("\t\t\t\t\talert(json.msg);\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tgoSelectReturnInfo();\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t},\r\n");
      out.write("\t\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\t\talert(\"code: \"+request.status+\"\\n\"+\"message: \"+request.responseText+\"\\n\"+\"error: \"+error);\r\n");
      out.write("\t\t\t} \r\n");
      out.write("\t\t\t  \r\n");
      out.write("\t\t   });\r\n");
      out.write("\t} // end of function goReturnInsert(idx, pnum, orderDetailNo, returnStatus)--------------------------\r\n");
      out.write("\t\r\n");
      out.write("\t// 반품테이블에서 정보 읽어오기\r\n");
      out.write("\tfunction goSelectReturnInfo() {\r\n");
      out.write("\t\t   \r\n");
      out.write("\t\t   $.ajax({\r\n");
      out.write("\t\t\t\t  url:\"");
      out.print( ctxPath);
      out.write("/adminReturnSelect.ysl\",\r\n");
      out.write("\t\t\t\t//type:\"GET\",  // DML 은 POST, select문은 GET\r\n");
      out.write("\t\t\t\t  data:{\"orderDetailNo\":\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.orderDetailNo}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"}, \r\n");
      out.write("\t\t\t\t  dataType:\"JSON\",\r\n");
      out.write("\t\t\t\t  success : function(json) {\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t  var returnStatus = json.returnStatus;\r\n");
      out.write("\t\t\t\t\t  var returnMap = json.returnMap;\r\n");
      out.write("\t\t\t\t\t  \r\n");
      out.write("\t\t\t\t\t  if(returnMap != null) {\r\n");
      out.write("\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t\t var returnDetailNo = json.returnDetailNo;\r\n");
      out.write("\t\t\t\t\t\t var returnDate = json.returnDate;\r\n");
      out.write("\t\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t\t $(\"#returnDetailNo\").text(returnDetailNo);\r\n");
      out.write("\t\t\t\t\t\t $(\"#returnDate\").text(returnDate);\r\n");
      out.write("\t\t\t\t\t\t $(\"#hiddenSelectedRS\").val(returnStatus);\r\n");
      out.write("\t\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t\t // 교환신청 일때 교환제품 입력칸 활성화\r\n");
      out.write("\t\t\t\t\t\t if(returnStatus == \"4\") {\r\n");
      out.write("\t\t\t\t\t\t\t$(\"#inputChagePnum\").attr(\"disabled\", false);\r\n");
      out.write("\t\t\t\t\t\t }\r\n");
      out.write("\t\t\t\t\t\t else {\r\n");
      out.write("\t\t\t\t\t\t    $(\"#inputChagePnum\").attr(\"disabled\", true);\r\n");
      out.write("\t\t\t\t\t\t }\r\n");
      out.write("\t\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t\tswitch (returnStatus) {\r\n");
      out.write("\t\t\t\t\t\tcase \"4\":\r\n");
      out.write("\t\t\t\t\t\t\treturnStatus = \"교환신청\"\r\n");
      out.write("\t\t\t\t\t\t\tbreak;\r\n");
      out.write("\t\t\t\t\t\tcase \"5\":\r\n");
      out.write("\t\t\t\t\t\t\treturnStatus = \"교환완료\"\r\n");
      out.write("\t\t\t\t\t\t\tbreak;\r\n");
      out.write("\t\t\t\t\t\tcase \"6\":\r\n");
      out.write("\t\t\t\t\t\t\treturnStatus = \"반품신청\"\r\n");
      out.write("\t\t\t\t\t\t\tbreak;\r\n");
      out.write("\t\t\t\t\t\tcase \"7\":\r\n");
      out.write("\t\t\t\t\t\t\treturnStatus = \"반품완료\"\r\n");
      out.write("\t\t\t\t\t\t\tbreak;\r\n");
      out.write("\t\t\t\t\t\tcase \"8\":\r\n");
      out.write("\t\t\t\t\t\t\treturnStatus = \"교환취소\"\r\n");
      out.write("\t\t\t\t\t\t\tbreak;\r\n");
      out.write("\t\t\t\t\t\tcase \"9\":\r\n");
      out.write("\t\t\t\t\t\t\treturnStatus = \"반품취소\"\r\n");
      out.write("\t\t\t\t\t\t\tbreak;\r\n");
      out.write("\t\t\t\t\t\tdefault:\r\n");
      out.write("\t\t\t\t\t\t\tbreak;\r\n");
      out.write("\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t$(\"#selectedRS\").text(returnStatus);\r\n");
      out.write("\t\t\t\t\t\t$(\"#selectedRS\").show();\r\n");
      out.write("\t\t\t\t\t\t$(\"#returnStatus\").hide();\r\n");
      out.write("\t\t\t\t\t\treturn;\r\n");
      out.write("\t\t\t\t\t  }\r\n");
      out.write("\t\t\t\t\t  else{\r\n");
      out.write("\t\t\t\t\t\t  \r\n");
      out.write("\t\t\t\t\t\t  $(\"#returnStatus\").show();\r\n");
      out.write("\t\t\t\t\t\t  $(\"#returnStatus\").val(\"0\");\r\n");
      out.write("\t\t\t\t\t  }\r\n");
      out.write("\t\t\t\t  },\r\n");
      out.write("\t\t\t\t  error: function(request, status, error){\r\n");
      out.write("\t\t\t\t\t\talert(\"code: \"+request.status+\"\\n\"+\"message: \"+request.responseText+\"\\n\"+\"error: \"+error);\r\n");
      out.write("\t\t\t\t  }\r\n");
      out.write("\t\t   });\r\n");
      out.write("\t   } // end of function goselectReturnInfo()---------------------------------------------\r\n");
      out.write("\t\r\n");
      out.write("\t   function goUpdateOrder(chagePnum, orderDetailNo, returnStatus) {\r\n");
      out.write("\t\t   // 제품을 교환하면 제품명, 주문일자, 주문상태 바꾸고\r\n");
      out.write("\t\t   // 주문한 제품 재고량 +1\r\n");
      out.write("\t\t   $.ajax({\r\n");
      out.write("\t\t\t  url:\"");
      out.print( ctxPath);
      out.write("/adminUpdateOrder.ysl\", \r\n");
      out.write("\t\t\t  type:\"POST\",\r\n");
      out.write("\t\t\t  data:{\"pnum\":chagePnum\r\n");
      out.write("\t\t\t\t   ,\"orderDetailNo\":orderDetailNo\r\n");
      out.write("\t\t\t\t   ,\"returnStatus\":returnStatus},\r\n");
      out.write("\t\t\t  dataType:\"JSON\",\r\n");
      out.write("\t\t\t  success: function(json){\r\n");
      out.write("\t\t\t\t  location.reload();\r\n");
      out.write("\t\t\t\t  alert(json.msg);\r\n");
      out.write("\t\t\t\t \r\n");
      out.write("\t\t\t\t  goSearchName(chagePnum);\r\n");
      out.write("\t\t      },\r\n");
      out.write("\t\t\t  error: function(request, status, error){\r\n");
      out.write("\t\t\t\t  alert(\"code: \"+request.status+\"\\n\"+\"message: \"+request.responseText+\"\\n\"+\"error: \"+error);\r\n");
      out.write("\t\t\t  } \r\n");
      out.write("\t\t   });\r\n");
      out.write("\t\t   \r\n");
      out.write("\t   }\r\n");
      out.write("\t   \r\n");
      out.write("\t   // 교환할 제품이름 select 해오기~\r\n");
      out.write("\t   function goSearchName(chagePnum) {\r\n");
      out.write("\t\t   \r\n");
      out.write("\t\t   $.ajax({\r\n");
      out.write("\t\t\t\turl:\"");
      out.print( ctxPath);
      out.write("/adminSearchName.ysl\",\r\n");
      out.write("\t\t\t\tdata:{\"pnum\":chagePnum},\r\n");
      out.write("\t\t\t\tdataType:\"JSON\",\r\n");
      out.write("\t\t\t\tsuccess: function(json){\r\n");
      out.write("\t\t\t\t\tvar pname = json.pname;\r\n");
      out.write("\t\t\t\t\t$(\"#chagePname\").text(pname);\r\n");
      out.write("\t\t\t\t\t$(\"#pnum\").text(chagePnum);\r\n");
      out.write("\t\t\t\t\talert($(\"#pnum\").text());\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t},\r\n");
      out.write("\t\t\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\t\t\talert(\"code: \"+request.status+\"\\n\"+\"message: \"+request.responseText+\"\\n\"+\"error: \"+error);\r\n");
      out.write("\t\t\t\t} \r\n");
      out.write("\t\t\t\t  \r\n");
      out.write("\t\t   });\t\t   \r\n");
      out.write("\t   } \r\n");
      out.write("\t\t   \r\n");
      out.write("\t   \r\n");
      out.write("\t   \r\n");
      out.write("\t  \r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"adminContainer\">\r\n");
      out.write("\t\t<div class=\"adminrow adminFirRow\">\r\n");
      out.write("\t\t\t<img src=\"images/payment-logo.png\" class=\"admingLogo\" />\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-xs-3 adminMenurow adminrow\" style=\"border-right: hidden;\" >\r\n");
      out.write("\t\t\t<div class=\"adminMenu adminOrder\"><span id=\"adminOrder\" onclick=\"goOrderMenu();\">주문&반품리스트</span></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-xs-3 adminMenurow adminrow\" style=\"border-right: hidden; border-left: hidden;\">\r\n");
      out.write("\t\t\t<div class=\"adminMenu adminProduct\"><span id=\"adminProduct\" onclick=\"goProductMenu();\">상품등록</span></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-xs-3 adminMenurow adminrow\" style=\"border-right: hidden; border-left: hidden;\">\r\n");
      out.write("\t\t\t<div class=\"adminMenu adminCustomer\"><span id=\"adminCustomer\" onclick=\"goCustomerMenu();\">고객리스트</span></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-xs-3 adminMenurow adminrow\" style=\"border-left: hidden;\">\r\n");
      out.write("\t\t\t<div class=\"adminMenu adminService\"><span id=\"adminService\" onclick=\"goServiceMenu();\">고객서비스</span></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"adminContentrow adminrow\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\t\t\t<form name=\"ordeDetailFrm\">\r\n");
      out.write("\t\t\t");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t");
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
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
      // /WEB-INF/main/adminOrderDetail.jsp(309,3) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty orderDetail}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
      if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t<div class=\"adminContent adminOrderDetail\">\r\n");
          out.write("\t\t\t\t<table class=\"adminOrderDetailTable\">\r\n");
          out.write("\t\t\t\t\t<tr class=\"adminTableTR\">\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">주문번호</td>\r\n");
          out.write("\t\t\t\t\t\t<td><span id=\"orderNo\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.orderNo}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</span></td>\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">주문일자</td>\r\n");
          out.write("\t\t\t\t\t\t<td><span id=\"orderDate\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.orderDate}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</span></td>\r\n");
          out.write("\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t\t<tr class=\"adminTableTR\">\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">주문상태</td>\r\n");
          out.write("\t\t\t\t\t\t<td colspan=\"3\">\r\n");
          out.write("\t\t\t\t\t\t\t<span id=\"orderStatus\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.orderStatus}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</span>\r\n");
          out.write("\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
          out.write("\t\t\t\t\t\t\t<select id=\"selectOS\" name=\"selectOS\">\r\n");
          out.write("\t\t\t\t\t\t\t\t<option style=\"font-size: 9pt;\" value=\"0\">::: 선택 :::</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\" value=\"2\">배송하기</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\" value=\"3\">배송완료</option>\r\n");
          out.write("\t\t\t\t\t\t\t</select>\r\n");
          out.write("\t\t\t\t\t\t</td>\r\n");
          out.write("\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t\t\r\n");
          out.write("\t\t\t\t\t<tr class=\"adminTableTR\">\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">트래킹번호</td>\r\n");
          out.write("\t\t\t\t\t\t<td>\r\n");
          out.write("\t\t\t\t\t\t\t<span id=\"invoiceNo\"></span>\r\n");
          out.write("\t\t\t\t\t\t</td>\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">배송일자</td>\r\n");
          out.write("\t\t\t\t\t\t<td>\r\n");
          out.write("\t\t\t\t\t\t\t<span id=\"invoiceDate\"></span>\r\n");
          out.write("\t\t\t\t\t\t</td>\r\n");
          out.write("\t\t\t\t\t\t\r\n");
          out.write("\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t\t\r\n");
          out.write("\t\t\t\t\t<tr class=\"adminTableTR adminReturnReasonTR\">\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">반품상태</td>\r\n");
          out.write("\t\t\t\t\t\t<td>\r\n");
          out.write("\t\t\t\t\t\t\t<div id=\"returnStatusDiv\" style=\"display:inline-block;\">\r\n");
          out.write("\t\t\t\t\t\t\t<select id=\"returnStatus\" name=\"returnStatus\">\r\n");
          out.write("\t\t\t\t\t\t\t\t<option style=\"font-size: 9pt;\" value=\"0\">::: 선택 :::</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\" value=\"4\">교환신청</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\" value=\"5\">교환완료</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\" value=\"6\">반품신청</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\" value=\"7\">반품완료</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\" value=\"8\">교환취소</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\" value=\"9\">반품취소</option>\r\n");
          out.write("\t\t\t\t\t\t\t</select>\r\n");
          out.write("\t\t\t\t\t\t\t  \r\n");
          out.write("\t\t\t\t\t\t\t<span id=\"selectedRS\"></span>\r\n");
          out.write("\t\t\t\t\t\t\t<input id=\"hiddenSelectedRS\" type=\"hidden\" value=\"\"/>\r\n");
          out.write("\t\t\t\t\t\t\t</div>\r\n");
          out.write("\t\t\t\t\t\t\t<span id=\"revise\" style=\"background-color:black; color:white; padding: 1px 3px; margin-left: 10px; cursor:pointer;\">변경</span>\r\n");
          out.write("\t\t\t\t\t\t\t\r\n");
          out.write("\t\t\t\t\t\t</td>\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">교환&반품사유</td>\r\n");
          out.write("\t\t\t\t\t\t<td>\r\n");
          out.write("\t\t\t\t\t\t\t<select>\r\n");
          out.write("\t\t\t\t\t\t\t\t<option style=\"font-size: 9pt;\">교환&반품시만 선택</option>\r\n");
          out.write("\t\t\t\t\t\t\t\t<option style=\"font-size: 9pt;\">구매의사취소</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\">색상 및 사이즈 변경</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\">다른 상품 잘못 주문</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\">서비스 불만족</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\">배송지연</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\">배송누락</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\">상품파손</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\">상품정보 상이</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\">오배송</option>\r\n");
          out.write("\t\t\t\t    \t\t\t<option style=\"font-size: 9pt;\">색상 등 다른상품 잘못 배송</option>\r\n");
          out.write("\t\t\t\t\t\t\t</select>\r\n");
          out.write("\t\t\t\t\t\t</td>\r\n");
          out.write("\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t\t<tr class=\"adminTableTR\">\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">반품번호</td>\r\n");
          out.write("\t\t\t\t\t\t<td><span id=\"returnDetailNo\"></span></td>\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">반품접수일자</td>\r\n");
          out.write("\t\t\t\t\t\t<td><span id=\"returnDate\"></span></td>\r\n");
          out.write("\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t\t<tr class=\"adminTableTR\">\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">주문고객번호</td>\r\n");
          out.write("\t\t\t\t\t\t<td id=\"idx\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.idx}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">이메일</td>\r\n");
          out.write("\t\t\t\t\t\t<td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.email}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("\t\t\t\t\t\t\r\n");
          out.write("\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t\t<tr class=\"adminTableTR\">\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">주문고객명</td>\r\n");
          out.write("\t\t\t\t\t\t<td id=\"orderName\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.orderName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">연락처</td>\r\n");
          out.write("\t\t\t\t\t\t<td id=\"orderHp\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.orderHp}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t\t<tr class=\"adminTableTR\" id=\"getPerson\">\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">받는사람</td>\r\n");
          out.write("\t\t\t\t\t\t<td id=name>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">받는사람 연락처</td>\r\n");
          out.write("\t\t\t\t\t\t<td id=\"hp\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.hp}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</td>\t\t\t\t\t\t\r\n");
          out.write("\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t\t<tr class=\"adminTableTR\">\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">우편번호</td>\r\n");
          out.write("\t\t\t\t\t\t<td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.post}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("\t\t\t\t\t\t<td class=\"tableName\">주소</td>\r\n");
          out.write("\t\t\t\t\t\t<td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.addr}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t\t<tr class=\"adminTableTR\">\r\n");
          out.write("\t\t\t\t\t\t<td>상세주문번호<br/>(#<span id=\"orderDetailNo\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.orderDetailNo}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</span>)</td>\r\n");
          out.write("\t\t\t\t\t\t<td>제품번호<br/>(#<span id=\"pnum\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.pnum}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</span>)</td>\r\n");
          out.write("\t\t\t\t\t\t<td id=\"chagePname\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderDetail.pname}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("\t\t\t\t\t\t<td id=\"chagePnum\">교환제품번호<input type=\"text\" id=\"inputChagePnum\" name=\"inputChagePnum\" disabled/></td>\r\n");
          out.write("\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t\t<tr>\r\n");
          out.write("\t\t\t\t\t\t<td colspan=\"4\" style=\"text-align: center; border-left: hidden; border-right: hidden; border-bottom: hidden; vertical-align: middle;\">\r\n");
          out.write("\t\t\t\t\t\t\t<button type=\"button\" class=\"btn-third btn-Css btn-another\" id=\"goList-btn\" style=\"color:white; font-size: 9pt; width: 160px;\" onclick=\"goOrderMenu();\">목록으로</button>\r\n");
          out.write("\t\t\t\t\t\t</td>\r\n");
          out.write("\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t</table>\r\n");
          out.write("\t\t\t</div>\r\n");
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
}
