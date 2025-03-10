<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="./header.jsp"%>

<%
String msg = "";
if (dao.getLog() == -1) {
	msg = "메인 : 로그인 상태 로그아웃";
}else {
	msg = "메인 : 로그인 상태<br>" + dao.getOneMember(dao.getLog()).getId();
}
%>
<h1><%=msg%></h1>
<%@ include file="./footer.jsp"%>
