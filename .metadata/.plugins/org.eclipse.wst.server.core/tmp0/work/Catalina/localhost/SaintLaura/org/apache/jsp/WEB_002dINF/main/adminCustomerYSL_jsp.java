/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 10:23:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminCustomerYSL_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("$(document).ready(function() {\r\n");
      out.write("\t\r\n");
      out.write("\t/* $(\".adminContent\").hide();\r\n");
      out.write("\t$(\".adminContentCustomer\").show();\r\n");
      out.write("\t$(\".adminMenu span\").removeClass(\"menuFontBold\");\r\n");
      out.write("\t$(\"#adminCustomer\").addClass(\"menuFontBold\"); */\r\n");
      out.write("\t\r\n");
      out.write("\tcurrentShowPageNo = 1;\r\n");
      out.write("\tcustomerSearch();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t$(\"#searchCustomerWord\").bind(\"keydown\", function(event) {\t\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tif(event.keyCode==13) {\r\n");
      out.write("\t\t\tevent.preventDefault();\r\n");
      out.write("\t\t\tvar searchCustomerWord = $(this).val();\r\n");
      out.write("\t\t\tcurrentShowPageNo = 1;\r\n");
      out.write("\t\t\tcustomerSearch();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t})\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t$(\"#memberType\").bind(\"change\", function() {\r\n");
      out.write("\t\tcurrentShowPageNo = 1;\r\n");
      out.write("\t\tcustomerSearch();\r\n");
      out.write("\t\t\r\n");
      out.write("\t})\r\n");
      out.write("\t\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("var currentShowPageNo = 1; // 현재 페이지 변수를 1로 초기화\r\n");
      out.write("\r\n");
      out.write("function customerSearch() {\t\t\r\n");
      out.write("\t\r\n");
      out.write("\tvar searchCustomerType = $(\"#searchCustomerType\").val();\t\r\n");
      out.write("\tvar searchCustomerWord = $(\"#searchCustomerWord\").val();\r\n");
      out.write("\tvar memberType = $(\"#memberType\").val();\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t$(\"#searchCustomerType\").bind(\"change\", function() {\t\t\t\r\n");
      out.write("\t\tsearchCustomerType = $(this).val();\r\n");
      out.write("\t})\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t$(\"#memberType\").bind(\"change\", function() {\t\t\t\r\n");
      out.write("\t\tsearchCustomerType = $(this).val();\r\n");
      out.write("\t\t\r\n");
      out.write("\t})\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t// 회원목록 DB에서 가져오기 && 페이지처리\r\n");
      out.write("\t$.ajax({\r\n");
      out.write("\t\t\r\n");
      out.write("\t\turl:\"/SaintLaura/customerList.ysl\",\r\n");
      out.write("\t\tdata:{\"searchCustomerType\":searchCustomerType,\"searchCustomerWord\":searchCustomerWord,\"memberType\":memberType,\"currentShowPageNo\":currentShowPageNo},\r\n");
      out.write("\t\tdataType:\"JSON\",\r\n");
      out.write("\t\tsuccess:function(json){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar list = json.listArray;\r\n");
      out.write("\t\t\tvar page = json.pageArray;\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$(\"#adminCustomerList\").empty();\t\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar html =\"\";\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\thtml += \"<thead>\";\r\n");
      out.write("\t\t\thtml += \"<tr class='adminTableTR'>\";\r\n");
      out.write("\t\t\thtml += \"<th>고객번호</th>\";\r\n");
      out.write("\t\t\thtml += \"<th>이메일</th>\";\r\n");
      out.write("\t\t\thtml += \"<th>성명</th>\";\r\n");
      out.write("\t\t\thtml += \"<th>연락처</th>\";\r\n");
      out.write("\t\t\thtml += \"<th>가입상태</th>\";\r\n");
      out.write("\t\t\thtml += \"</tr>\";\r\n");
      out.write("\t\t\thtml += \"</thead>\";\r\n");
      out.write("\t\t\thtml += \"<tbody>\";\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif(list.length == 0) {\r\n");
      out.write("\t\t\t\thtml += \"<tr class='adminTableTR' style='cursor: pointer;' onclick='goCustomerDetail();'>\";\r\n");
      out.write("\t\t\t\thtml += \"<td colspan='5'>\";\r\n");
      out.write("\t\t\t\thtml += \"가입된 회원이 없습니다.\";\r\n");
      out.write("\t\t\t\thtml += \"</td>\";\r\n");
      out.write("\t\t\t\thtml += \"</tr>\";\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\telse {\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$.each(list, function(index, item) {\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\thtml += \"<tr class='adminTableTR' id='pagingTR\"+index+\"' style='cursor: pointer;' onclick='goCustomerDetail(\"+item.idx+\");'>\";\r\n");
      out.write("\t\t\t\t\t\thtml += \"<td>\" +item.idx+ \"</td>\";\r\n");
      out.write("\t\t\t\t\t\thtml += \"<td>\" +item.email+ \"</td>\";\r\n");
      out.write("\t\t\t\t\t\thtml += \"<td>\" +item.name+ \"</td>\";\r\n");
      out.write("\t\t\t\t\t\thtml += \"<td>\" +item.hp1+ \"-\" +item.hp2+ \"-\" +item.hp3+ \"</td>\";\r\n");
      out.write("\t\t\t\t\t\thtml += \"<td>\" +item.status+ \"</td>\";\r\n");
      out.write("\t\t\t\t\t\thtml += \"</tr>\";\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t});\t\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\thtml += \"</tbody>\";\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$(\"#adminCustomerList\").html(html);\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t// #### Pagination\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tcurrentShowPageNo = page[0].currentShowPageNo;\r\n");
      out.write("\t\t\tvar totalPage = page[0].totalPage;\r\n");
      out.write("\t\t\tvar pageNo = page[0].pageNo;\r\n");
      out.write("\t\t\tvar blockSize = page[0].blockSize;\r\n");
      out.write("\t\t\tvar loop = page[0].loop;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t$(\"#adminCustomerPageBar\").empty();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t// previous\t\t\t\t\r\n");
      out.write("\t\t\tif(pageNo != 1) {\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\"#adminCustomerPageBar\").append(\"<li class='page-item goPreviousPage'>\"+\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t  \"<a class='page-link' aria-label='Previous'>\" +\r\n");
      out.write("\t\t\t\t\t\t   \t\t\t\t\t\t  \"<span aria-hidden='true'>&laquo;</span>\" +\r\n");
      out.write("\t\t\t\t\t\t   \t\t\t\t\t\t  \"<span class='sr-only'>Previous</span>\" +\r\n");
      out.write("\t\t\t\t\t\t   \t\t\t\t\t\t  \"</a></li>\")\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t// Page Bar\t\t\t\t\r\n");
      out.write("\t\t\twhile(!(loop>blockSize || pageNo>totalPage)) {\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\"#adminCustomerPageBar\").append(\"<li class='page-item goPage' data-page=\"+pageNo+\"><a class='page-link'>\"+pageNo+\"</a></li>\");\r\n");
      out.write("\t\t\t\tpageNo = pageNo + 1;\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\tloop = loop + 1;\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t}\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t// Next\r\n");
      out.write("\t\t\tif(pageNo<totalPage) { // 페이지 수가 총 페이지 수보다 크다면\r\n");
      out.write("\t\t\t\t$(\"#adminCustomerPageBar\").append(\"<li class='page-item goNextPage'>\" +\r\n");
      out.write("\t\t\t\t\t\t   \t\t\t\t\t\t  \"<a class='page-link' aria-label='Next'>\" + \r\n");
      out.write("\t\t\t\t\t\t   \t\t\t\t\t\t  \"<span aria-hidden='true'>&raquo;</span>\" +\r\n");
      out.write("\t\t\t\t\t\t   \t\t\t\t\t\t  \"<span class='sr-only'>Next</span>\" +\r\n");
      out.write("\t\t\t\t\t\t   \t\t\t\t\t\t  \"</a></li>\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t// 이전 페이지블럭으로\r\n");
      out.write("\t\t\t$(\"#adminCustomerPageBar\").find(\".goPreviousPage\").bind(\"click\", function() {\t\t\t\t\t\r\n");
      out.write("\t\t\t\tcurrentShowPageNo = pageNo-(pageNo%10);\t\t\t\t\t\r\n");
      out.write("\t\t\t\tcustomerSearch();\t\t\t\t\t\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t// 페이지 번호를 누른다면\r\n");
      out.write("\t\t\t$(\"#adminCustomerPageBar\").find(\".goPage\").bind(\"click\", function() {\t\r\n");
      out.write("\t\t\t\tcurrentShowPageNo = $(this).attr(\"data-page\");\t\t\t\t\t\r\n");
      out.write("\t\t\t\tcustomerSearch();\t\t\t\t\t\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t// 다음 페이지 블럭으로\r\n");
      out.write("\t\t\t$(\"#adminCustomerPageBar\").find(\".goNextPage\").bind(\"click\", function() {\t\t\t\t\t\r\n");
      out.write("\t\t\t\tcurrentShowPageNo = pageNo;\t\t\t\t\t\r\n");
      out.write("\t\t\t\tcustomerSearch();\t\t\t\t\t\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t},\r\n");
      out.write("\t\t\r\n");
      out.write("\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\talert(\"code : \" + request.status + \"\\n\" + \"message : \" +request.responseText + \"\\n\" +\"error : \" + error);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t});\r\n");
      out.write("} // end of function customerSearch() ---------------\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("function goCustomerDetail(idx) {\r\n");
      out.write("\t\r\n");
      out.write("\t$(\".adminContent\").hide();\r\n");
      out.write("\t$(\".adminCustomerDetail\").show();\r\n");
      out.write("\t\r\n");
      out.write("\t$.ajax({\r\n");
      out.write("\t\t\r\n");
      out.write("\t\turl:\"/SaintLaura/customerDetail.ysl\",\r\n");
      out.write("\t\tdata: {\"idx\":idx},\r\n");
      out.write("\t\tdataType:\"JSON\",\r\n");
      out.write("\t\tsuccess:function(json){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar html = \"\";\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif(json.length==0) {\r\n");
      out.write("\t\t\t\thtml += \"<tr>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>가입된 회원이 없습니다.<td>\";\r\n");
      out.write("\t\t\t\thtml += \"</tr>\";\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\telse {\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\thtml += \"<tr class='adminTableTR'>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>회원번호</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>\"+json.idx+\"</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>이메일</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>\"+json.email+\"</td>\";\r\n");
      out.write("\t\t\t\thtml += \"</tr>\";\r\n");
      out.write("\t\t\t\thtml += \"<tr class='adminTableTR'>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>회원명</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>\"+json.name+\"</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>연락처</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>\"+json.hp1+ \"-\" +json.hp2+ \"-\" +json.hp3+\"</td>\";\r\n");
      out.write("\t\t\t\thtml += \"</tr>\";\r\n");
      out.write("\t\t\t\thtml += \"<tr class='adminTableTR'>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>우편번호</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>\"+json.post+\"</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>주소</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>\"+json.addr1 + json.addr2+\"</td>\";\r\n");
      out.write("\t\t\t\thtml += \"</tr>\";\r\n");
      out.write("\t\t\t\thtml += \"<tr class='adminTableTR'>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>성별</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>\"+json.gender+\"</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>생년월일</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>\"+json.birthday+\"</td>\";\r\n");
      out.write("\t\t\t\thtml += \"</tr>\";\r\n");
      out.write("\t\t\t\thtml += \"<tr class='adminTableTR'>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>가입일자</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>\"+json.registerday+\"</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>가입상태</td>\";\r\n");
      out.write("\t\t\t\thtml += \"<td>\"+json.status+\"</td>\";\r\n");
      out.write("\t\t\t\thtml += \"</tr>\";\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tif(json.status==\"회원\") {\r\n");
      out.write("\t\t\t\t\tvar status = 1;\r\n");
      out.write("\t\t\t\t\thtml += \"<tr class='adminTableTR'>\";\r\n");
      out.write("\t\t\t\t\thtml += \"<td colspan='4' style='cursor:pointer; text-decoration:underline;' onclick='changeStatus(\"+status+\",\"+json.idx+\")'>탈퇴회원으로 변경</td>\";\r\n");
      out.write("\t\t\t\t\thtml += \"</tr>\";\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\telse {\r\n");
      out.write("\t\t\t\t\tvar status = 0;\r\n");
      out.write("\t\t\t\t\thtml += \"<tr class='adminTableTR'>\";\r\n");
      out.write("\t\t\t\t\thtml += \"<td colspan='4' style='cursor:pointer; text-decoration:underline;' onclick='changeStatus(\"+status+\",\"+json.idx+\")'>일반회원으로 변경</td>\";\r\n");
      out.write("\t\t\t\t\thtml += \"</tr>\";\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\thtml += \"<tr>\";\r\n");
      out.write("\t\t\t\thtml += \"<td colspan='4' style='text-align: center; border-left: hidden; border-right: hidden; border-bottom: hidden; vertical-align: middle;''>\";\r\n");
      out.write("\t\t\t\thtml += \"<button class='login-input btn-default login-btn' id='register-btn' style='color:white; font-size: 9pt; width: 160px;' onclick='javascript:location.reload(true)'>목록으로</button>\";\r\n");
      out.write("\t\t\t\thtml += \"</td>\";\r\n");
      out.write("\t\t\t\thtml += \"</tr>\";\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$(\"#adminOrderDetailTable\").html(html);\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t}, \r\n");
      out.write("\t\t\r\n");
      out.write("\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\talert(\"code : \" + request.status + \"\\n\" + \"message : \" +request.responseText + \"\\n\" +\"error : \" + error);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("} // end of function goCustomerDetail(idx)----------------- \r\n");
      out.write("\r\n");
      out.write("function changeStatus(status, idx) {\r\n");
      out.write("\t\r\n");
      out.write("\t$.ajax({\r\n");
      out.write("\t\t\r\n");
      out.write("\t\turl:\"/SaintLaura/changeMemberStatus.ysl\",\r\n");
      out.write("\t\ttype:\"POST\",\r\n");
      out.write("\t\tdata:{\"status\":status\r\n");
      out.write("\t\t\t ,\"idx\":idx},\r\n");
      out.write("\t\tdataType:\"JSON\",\r\n");
      out.write("\t\tsuccess:function(json){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif(json.n == 1) {\r\n");
      out.write("\t\t\t\talert(\"회원업데이트에 성공하였습니다.\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse {\r\n");
      out.write("\t\t\t\talert(\"회원업데이트에 실패하였습니다.\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tgoCustomerDetail(idx);\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t}, \r\n");
      out.write("\t\t\r\n");
      out.write("\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\talert(\"code : \" + request.status + \"\\n\" + \"message : \" +request.responseText + \"\\n\" +\"error : \" + error);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
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
      out.write("\t\t\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t<div class=\"adminContent adminContentCustomer\" id=\"adminContentCustomer\">\t\t\t\r\n");
      out.write("\t\t\t<form name=\"adminCustomerFrm\">\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t  <select id=\"searchCustomerType\" name=\"searchCustomerType\" class=\"form-control\" id=\"sel1\" style=\"width: 100px; height: 30px; margin-left: 108px; font-size: 9pt; display: inline;\">\r\n");
      out.write("\t\t\t\t    <option style=\"font-size: 9pt;\" value=\"email\">이메일</option>\r\n");
      out.write("\t\t\t\t    <option style=\"font-size: 9pt;\" value=\"name\">이름</option>\r\n");
      out.write("\t\t\t\t    <option style=\"font-size: 9pt;\" value=\"hp3\">연락처</option>\r\n");
      out.write("\t\t\t\t  </select>\r\n");
      out.write("\t\t\t\t  <input type=\"text\" class=\"form-control\" id=\"searchCustomerWord\" name=\"searchCustomerWord\" id=\"usr\" size=\"10\" style=\"display: inline; width: 120px; height: 28px\" placeholder=\"Enter\" />\r\n");
      out.write("\t\t\t\t  <select class=\"form-control\" name=\"memberType\" id=\"memberType\" id=\"sel1\" style=\"width: 100px; height: 30px; margin-left: 370px; font-size: 9pt; display: inline;\">\r\n");
      out.write("\t\t\t\t    <option value=\"2\" style=\"font-size: 9pt;\">모두보기</option>\r\n");
      out.write("\t\t\t\t    <option value=\"1\" style=\"font-size: 9pt;\">활동회원</option>\r\n");
      out.write("\t\t\t\t    <option value=\"0\" style=\"font-size: 9pt;\">탈퇴회원</option>\r\n");
      out.write("\t\t\t\t  </select>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<table class=\"adminTable adminCustomerList\" id=\"adminCustomerList\">\t\t\t\t\t\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<nav class=\"bottomNav\" aria-label=\"Page navigation example\">\r\n");
      out.write(" \t\t\t\t\t<ul class=\"pagination pg-blue\" id=\"adminCustomerPageBar\" style=\"cursor: pointer;\">\r\n");
      out.write(" \t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</nav>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t<div class=\"adminContent adminCustomerDetail\">\r\n");
      out.write("\t\t\t<table class=\"adminOrderDetailTable\" id=\"adminOrderDetailTable\">\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</div>\t\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t\r\n");
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