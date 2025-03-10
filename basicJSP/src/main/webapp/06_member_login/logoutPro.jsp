<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./common.jsp"%>

<%
String msg = dao.getOneMember(dao.getLog()).getId() + "님 로그아웃 성공";
dao.setLog(-1);
%>
<script>
msgGoMain("<%=msg%>");
</script>

