<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String[] nameArr = {"일순신","이순신","삼순신","사순신","오순신"}; 
    request.setAttribute("nameArr", nameArr);
    
    String[] bookArr = {"어린왕자","삼국지","탈무드","인어공주","백설공주"};
    request.setAttribute("bookArr", bookArr);
    
    RequestDispatcher dispatcher = request.getRequestDispatcher("06ForEach3View.jsp"); 
    dispatcher.forward(request, response);
%>    