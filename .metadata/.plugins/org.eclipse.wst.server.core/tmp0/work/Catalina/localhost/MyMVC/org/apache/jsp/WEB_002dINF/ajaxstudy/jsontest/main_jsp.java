/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-11-27 08:11:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.ajaxstudy.jsontest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    \r\n");
 
	String ctxPath = request.getContextPath();
    //     /MyMVC

      out.write("    \r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>jQuery Ajax 예제(JSON)</title>\r\n");
      out.write("\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("\tspan.custom {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tspan.mytitle {\r\n");
      out.write("\t\tcolor: navy; \r\n");
      out.write("\t\tfont-size: 12pt; \r\n");
      out.write("\t\tfont-weight: bold;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$(document).ready(function(){\r\n");
      out.write("\t//\talert(\"하하하\");\r\n");
      out.write("\t\r\n");
      out.write("\t\tfunc_imgList();\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tfunc_newsTitleList();\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tfunc_memberList();\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(\"#searchBtn\").click(function(){\r\n");
      out.write("\t\t\tfunc_searchName();\r\n");
      out.write("\t\t}); \r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(\"#name\").bind(\"keydown\", function(event){\r\n");
      out.write("\t\t\tif(event.keyCode==13) {\r\n");
      out.write("\t\t\t\t// 엔터이라면 \r\n");
      out.write("\t\t\t\tfunc_searchName();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t}); // end of $(document).ready()-------------------\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\tfunction func_imgList() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\turl:\"");
      out.print( ctxPath);
      out.write("/ajaxstudy/jsontestImage.up\",\r\n");
      out.write("\t\t\tdataType:\"json\",\r\n");
      out.write("\t\t\tsuccess: function(json){\r\n");
      out.write("\t\t\t\t// json => ajax 요청에 의해 url(jsontestImage.up)서버로 부터 리턴받은 데이터이다. \r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t    var html = \"<div id='myCarousel' class='carousel slide' data-ride='carousel'>\";\r\n");
      out.write("\t\t\t\t\t    \r\n");
      out.write("\t\t\t       ");
      out.write("\r\n");
      out.write("\t\t\t\t   html += \"<ol class='carousel-indicators'>\";\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t       for(var i=0; i<json.length; i++) {\r\n");
      out.write("\t\t\t    \t    if(i==0) {\r\n");
      out.write("\t\t\t    \t\t   html += \"<li data-target='#myCarousel' data-slide-to='\"+i+\"' class='active'></li>\";  \r\n");
      out.write("\t\t\t    \t    }\r\n");
      out.write("\t\t\t    \t    else {\r\n");
      out.write("\t\t\t    \t\t   html += \"<li data-target='#myCarousel' data-slide-to='\"+i+\"'></li>\";\r\n");
      out.write("\t\t\t    \t    }\r\n");
      out.write("\t\t\t       }// end of for-------------------\r\n");
      out.write("\t\t\t\t\t      \r\n");
      out.write("\t\t\t\t   html += \"</ol>\";\r\n");
      out.write("\t\t\t\t \r\n");
      out.write("\t\t\t\t \r\n");
      out.write("\t\t\t\t   ");
      out.write("\r\n");
      out.write("\t\t\t\t   html += \"<div class='carousel-inner'>\";\r\n");
      out.write("\t\t\t\t   \r\n");
      out.write("\t\t\t\t   \r\n");
      out.write("\t\t\t\t   $.each(json, function(index, item){ // 반복문\r\n");
      out.write("\t\t\t\t\t    \r\n");
      out.write("\t\t\t\t\t    if(index==0) {\r\n");
      out.write("\t\t\t\t\t    \thtml += \"<div class='item active'>\";\t\r\n");
      out.write("\t\t\t\t\t\t    html +=    \"<img src='/MyMVC/images/\"+item.imgfilename+\"' style='width:100%;' />\"; \r\n");
      out.write("\t\t\t\t\t\t    html += \"</div>\";\r\n");
      out.write("\t\t\t\t\t    }\r\n");
      out.write("\t\t\t\t\t    else {\r\n");
      out.write("\t\t\t\t\t    \thtml += \"<div class='item'>\";\t\r\n");
      out.write("\t\t\t\t\t\t    html +=    \"<img src='/MyMVC/images/\"+item.imgfilename+\"' style='width:100%;' />\"; \r\n");
      out.write("\t\t\t\t\t\t    html += \"</div>\";\r\n");
      out.write("\t\t\t\t\t    }    \r\n");
      out.write("\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t   html += \"</div>\";\r\n");
      out.write("\t\t\t\t   \r\n");
      out.write("\t\t\t\t   ");
      out.write("\r\n");
      out.write("\t\t\t\t   html += \"<a class='left carousel-control' href='#myCarousel' data-slide='prev'>\";\r\n");
      out.write("\t\t\t\t   html +=   \"<span class='glyphicon glyphicon-chevron-left'></span>\";\r\n");
      out.write("\t\t\t\t   html +=   \"<span class='sr-only'>Previous</span>\";\r\n");
      out.write("\t\t\t\t   html += \"</a>\";\r\n");
      out.write("\t\t\t\t   html += \"<a class='right carousel-control' href='#myCarousel' data-slide='next'>\";\r\n");
      out.write("\t\t\t\t   html +=   \"<span class='glyphicon glyphicon-chevron-right'></span>\";\r\n");
      out.write("\t\t\t\t   html +=   \"<span class='sr-only'>Next</span>\";\r\n");
      out.write("\t\t\t\t   html += \"</a>\";\r\n");
      out.write("\t\t\t\t   \r\n");
      out.write("\t\t\t\t   html += \"</div>\";\r\n");
      out.write("\t\t\t\t   \r\n");
      out.write("\t\t\t\t   $(\"#imgList\").html(html);\r\n");
      out.write("\t\t\t},\r\n");
      out.write("\t\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\t\talert(\"code: \"+request.status+\"\\n\"+\"message: \"+request.responseText+\"\\n\"+\"error: \"+error);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t}// end of function func_imgList()-----------------\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\tfunction func_newsTitleList() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\turl:\"");
      out.print( ctxPath);
      out.write("/ajaxstudy/jsontestNewsTitle.up\",\r\n");
      out.write("\t\t\tdataType:\"json\",\r\n");
      out.write("\t\t\tsuccess: function(json){\r\n");
      out.write("\t\t\t\t// json => ajax 요청에 의해 url(jsontestNewsTitle.up)서버로 부터 리턴받은 데이터이다. \r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tvar html = \"<div>\";\r\n");
      out.write("\t\t\t\thtml += \"<ul style='list-style-type: none;'>\";\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\thtml += \"<span class='custom mytitle' style='width: 50px;'>연번</span>\";\r\n");
      out.write("\t\t\t\thtml += \"<span class='custom mytitle' style='width: 300px;'>기사제목</span>\";\r\n");
      out.write("\t\t\t\thtml += \"<span class='custom mytitle' style='width: 200px;'>입력일자</span>\";\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$.each(json, function(index, item){ // 반복문\r\n");
      out.write("\t\t\t\t\thtml += \"<li>\";\r\n");
      out.write("\t\t\t\t\thtml += \"<span class='custom' style='width: 50px;'>\"+(index+1)+\"</span>\";\r\n");
      out.write("\t\t\t\t\thtml += \"<span class='custom' style='width: 300px;'>\"+item.title+\"</span>\";\r\n");
      out.write("\t\t\t\t\thtml += \"<span class='custom' style='width: 200px;'>\"+item.registerday+\"</span>\";\r\n");
      out.write("\t\t\t\t\thtml += \"</li>\";\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\thtml += \"</ul>\";\r\n");
      out.write("\t\t\t\thtml += \"</div>\";\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\"#newsTitleList\").html(html);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t},\r\n");
      out.write("\t\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\t\talert(\"code: \"+request.status+\"\\n\"+\"message: \"+request.responseText+\"\\n\"+\"error: \"+error);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t}// end of function func_newsTitleList()-----------------\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\tfunction func_memberList() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\turl:\"");
      out.print( ctxPath);
      out.write("/ajaxstudy/jsontestMember.up\",\r\n");
      out.write("\t\t\tdataType:\"json\",\r\n");
      out.write("\t\t\tsuccess: function(json){\r\n");
      out.write("\t\t\t\t// json => ajax 요청에 의해 url(jsontestMember.up)서버로 부터 리턴받은 데이터이다. \r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tvar html  = \"<table class='table table-bordered'>\";\r\n");
      out.write("\t\t\t\t    html += \"<thead>\";\r\n");
      out.write("\t\t\t\t    html += \"<tr>\";\r\n");
      out.write("\t\t\t\t    html += \"<th>아이디</th>\";\r\n");
      out.write("\t\t\t\t    html += \"<th>성명</th>\";\r\n");
      out.write("\t\t\t\t    html += \"<th>이메일</th>\";\r\n");
      out.write("\t\t\t\t    html += \"<th>성별</th>\";\r\n");
      out.write("\t\t\t\t    html += \"</tr>\";\r\n");
      out.write("\t\t\t\t    html += \"</thead>\";\r\n");
      out.write("\t\t\t\t    html += \"<tbody>\";\r\n");
      out.write("\t\t\t\t    \r\n");
      out.write("\t\t\t\t    $.each(json, function(index, item){ // 반복문\r\n");
      out.write("\t\t\t\t    \thtml += \"<tr>\";\r\n");
      out.write("\t\t\t\t    \thtml += \"<td>\"+item.userid+\"</td>\";\r\n");
      out.write("\t\t\t\t    \thtml += \"<td>\"+item.name+\"</td>\";\r\n");
      out.write("\t\t\t\t    \thtml += \"<td>\"+item.email+\"</td>\";\r\n");
      out.write("\t\t\t\t    \thtml += \"<td>\"+item.gender+\"</td>\";\r\n");
      out.write("\t\t\t\t    \thtml += \"</tr>\";\r\n");
      out.write("\t\t\t\t    });\r\n");
      out.write("\t\t\t\t    \r\n");
      out.write("\t\t\t\t    html += \"</tbody>\";\r\n");
      out.write("\t\t\t\t    html += \"</table>\";\r\n");
      out.write("\t\t\t\t    \r\n");
      out.write("\t\t\t\t    $(\"#memberList\").html(html);\r\n");
      out.write("\t\t\t},\r\n");
      out.write("\t\t\terror: function(request, status, error){\r\n");
      out.write("\t\t\t\talert(\"code: \"+request.status+\"\\n\"+\"message: \"+request.responseText+\"\\n\"+\"error: \"+error);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t}// end of function func_memberList()-----------------\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\tfunction func_searchName() {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t    \turl:\"");
      out.print( ctxPath);
      out.write("/ajaxstudy/jsontestMember.up\",\r\n");
      out.write("\t    \ttype:\"GET\", \r\n");
      out.write("\t    \tdata:{'name':$(\"#name\").val()},\r\n");
      out.write("\t    \tdataType:\"json\",\r\n");
      out.write("\t    \tsuccess:function(json){\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tvar html  = \"<table class='table table-bordered'>\";\r\n");
      out.write("\t\t\t\t    html += \"<thead>\";\r\n");
      out.write("\t\t\t\t    html += \"<tr>\";\r\n");
      out.write("\t\t\t\t    html += \"<th>아이디</th>\";\r\n");
      out.write("\t\t\t\t    html += \"<th>성명</th>\";\r\n");
      out.write("\t\t\t\t    html += \"<th>이메일</th>\";\r\n");
      out.write("\t\t\t\t    html += \"<th>성별</th>\";\r\n");
      out.write("\t\t\t\t    html += \"</tr>\";\r\n");
      out.write("\t\t\t\t    html += \"</thead>\";\r\n");
      out.write("\t\t\t\t    html += \"<tbody>\";\r\n");
      out.write("\t\t\t\t    \r\n");
      out.write("\t\t\t\t    $.each(json, function(index, item){ // 반복문\r\n");
      out.write("\t\t\t\t    \thtml += \"<tr>\";\r\n");
      out.write("\t\t\t\t    \thtml += \"<td>\"+item.userid+\"</td>\";\r\n");
      out.write("\t\t\t\t    \thtml += \"<td>\"+item.name+\"</td>\";\r\n");
      out.write("\t\t\t\t    \thtml += \"<td>\"+item.email+\"</td>\";\r\n");
      out.write("\t\t\t\t    \thtml += \"<td>\"+item.gender+\"</td>\";\r\n");
      out.write("\t\t\t\t    \thtml += \"</tr>\";\r\n");
      out.write("\t\t\t\t    });\r\n");
      out.write("\t\t\t\t    \r\n");
      out.write("\t\t\t\t    html += \"</tbody>\";\r\n");
      out.write("\t\t\t\t    html += \"</table>\";\r\n");
      out.write("\t\t\t\t    \r\n");
      out.write("\t\t\t\t    $(\"#memberList\").html(html);\r\n");
      out.write("\t    \t},\r\n");
      out.write("\t    \terror: function(request, status, error){\r\n");
      out.write("\t\t\t\talert(\"code: \"+request.status+\"\\n\"+\"message: \"+request.responseText+\"\\n\"+\"error: \"+error);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t    });\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t}// end of function func_searchName()---------------\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<h3> 여기는 URL이 MyMVC/ajaxstudy/jsontestMain.up 인 페이지 입니다.</h3>\r\n");
      out.write("\t\t\r\n");
      out.write("\t<div id=\"imgList\" style=\"width: 40%; margin: 0 auto; padding: 30px 0 0 0;\">\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"newsTitleList\" style=\"display: inline-block; border: solid 0px red; margin: 30px 20px;\">\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div style=\"display: inline-block; border: solid 0px red; margin: 30px 20px;\">\r\n");
      out.write("\t\t<div id=\"memberList\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div>\r\n");
      out.write("\t\t\t<form name=\"searchFrm\">\r\n");
      out.write("\t\t\t\t<label for=\"name\" style=\"margin-right: 20px;\">이름검색</label>\r\n");
      out.write("\t\t\t\t<input type=\"text\" id=\"name\" />\r\n");
      out.write("\t\t\t\t<input type=\"text\" style=\"display: none;\" />   \r\n");
      out.write("\t\t\t\t<span id=\"searchBtn\" style=\"display: inline-block; width: 70px; height: 20px; border: solid 1px navy; border-radius: 10px; text-align: center; font-size: 9pt; background-color: navy; color: white; cursor: pointer; margin-left: 20px;\">확인</span>\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
