<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String ctxPath = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>EMOJEOMO</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="<%= ctxPath%>/ejCSS/reference.css" />
  <link rel="stylesheet" type="text/css" href="<%= ctxPath%>/jquery-ui-1.11.4/jquery-ui.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="<%= ctxPath%>/jquery-ui-1.11.4/jquery-ui.js"></script> 



</head>   
<body>
<div id="container">

   <div id="header" style="left: 0px;" class="fixedmenu">
      <div class="max-width">
         <div class="inner">
            <h1>
               <a href="<%= ctxPath %>/main.ej">
                  <img alt="로고" src="<%= ctxPath %>/img/logo_bottom.PNG">
               </a>
            </h1>
            <ul class="area_left">
               <li class="shop-menu">
                  <a href="#">ABOUT</a>
               </li>
               <li class="shop-menu">
                  <a href="#">STOKIST</a>
               </li>
               <li class="shop-menu s_hover1">
                  <a href="#">COMMUNITY</a>
                  <ul class="sub-menu sub1">
                     <li>
                        <a href="<%= ctxPath %>/notice.ej">NOTICE</a>
                     </li>
                     <li>
                        <a href="<%= ctxPath %>/qna.ej">Q&A</a>
                     </li>
                     <li>
                        <a href="<%= ctxPath %>/review.ej">REVIEW</a>
                     </li>
                     <li>
                        <a href="#">CELEBRITY</a>
                     </li>
                  </ul>
               </li>
               <li class="shop-menu s_hover2">
                  <a href="#">Online Store</a>
                  <ul class="sub-menu sub2">
                     <li>
                        <a href="<%= ctxPath %>/product.ej?product_class=BC">BALL CAP</a>
                     </li>
                     <li>
                        <a href="<%= ctxPath %>/product.ej?product_class=BH">BUCKET HAT</a>
                     </li>         
                     <li>
                        <a href="<%= ctxPath %>/product.ej?product_class=COL">COLLABOLATION</a>
                     </li>
                     <li>
                        <a href="<%= ctxPath %>/product.ej?product_class=ETC">ETC</a>
                     </li>
                  </ul>
               </li>
            </ul> <!-- area_left -->
            <ul class="area_right">
            
               <c:if test="${sessionScope.loginuser != null}">
                  <li class="rightSubMenu login">
                     <a class="m_hover" href="<%= ctxPath %>/logoutAction.ej">LOGOUT</a>
                  </li>
                  <li class="rightSubMenu login">
                     <a class="m_hover" href="<%= ctxPath %>/memberModify.ej">MODIFY</a>
                  </li>
               </c:if>
               
               <c:if test="${sessionScope.loginuser == null}">
                  <li class="rightSubMenu logout">
                     <a class="m_hover" href="<%= ctxPath %>/login.ej">LOGIN</a>
                  </li>
                  <li class="rightSubMenu logout">
                     <a class="m_hover" href="<%= ctxPath %>/memberRegister.ej">JOIN</a>
                  </li>
               </c:if>
               
               <li class="rightSubMenu">
                  <a class="m_hover" href="<%= ctxPath %>/orderSearch.ej">ORDER</a>
               </li>
               <li class="rightSubMenu">
                  <a class="m_hover" href="<%= ctxPath %>/mypage.ej">MYPAGE</a>
               </li>
               <li class="rightSubMenu">
                  <a class="m_hover" href="<%= ctxPath %>/cart.ej">BAG</a>
               </li>
            </ul>
         </div>
      </div>
   </div>
   

