<%@page import="board.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("board")==null){
	session.setAttribute("board", new Board());
}
System.out.println("index.jsp");
response.sendRedirect("./_00_main.jsp");
%>