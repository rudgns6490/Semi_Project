/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.47
 * Generated at: 2019-12-19 09:21:37 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cartPayment_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\t\r\n");
      out.write("  .col-25 {\r\n");
      out.write("\t-ms-flex: 25%; /* IE10 */\r\n");
      out.write("\tflex: 25%;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  .col-50 {\r\n");
      out.write("\t-ms-flex: 50%; /* IE10 */\r\n");
      out.write("\tflex: 50%;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  .col-75 {\r\n");
      out.write("\t-ms-flex: 75%; /* IE10 */\r\n");
      out.write("\tflex: 75%;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  .col-25,\r\n");
      out.write("  .col-50,\r\n");
      out.write("  .col-75 {\r\n");
      out.write("\tpadding: 0 16px;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  .sub{\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  .main_container {\r\n");
      out.write("\tbackground-color: #f2f2f2;\r\n");
      out.write("\tpadding: 5px 20px 15px 20px;\r\n");
      out.write("\tborder: 1px solid lightgrey;\r\n");
      out.write("\tborder-radius: 3px;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  input[type=text] {\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\tmargin-bottom: 20px;\r\n");
      out.write("\tpadding: 12px;\r\n");
      out.write("\tborder: 1px solid #ccc;\r\n");
      out.write("\tborder-radius: 3px;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  label {\r\n");
      out.write("\tmargin-bottom: 10px;\r\n");
      out.write("\tdisplay: block;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  .icon-container {\r\n");
      out.write("\tmargin-bottom: 20px;\r\n");
      out.write("\tpadding: 7px 0;\r\n");
      out.write("\tfont-size: 24px;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  .btn {\r\n");
      out.write("\tbackground-color: BLACK;\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("\tpadding: 12px;\r\n");
      out.write("\tmargin: 10px 0;\r\n");
      out.write("\tborder: none;\r\n");
      out.write("\twidth: 50%;\r\n");
      out.write("\tborder-radius: 3px;\r\n");
      out.write("\tcursor: pointer;\r\n");
      out.write("\tfont-size: 17px;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tfloat:none; \r\n");
      out.write("\tmargin:0 auto;\r\n");
      out.write("\talign-content: center;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  .btn:hover {\r\n");
      out.write("\tbackground-color: #gray;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  span.price {\r\n");
      out.write("\tfloat: right;\r\n");
      out.write("\tcolor: grey;\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (and change the direction - make the \"cart\" column go on top) */\r\n");
      out.write("  @media (max-width: 800px) {\r\n");
      out.write("    .row {\r\n");
      out.write("\t  flex-direction: column-reverse;\r\n");
      out.write("    }  \r\n");
      out.write("    .col-25 {\r\n");
      out.write("\t  margin-bottom: 20px;\r\n");
      out.write("    }\r\n");
      out.write("  }\r\n");
      out.write("\t\r\n");
      out.write("  /* 커스텀 radio 선택창을 위한 css */\r\n");
      out.write("\r\n");
      out.write("  /* The container */\r\n");
      out.write("  .radio {\r\n");
      out.write("    display: block;\r\n");
      out.write("    position: relative;\r\n");
      out.write("  \tmargin-top: 35px;\r\n");
      out.write("  \ttext-align:center;\r\n");
      out.write("  \tpadding-left: 35px;\r\n");
      out.write("  \tcursor: pointer;\r\n");
      out.write("  \tfont-size: 22px;\r\n");
      out.write("  \twidth: 70%;\r\n");
      out.write(" /* -webkit-user-select: none;\r\n");
      out.write("  \t-moz-user-select: none;\r\n");
      out.write("  \t-ms-user-select: none;\r\n");
      out.write("    user-select: none; */\r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("  /* 기본 라디오 버튼 숨기기 */\r\n");
      out.write("  .radio input  {\r\n");
      out.write("  \tposition: absolute;\r\n");
      out.write("  \topacity: 0;\r\n");
      out.write("  \tcursor: pointer;\r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("  /* 총계 css 양식도 포함 */\r\n");
      out.write("\t.allSum \r\n");
      out.write("\t{\r\n");
      out.write("    display: block;\r\n");
      out.write("    position: relative;\r\n");
      out.write("  \tmargin-top: 35px;\r\n");
      out.write("  \ttext-align:left;\r\n");
      out.write("  \tpadding-left: 5px;\r\n");
      out.write("  \tfont-size: 30px;\r\n");
      out.write("  \tfont-weight: bold;\r\n");
      out.write("  \twidth: 100%;\r\n");
      out.write(" \r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  /* 커스텀 라디오 버튼 만들기 */\r\n");
      out.write("  .checkmark {\r\n");
      out.write("  \tposition: absolute;\r\n");
      out.write("  \ttop: 0;\r\n");
      out.write("  \tleft: 0;\r\n");
      out.write("  \theight: 25px;\r\n");
      out.write("  \twidth: 25px;\r\n");
      out.write("  \tbackground-color: #eee;\r\n");
      out.write("  \tborder-radius: 50%;\r\n");
      out.write("  \tmargin-top: 12px;\r\n");
      out.write("  \tmargin-left: 25px;\r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("  /* 마우스 올렸을때 회색 배경 출력 */\r\n");
      out.write("  .main_container:hover input ~ .checkmark {\r\n");
      out.write("  \tbackground-color: #ccc;\r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("  /* 라디오 버튼 체크 했을때 파란 배경 출력 */\r\n");
      out.write("  main_container input:checked ~ .checkmark {\r\n");
      out.write("  \tbackground-color: #2196F3;\r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("  /* 라디오 표시창 만들기-체크 되지 않았을때 숨겨져 있음 */\r\n");
      out.write("  .checkmark:after {\r\n");
      out.write("  \tcontent: \"\";\r\n");
      out.write("  \tposition: absolute;\r\n");
      out.write("  \tdisplay: none;\r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("  /* 라디오 표시창 선택했을때 보여주기  */\r\n");
      out.write("  .main_container input:checked ~ .checkmark:after {\r\n");
      out.write("  \tdisplay: block;\r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("  /* 라디오 표시창 모양 서식 - 현재 원형 */\r\n");
      out.write("  .main_container .checkmark:after {\r\n");
      out.write(" \ttop: 9px;\r\n");
      out.write("\tleft: 9px;\r\n");
      out.write("\twidth: 8px;\r\n");
      out.write("\theight: 8px;\r\n");
      out.write("\tborder-radius: 50%;\r\n");
      out.write("\tbackground: white;\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-1.12.4.min.js\" ></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"https://service.iamport.kr/js/iamport.payment-1.1.2.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("var radio = 0; //라디오 체크 초기화 0으로 시작\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("$(document).ready(function() {\r\n");
      out.write("\t\r\n");
      out.write("\t$(\"#error\").hide();\r\n");
      out.write("\t\r\n");
      out.write("\t// $(\":input[name=radio]:radio\")\r\n");
      out.write("\t$(\"input:radio[name=radio]\").bind(\"click\", function(){\r\n");
      out.write("\t\tvar i = $(this).index(); \r\n");
      out.write("\t\tconsole.log(\"~~확인용 i : \" + i); // 무조건 0.  왜냐하면 $(this) 내에서 인덱스를 찾기 때문이다.    \r\n");
      out.write("\t\t\r\n");
      out.write("\t\tvar index = $(\"input:radio[name=radio]\").index(this); // 올바른 index 가 나온다. \r\n");
      out.write("\t\tconsole.log(\"~~확인용 index : \" + index);\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t//스펜테그의 클레스를 삭제\r\n");
      out.write("\t\t$(\"span\").removeClass(\"stylePoint\");\r\n");
      out.write("\t\t$(\"span\").eq(index).addClass(\"stylePoint\");\r\n");
      out.write("\t\t// $(\"span\").eq(index) ==> 배열요소를 꺼내는 것과 비슷한 것임.\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(\"#error\").hide();\r\n");
      out.write("\t});// end of $(\"input:radio[name=radio]\").bind(\"click\")-----------\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\t///////////////////////////////////////////////////////////\r\n");
      out.write("\t$(\".btn\").click(function(){\r\n");
      out.write("\r\n");
      out.write("\t\tvar cardCheckedCnt = $(\"input:radio[class=card]:checked\").length;\r\n");
      out.write("\t\tvar noAccountCheckedCnt = $(\"input:radio[class=noAccount]:checked\").length;\r\n");
      out.write("\t\tvar mobilePaymentCheckedCnt = $(\"input:radio[class=mobilePayment]:checked\").length;\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t// 카드 radio 의 체크 여부를 확인한다\r\n");
      out.write("\t\t   if(cardCheckedCnt == 1) {\r\n");
      out.write("\t\t\t// radio를 선택하지 않았을 경우\r\n");
      out.write("\t\t\t \r\n");
      out.write("\t\t\t   //\t여기 링크를 꼭 참고하세용 http://www.iamport.kr/getstarted\r\n");
      out.write("\t\t\t\t   var IMP = window.IMP;     // 생략가능\r\n");
      out.write("\t\t\t\t   IMP.init(\"imp34029962\");  // 중요!!  아임포트에 가입시 부여받은 \"가맹점 식별코드\". \r\n");
      out.write("\t\t\t\t\t//현제 가맹점 김용호 팀원으로 진행됨 결제 금액 10원 고정\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t   // 결제요청하기\r\n");
      out.write("\t\t\t\t   IMP.request_pay({\r\n");
      out.write("\t\t\t\t       pg : 'html5_inicis', // 결제방식 PG사 구분\r\n");
      out.write("\t\t\t\t       pay_method : 'card',\t// 결제 수단\r\n");
      out.write("\t\t\t\t       merchant_uid : 'merchant_' + new Date().getTime(), // 가맹점에서 생성/관리하는 고유 주문번호\r\n");
      out.write("\t\t\t\t       name : '결제테스트(코인충전|주문명)',\t // 코인충전 또는 order 테이블에 들어갈 주문명 혹은 주문 번호. (선택항목)원활한 결제정보 확인을 위해 입력 권장(PG사 마다 차이가 있지만) 16자 이내로 작성하기를 권장\r\n");
      out.write("\t\t\t\t       amount : 10,\t  // '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${coinmoney}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'  결제 금액 number 타입. 필수항목. 결제 금액 10원으로 고정 \r\n");
      out.write("\t\t\t\t       buyer_email : '',  // 구매자 email\r\n");
      out.write("\t\t\t\t       buyer_name : '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("',\t  // 구매자 이름 \r\n");
      out.write("\t\t\t\t       buyer_tel : '',    // 구매자 전화번호 (필수항목)\r\n");
      out.write("\t\t\t\t       buyer_addr : '',  \r\n");
      out.write("\t\t\t\t       buyer_postcode : '',\r\n");
      out.write("\t\t\t\t       m_redirect_url : ''  // 휴대폰 사용시 결제 완료 후 action : 컨트롤러로 보내서 자체 db에 입력시킬것!\r\n");
      out.write("\t\t\t\t   }, function(rsp) {\r\n");
      out.write("\t\t\t\t     \r\n");
      out.write("\t\t\t\t\t\tif ( rsp.success ) { // PC 데스크탑용\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t//location.href=\"cartPaymentEnd.army\";\r\n");
      out.write("\t\t\t\t\t\t\tgosubmit();\r\n");
      out.write("\t\t\t\t\t\t    self.close();\r\n");
      out.write("\t\t\t\t            \r\n");
      out.write("\t\t\t\t        } else {\r\n");
      out.write("\t\t\t\t        \tlocation.href=\"cartPayment.army\";\r\n");
      out.write("\t\t\t\t            alert(\"결제에 실패하였습니다.\");\r\n");
      out.write("\t\t\t\t       }\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t     }); // $(\"#payAPI\").click(function(){--------------------\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t   \t\t\t} \r\n");
      out.write("\t\t   \r\n");
      out.write("\t   \t\telse if(noAccountCheckedCnt == 1){\r\n");
      out.write("\t\t\t\talert(\"무통장 입금은 아직 구현되지 않았습니다.\");\r\n");
      out.write("\t\t\t\t\t// 추후 결제 API 삽입하여 기능 구현 할것\r\n");
      out.write("\t\t\t\t   } \r\n");
      out.write("\t   \t\t\r\n");
      out.write("\t   \t\telse if(mobilePaymentCheckedCnt == 1){\r\n");
      out.write("\t\t\t\talert(\"휴대폰 결제는 아직 구현되지 않았습니다.\");\r\n");
      out.write("\t\t\t\t\t// 추후 결제 API 삽입하여 기능 구현 할것\r\n");
      out.write("\t\t\t\t   } \r\n");
      out.write("\t   \t\t\r\n");
      out.write("\t   \t\telse {\r\n");
      out.write("\t\t\t\t\t// radio를 선택하지 않았을 경우\r\n");
      out.write("\t\t\t\t\t  alert(\"결제 방법을 선택해주세요\");\r\n");
      out.write("\t\t\t\t   } \r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t}); // $(\".btn\").click-------------------------\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t$(\"#btnPostSearch\").click(function(){\r\n");
      out.write("\t\tnew daum.Postcode({\r\n");
      out.write("\t\t\toncomplete: function(data) {\r\n");
      out.write("\t\t\t    $(\"#post\").val(data.zonecode); \t\t// 개정된 우편번호 받아오기  예> 12345 5자리 \r\n");
      out.write("\t\t\t    $(\"#address1\").val(data.address);   // 큰주소                        예> 서울특별시 종로구 인사로 17 \r\n");
      out.write("\t\t\t    $(\"#address2\").focus();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}).open();\r\n");
      out.write("\t}); // $(\"#btnPostSearch\").click-------------------------\r\n");
      out.write("\t\r\n");
      out.write("\tvar sum = ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ sessionScope.sum }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(";\r\n");
      out.write("\t\r\n");
      out.write("\tsum = numberWithCommas(sum);\r\n");
      out.write("\t\r\n");
      out.write("\t$(\"#paymentsum\").text(sum);\r\n");
      out.write("\t\r\n");
      out.write("}); \r\n");
      out.write("// end of $(document).ready()-----------------------------\r\n");
      out.write("\r\n");
      out.write("function gosubmit(){\r\n");
      out.write("    var frm = document.goSubmit;\r\n");
      out.write("\tfrm.action = \"/SemiProject/cart/cartPaymentEnd.army\";\r\n");
      out.write("\tfrm.method = \"POST\";\r\n");
      out.write("\tfrm.submit();\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("function numberWithCommas(x) {\r\n");
      out.write("    return x.toString().replace(/\\B(?=(\\d{3})+(?!\\d))/g, \",\");\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"container-fluid text-center\">    \r\n");
      out.write("\t<div class=\"row content main_container\">\r\n");
      out.write("\t  <div class=\"col-md-12 col-lg-9\" style=\"margin-left: 15%;\">\r\n");
      out.write("\t    <form name=\"goSubmit\">\r\n");
      out.write("\t        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-md-12 col-lg-6\">\r\n");
      out.write("              <h3 class=\"sub\">배송지 주소</h3>\r\n");
      out.write("\t          <label for=\"paymentName\"><i class=\"fa fa-user\"></i> 이름</label>\r\n");
      out.write("\t          <input type=\"text\" id=\"fa fa-envelope\" name=\"paymentName\" placeholder=\"홍길동\">\r\n");
      out.write("\t          <label for=\"email\"><i class=\"fa fa-envelope\"></i> 이메일</label>\r\n");
      out.write("\t          <input type=\"text\" id=\"email\" name=\"email\" placeholder=\"hongkd@example.com\">\r\n");
      out.write("\t          <label for=\"address1\"><i class=\"fa fa-address-card-o\"></i> 주소</label>\r\n");
      out.write("\t          <input type=\"text\" id=\"address1\" name=\"address1\" placeholder=\"서울시 중구 경복궁\">\r\n");
      out.write("\t          <label for=\"address2\"><i class=\"fa fa-institution\"></i> 상세주소</label>\r\n");
      out.write("\t          <input type=\"text\" id=\"address2\" name=\"address2\" placeholder=\"107동 102호\">\r\n");
      out.write("\r\n");
      out.write("              <div class=\"row\">\r\n");
      out.write("              \t<div class=\"col-md-12 col-lg-12\">\r\n");
      out.write("                  <label for=\"state\">전화번호</label>\r\n");
      out.write("                  <input type=\"text\" id=\"tel\" name=\"tel\" placeholder=\"010-1234-5678\">\r\n");
      out.write("              </div>\r\n");
      out.write("              \t<br/>\r\n");
      out.write("              \t<div class=\"col-md-12 col-lg-12\">\r\n");
      out.write("                  <label for=\"post\">우편번호</label>\r\n");
      out.write("                \t<div class=\"col-md-5 col-lg-5\">\r\n");
      out.write("\t                \t<input type=\"text\" id=\"post\" name=\"post\" size=\"6\" maxlength=\"5\" placeholder=\"12321\" />\r\n");
      out.write("\t\t            </div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-12 col-lg-12\">\r\n");
      out.write("\t\t\t\t\t\t<button id=\"btnPostSearch\" type=\"button\" style=\"cursor: pointer; font-size: 20px;\">우편번호 찾기</button> \r\n");
      out.write("              \t\t</div>\r\n");
      out.write("              \t</div>\r\n");
      out.write("              \t<div class=\"col-md-12 col-lg-12\">\r\n");
      out.write("                  <input type=\"hidden\" id=\"productno\" name=\"productno\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.productno}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("              \t</div>\r\n");
      out.write("              </div>\r\n");
      out.write("          \t</div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-md-12 col-lg-6\">\r\n");
      out.write("              <h3 class=\"sub\">결제방법</h3>\r\n");
      out.write("              <!-- radio 선택을 위한 내용 구현 -->\r\n");
      out.write("\t\t\t  <label class=\"main_container radio\">신용/체크카드\r\n");
      out.write("\t\t\t    <input type=\"radio\" name=\"radio\" class=\"card\"  value=\"신용카드\">\r\n");
      out.write("\t\t\t    <span class=\"checkmark\"></span>\r\n");
      out.write("\t\t\t  </label>\r\n");
      out.write("\t\t\t <!-- 무통장 API 없음 상단 스트립트에서 추후에 추가 사용 가능 -->\r\n");
      out.write("\t\t\t  <label class=\"main_container radio\">무통장입금\r\n");
      out.write("\t\t\t    <input type=\"radio\" name=\"radio\" class=\"noAccount\" value=\"무통장입금\">\r\n");
      out.write("\t\t\t    <span class=\"checkmark\"></span>\r\n");
      out.write("\t\t\t  </label>\r\n");
      out.write("\t\t\t \r\n");
      out.write("\t\t\t  <br/><br/><br/><br/><br/><br/>\r\n");
      out.write("\t\t\t  <label class=\"allSum\" id=\"allSumPrice\" style=\"font-size: 16pt; font-weight: bold;\">결제총액 : <span style=\"color: red; font-size: 16pt; font-weight: bold;\" id=\"paymentsum\"></span> 원 </label> <!-- 결제총액 내용 받아오기 필요 -->\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </form>\r\n");
      out.write("        <div style=\"display: inline-block; width: 50%; margin-left:25%; margin-top: 15px; text-align:center; align-content: center;\" >\r\n");
      out.write("        \t<input type=\"button\" value=\"결제 진행 하기\" class=\"btn\"/>\r\n");
      out.write(" \t  \t</div>\r\n");
      out.write("      </div>\r\n");
      out.write("\t</div>\r\n");
      out.write("  </div>\r\n");
      out.write("    \r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/footer.jsp", out, false);
      out.write("\r\n");
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
