<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int me = 0;
int com = 0;
try {
	me = Integer.parseInt(request.getParameter("me"));
	com = Integer.parseInt(request.getParameter("com"));
} catch (NumberFormatException e) {
%>
<script>
	alert("비어있는 값이 있습니다");
	history.back();
</script>
<%
return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./updownGameplay.jsp" method="post">
		<input type="hidden" name="recom" value="<%=com%>">
		<h1><%=com%></h1>
		<%
		if (me != com) {
			if (me > com) {
				out.println("<h1>DOWN</h1>");
			} else if (me < com) {
				out.println("<h1>UP</h1>");
			}
		%>
		<button>뒤로가기</button>

		<%
		} else {
		out.println("<h1>BINGO</h1>");
		%>
		<a href="./index.jsp">처음으로 </a>
		<%
		}
		%>
	</form>
</body>
</html>