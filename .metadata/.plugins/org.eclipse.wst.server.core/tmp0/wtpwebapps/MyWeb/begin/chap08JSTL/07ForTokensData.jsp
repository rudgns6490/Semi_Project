<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String names = "한석규,두석규,세석규,네석규,오석규";
    request.setAttribute("names", names);
    
    String friends = "일지매,이지매.삼지매/사지매,오지매";
    request.setAttribute("friends", friends);
    
    RequestDispatcher dispatcher = request.getRequestDispatcher("07ForTokensView.jsp");
    dispatcher.forward(request, response); 
%>    



