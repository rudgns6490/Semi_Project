/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 10:56:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.customerCenter;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class QnA_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/header_dog.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\t\r\n");
      out.write("\t#cs_Container {\r\n");
      out.write("\t\tmargin: 0 auto;\r\n");
      out.write("\t\twidth: 90%;\r\n");
      out.write("/* \t\tborder: solid 1px black; */\r\n");
      out.write("\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t#cs_Container ul {\r\n");
      out.write("\t\tlist-style: none;\r\n");
      out.write("\t\tpadding-left: 0px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.when {\r\n");
      out.write("\t\tfloat: left;\r\n");
      out.write("\t\tmargin: 20px 30px 20px 30px;\r\n");
      out.write("\t\tpadding-right: 0;\r\n");
      out.write("\t\twidth: 260px;\r\n");
      out.write("\t    height: 180px;\r\n");
      out.write("\t    padding: 30px 38px;\r\n");
      out.write("\t    line-height: 20px;\r\n");
      out.write("\t    border: 1px solid #eaeaea;\r\n");
      out.write("\t }\t\r\n");
      out.write("\t\r\n");
      out.write("\t.how {\r\n");
      out.write("\t\tfloat: left;\r\n");
      out.write("\t\tmargin: 20px 10px 20px 0px;\r\n");
      out.write("\t\twidth: 850px;\r\n");
      out.write("\t    height: 180px;\r\n");
      out.write("\t    padding: 5px 18px 20px 40px;\r\n");
      out.write("\t    border: 1px solid #eaeaea;\r\n");
      out.write("\t }\r\n");
      out.write("\t \r\n");
      out.write("\t .how > ul > li {\r\n");
      out.write("\t \tdisplay: inline-block;\r\n");
      out.write("\t }\r\n");
      out.write("\t \r\n");
      out.write("\t .tel {\r\n");
      out.write("\t \tfont-size: 21pt;\r\n");
      out.write("\t \tfont-weight: bold;\r\n");
      out.write("\t \tmargin-top: 0;\r\n");
      out.write("\t \tcolor: red;\r\n");
      out.write("\t }\r\n");
      out.write("\t \r\n");
      out.write("\t .time {\r\n");
      out.write("\t \tfont-size: 9pt;\r\n");
      out.write("\t }\r\n");
      out.write("\t \r\n");
      out.write("\t .fax {\r\n");
      out.write("\t \tfont-size: 11pt;\r\n");
      out.write("\t \tfont-weight:bold;\r\n");
      out.write("\t }\r\n");
      out.write("\t \r\n");
      out.write("\t .hint {\r\n");
      out.write("\t \tfont-size: 14pt;\r\n");
      out.write("\t \tcolor: gray;\r\n");
      out.write("\t \tfont-weight: bold;\r\n");
      out.write("\t \tmargin-top: 20px;\r\n");
      out.write("\t }\r\n");
      out.write("\t \r\n");
      out.write("\t .step {\r\n");
      out.write("/* \t \tborder: solid 1px blue; */\r\n");
      out.write("\t \tfont-size: 20px;\r\n");
      out.write("\t \tfont-weight: bold;\r\n");
      out.write("\t \tcolor: gray;\r\n");
      out.write("\t }\r\n");
      out.write("\t \r\n");
      out.write("\t .hintList {\r\n");
      out.write("/* \t \tborder: solid 1px red; */\r\n");
      out.write("\t \tmargin: 5px 5px;\r\n");
      out.write("\t \twidth: 30%;\r\n");
      out.write("/* \t \theight: 90px; */\r\n");
      out.write("\t \t\r\n");
      out.write("\t }\r\n");
      out.write("\t \r\n");
      out.write("\t #cs_Container dt {\r\n");
      out.write("\t \tmargin-top: 5px;\r\n");
      out.write("/* \t \tborder: solid 1px red; */\r\n");
      out.write("\t \tfont-size: 12pt;\r\n");
      out.write("\t \tfont-weight: bold;\r\n");
      out.write("\t }\r\n");
      out.write("\t \r\n");
      out.write("\t #cs_Container dd {\r\n");
      out.write("\t \tfont-size: 9pt;\r\n");
      out.write("\t \t\r\n");
      out.write("\t }\r\n");
      out.write("\t \r\n");
      out.write("\t \r\n");
      out.write("\t\t \t\r\n");
      out.write("\t/* tab */\r\n");
      out.write("\t.tab_menu li {\r\n");
      out.write("\t\twidth: 33%;\r\n");
      out.write("\t \tlist-style: none;\r\n");
      out.write("\t    float: left;\r\n");
      out.write("\t    border-bottom: 2px solid #dcdcdc;\r\n");
      out.write("\t    color: #000;\r\n");
      out.write("\t    font-size: 20px;\r\n");
      out.write("\t    font-weight: bold;\r\n");
      out.write("\t    text-align: center;\r\n");
      out.write("\t    cursor: pointer;\r\n");
      out.write("\t    height: 55px;\r\n");
      out.write("\t    line-height: 55px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.tab_menu li a {\r\n");
      out.write("\t    display: block;\r\n");
      out.write("\t    color: inherit;\r\n");
      out.write("\t    font: inherit;\r\n");
      out.write("\t    text-decoration: none;\r\n");
      out.write("\t    margin: 0 auto;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.tab_menu li.over {\r\n");
      out.write("\t    border-bottom: 2px solid #9d6849;\r\n");
      out.write("\t    color: #9d6849;\r\n");
      out.write("\t}\r\n");
      out.write("\t/* /tab */\r\n");
      out.write("\t\r\n");
      out.write("\t.searchBox {\r\n");
      out.write("\t\theight: 40px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.btnSearch {\r\n");
      out.write("\t\twidth: 80px;\r\n");
      out.write("\t    height: 40px;\r\n");
      out.write("\t    border: 0;\r\n");
      out.write("\t    background: #999;\r\n");
      out.write("\t    color: #fff;\r\n");
      out.write("\t    font-size: 13px;\r\n");
      out.write("\t    font-weight: bold;\r\n");
      out.write("\t    display: inline-block;\r\n");
      out.write("\t    text-align: center;\r\n");
      out.write("\t    line-height: 40px;\r\n");
      out.write("\t    cursor: pointer;\r\n");
      out.write("    }\r\n");
      out.write("\t\r\n");
      out.write("\t.board_contents {\r\n");
      out.write("\t\tmargin: 0;\r\n");
      out.write("\t    padding: 0;\r\n");
      out.write("\t    border: 0;\r\n");
      out.write("\t    outline: 0;\r\n");
      out.write("\t    color: inherit;\r\n");
      out.write("\t    font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;\r\n");
      out.write("\t    font-size: 12px;\r\n");
      out.write("\t    line-height: normal;\r\n");
      out.write("\t    vertical-align: baseline;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#cs_Container th {\r\n");
      out.write("\t\tpadding: 18px 0;\r\n");
      out.write("\t    border-top: 2px solid #666;\r\n");
      out.write("\t    border-bottom: 1px solid #ccc;\r\n");
      out.write("\t    color: #000;\r\n");
      out.write("\t    font-size: 14px;\r\n");
      out.write("\t    text-align: center;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#cs_Container td {\r\n");
      out.write("\t\tpadding: 17px 0 16px;\r\n");
      out.write("\t    border-bottom: 1px solid #ececec;\r\n");
      out.write("\t    color: #626262;\r\n");
      out.write("\t    font-size: 14px;\r\n");
      out.write("\t    text-align: center;\r\n");
      out.write("\t    vertical-align: middle;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.left {\r\n");
      out.write("\t\ttext-align: left;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.paging {\r\n");
      out.write("\t    margin: 10px 0;\r\n");
      out.write("\t    text-align: center;\r\n");
      out.write("\t    padding: 70px 0;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.paging li {\r\n");
      out.write("\t    display: inline;\r\n");
      out.write("\t    padding: 0 2px;\r\n");
      out.write("\t    color: #9e9e9e;\r\n");
      out.write("\t    vertical-align: middle;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.paging li strong {\r\n");
      out.write("\t    display: inline-block;\r\n");
      out.write("\t    width: 28px;\r\n");
      out.write("\t    height: 28px;\r\n");
      out.write("\t    color: #000;\r\n");
      out.write("\t    font-size: 14px;\r\n");
      out.write("\t    line-height: 30px;\r\n");
      out.write("\t    font-family: \"Lato\",sans-serif;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.btn_write {\r\n");
      out.write("\t    margin: 20px 0;\r\n");
      out.write("\t    text-align: right;\r\n");
      out.write("\t    font-size: 13pt;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.gray_font {\r\n");
      out.write("\t\tcolor:  #999999;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.title_hov:hover{\r\n");
      out.write("\t\tcursor: pointer;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#writeBtn {\r\n");
      out.write("\t\ttext-decoration: none;\r\n");
      out.write("\t\tcolor: black;\r\n");
      out.write("\t\tcursor:pointer;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t\r\n");
      out.write("\t$(document).ready(function(){\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tvar searchType = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ searchType}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\";\r\n");
      out.write("\t\tvar searchWord = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ searchWord}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\";\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tif(searchType != null){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$(\"select[name=searchType]\").val(searchType);\r\n");
      out.write("\t\t\t$(\"input[name=searchWord]\").val(searchWord);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t// 검색하기\r\n");
      out.write("\t\t$(\"#btnSearch\").click(function(){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar searchWord = $(\"input[name=searchWord]\").val().trim();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t/* if( searchWord == \"\" ){\r\n");
      out.write("\t\t\t\talert(\"검색하시려면 값을 입력해주세요.\");\r\n");
      out.write("\t\t\t\t$(\"input[name=searchWord]\").focus();\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t} */\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar frm = document.searchForm;\r\n");
      out.write("\t\t\tfrm.action = \"");
      out.print( request.getContextPath() );
      out.write("/customer/customerQnA.dog\";\r\n");
      out.write("\t\t\tfrm.submit();\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t}); // end of document ready -------------------------------------------\r\n");
      out.write("\t\r\n");
      out.write("\t// 게시글 제목을 클릭하면 상세 글 정보로 이동\r\n");
      out.write("\tfunction goQnAdetail(board_num){\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tlocation.href = \"");
      out.print( request.getContextPath() );
      out.write("/customer/customerQnAdetail.dog?board_num=\"+board_num;\r\n");
      out.write("\t\t\r\n");
      out.write("\t} // end goQnAdetail ---------------------------------------------------\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<title>질문과 답변</title>\r\n");
      out.write("<div id=\"cs_Container\" >\r\n");
      out.write("\t<div style=\"text-align: center; padding-top: 50px;\">\r\n");
      out.write("\t\t<h1 style=\"font-weight: bold;\">고객센터</h1>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"cs_top\" style=\"margin: 0 auto; width: 1200px; height: 250px;\">\t\r\n");
      out.write("\t\t<div class=\"when\">\r\n");
      out.write("\t\t\t<p class=\"tel\">080-850-0085</p>\r\n");
      out.write("\t\t\t<p class=\"time gray_font\"> \r\n");
      out.write("\t\t\t\t평일 09:00 AM ~ 06:00 PM<br>\r\n");
      out.write("\t\t\t\t(점심  12:00 PM ~ 13:00 PM)<br>\r\n");
      out.write("\t\t\t\t주말, 공휴일 휴무 </p>\r\n");
      out.write("\t\t\t<p class=\"fax\">FAX 02-6933-4402</p>\r\n");
      out.write("\t\t</div>");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"how\">\r\n");
      out.write("\t\t  <p class=\"hint\">회원님의 궁금증을 해결하는 방법</p>\r\n");
      out.write("\t\t  <ul>\r\n");
      out.write("\t\t    <li class=\"hintList\">\r\n");
      out.write("\t\t      <div class=\"step\">STEP 1</div>\r\n");
      out.write("\t\t      <dl>\r\n");
      out.write("\t\t        <dt>FAQ</dt>\r\n");
      out.write("\t\t        <dd class=\"gray_font\">궁금한 사항을 자주묻는 질문에서<br/>\r\n");
      out.write("\t\t        \t 찾아보세요!</dd>\r\n");
      out.write("\t\t      </dl>\r\n");
      out.write("\t\t    </li>\r\n");
      out.write("\t\t    <li class=\"hintList\">\r\n");
      out.write("\t\t      <div class=\"step\">STEP 2</div>\r\n");
      out.write("\t\t      <dl>\r\n");
      out.write("\t\t        <dt>1:1 문의하기</dt>\r\n");
      out.write("\t\t        <dd class=\"gray_font\"> 자주묻는 질문에 없다면<br/>\r\n");
      out.write("\t\t          1:1 문의를 등록해주세요 </dd>\r\n");
      out.write("\t\t      </dl>\r\n");
      out.write("\t\t    </li>\r\n");
      out.write("\t\t    <li class=\"hintList\">\r\n");
      out.write("\t\t      <div class=\"step\">STEP 3</div>\r\n");
      out.write("\t\t      <dl>\r\n");
      out.write("\t\t        <dt>전화문의하기</dt>\r\n");
      out.write("\t\t        <dd class=\"gray_font\"> 1:1 문의로 해결이 어려우시면<br/>\r\n");
      out.write("\t\t          \t전화문의를 해주세요. </dd>\r\n");
      out.write("\t\t      </dl>\r\n");
      out.write("\t\t    </li>\r\n");
      out.write("\t\t  </ul>\r\n");
      out.write("\t\t</div>");
      out.write("\r\n");
      out.write("\t</div>");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t<div style=\"margin: 0 auto; width: 1200px; \">\r\n");
      out.write("\t\t<ul class=\"tab_menu\">\r\n");
      out.write("\t\t      <li><a href=\"/Semi_Team1/customer/customerMain.dog\">공지사항</a></li>\r\n");
      out.write("\t\t      <li><a href=\"/Semi_Team1/customer/customerFAQ.dog\">자주하는 질문(FAQ)</a></li> \r\n");
      out.write("\t\t      <li class=\"over\"><a href=\"/Semi_Team1/customer/customerQnA.dog\">묻고 답하기(Q&amp;A)</a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"board_List\" style=\"clear: both; width: 1200px; margin: 70px auto; text-align: right; \">\r\n");
      out.write("\t\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t<form name=\"searchForm\">\r\n");
      out.write("\t\t\t<div class=\"board_Search\" style=\"padding-top: 30px;\">\r\n");
      out.write("\t\t\t\t<select name=\"searchType\" class=\"searchBox\">\r\n");
      out.write("\t\t\t\t\t<option value=\"\">선택</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"writer\">이름</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"title\">제목</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"content\">내용</option>\r\n");
      out.write("\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"searchWord\" class=\"searchBox\" style=\"padding-left:15px;\"/>\r\n");
      out.write("\t\t\t\t<button type=\"button\" id=\"btnSearch\" class=\"btnSearch\">검색</button>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"board_contents\" style=\"margin-top: 25px; \">\r\n");
      out.write("\t\t\t<table style=\"width: 100%; \">\r\n");
      out.write("\t\t\t\t<thead>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<th scope=\"col\">번호</th>\r\n");
      out.write("\t\t\t\t\t\t<th scope=\"col\" style=\"width:50%;\">제목</th>\r\n");
      out.write("\t\t\t\t\t\t<th scope=\"col\">작성자</th>\r\n");
      out.write("\t\t\t\t\t\t<th scope=\"col\">작성일</th>\r\n");
      out.write("\t\t\t\t\t\t<th scope=\"col\">답변상태</th>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</thead>\r\n");
      out.write("\t\t\t\t<tbody>\r\n");
      out.write("\t\t\t\t\t");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t\t");
      if (_jspx_meth_c_005fif_005f3(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<div style=\"clear: both; width: 1200px; margin: 70px auto; text-align: right; \">\r\n");
      out.write("\t\t<div class=\"btn_write\">\r\n");
      out.write("    \t\t<a href=\"");
      out.print( request.getContextPath() );
      out.write("/customer/customerQnAWrite.dog\" id=\"writeBtn\">WRITE</a>\r\n");
      out.write("    \t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div style=\"text-align: center;\">\r\n");
      out.write("\t\t\t");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ requestScope.pageBar }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("    </div>");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\r\n");
      out.write("    \r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/footer_dog.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  ");
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
      // /WEB-INF/customerCenter/QnA.jsp(354,5) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ requestScope.boardList != null }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
      if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t\t\t\t\r\n");
          out.write("\t\t\t\t\t\t");
          if (_jspx_meth_c_005fforEach_005f0(_jspx_th_c_005fif_005f0, _jspx_page_context))
            return true;
          out.write("\r\n");
          out.write("\t\t\t\t\t");
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

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fif_005f0, javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fif_005f0);
      // /WEB-INF/customerCenter/QnA.jsp(356,6) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("map");
      // /WEB-INF/customerCenter/QnA.jsp(356,6) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/customerCenter/QnA.jsp(356,6) '${ boardList }'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${ boardList }",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("\t\t\t\t\t\t\t<tr>\r\n");
            out.write("\t\t\t\t\t\t\t\t<td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.board_num }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("\t\t\t\t\t\t\t\t<td class=\"left title_hov\" onclick=\"goQnAdetail('");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.board_num }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("')\" >");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.title }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("\t\t\t\t\t\t\t\t<td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.writer }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("\t\t\t\t\t\t\t\t<td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.writeday }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("\t\t\t\t\t\t\t\t\r\n");
            out.write("\t\t\t\t\t\t\t\t");
            if (_jspx_meth_c_005fif_005f1(_jspx_th_c_005fforEach_005f0, _jspx_page_context, _jspx_push_body_count_c_005fforEach_005f0))
              return true;
            out.write("\r\n");
            out.write("\t\t\t\t\t\t\t\t");
            if (_jspx_meth_c_005fif_005f2(_jspx_th_c_005fforEach_005f0, _jspx_page_context, _jspx_push_body_count_c_005fforEach_005f0))
              return true;
            out.write("\r\n");
            out.write("\t\t\t\t\t\t\t</tr>\r\n");
            out.write("\t\t\t\t\t\t");
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

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fforEach_005f0, javax.servlet.jsp.PageContext _jspx_page_context, int[] _jspx_push_body_count_c_005fforEach_005f0)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f1_reused = false;
    try {
      _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fforEach_005f0);
      // /WEB-INF/customerCenter/QnA.jsp(363,8) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.replystatus == '1' }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t\t\t\t\t\t\t<td >[<span style=\"color:red;\">답변 완료</span>]</td>\r\n");
          out.write("\t\t\t\t\t\t\t\t");
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

  private boolean _jspx_meth_c_005fif_005f2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fforEach_005f0, javax.servlet.jsp.PageContext _jspx_page_context, int[] _jspx_push_body_count_c_005fforEach_005f0)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f2_reused = false;
    try {
      _jspx_th_c_005fif_005f2.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fforEach_005f0);
      // /WEB-INF/customerCenter/QnA.jsp(366,8) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ map.replystatus == '0' }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f2 = _jspx_th_c_005fif_005f2.doStartTag();
      if (_jspx_eval_c_005fif_005f2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t\t\t\t\t\t\t<td>[답변대기중]</td>\r\n");
          out.write("\t\t\t\t\t\t\t\t");
          int evalDoAfterBody = _jspx_th_c_005fif_005f2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f2);
      _jspx_th_c_005fif_005f2_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f2, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f2_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f3(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f3_reused = false;
    try {
      _jspx_th_c_005fif_005f3.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f3.setParent(null);
      // /WEB-INF/customerCenter/QnA.jsp(372,5) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ requestScope.boardList == null }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f3 = _jspx_th_c_005fif_005f3.doStartTag();
      if (_jspx_eval_c_005fif_005f3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t\t\t\t<tr>\r\n");
          out.write("\t\t\t\t\t\t\t<td colspan=\"6\">게시글이 없습니다.<td>\r\n");
          out.write("\t\t\t\t\t\t</tr>\r\n");
          out.write("\t\t\t\t\t");
          int evalDoAfterBody = _jspx_th_c_005fif_005f3.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f3);
      _jspx_th_c_005fif_005f3_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f3, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f3_reused);
    }
    return false;
  }
}
