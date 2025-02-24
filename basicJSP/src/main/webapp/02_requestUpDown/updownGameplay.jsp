<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Random rd = new Random();
int com = 0;
try {
	com = Integer.parseInt(request.getParameter("recom"));
} catch (NumberFormatException e) {
	com = rd.nextInt(100) + 1;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./updownGameplayPro.jsp" method="post">
		<p>
			치트키 :
			<%=com%></p>
		<h1>업다운 게임</h1>
		<input type="number" name="me" id="me">
		<button>전송</button>
		<input type="hidden" name="com" value="<%=com%>">
	</form>
</body>
</html>