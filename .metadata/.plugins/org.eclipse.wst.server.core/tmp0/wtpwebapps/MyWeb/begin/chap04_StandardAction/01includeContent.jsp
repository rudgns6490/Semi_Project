<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.Date" %>

<%
    //*** 현재시각을 알아오기 *** // 
	Date now = new Date();
   
    String currentTime = String.format("%tF %tT %tA",now,now,now); 
%>

copyright 이 웹페이지의 저작권은 최효민씨에게 있습니다.<br/>
<span style="color: blue; font-weight: bold;"><%= currentTime%></span>







    