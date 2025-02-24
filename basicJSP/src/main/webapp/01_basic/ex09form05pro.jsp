<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int hakbun = 0;
String name = null;
String grade = null;
String subjects = null;
String[] hobby = null;
String memo = null;

try {
	hakbun = Integer.parseInt(request.getParameter("hakbun"));
	name = request.getParameter("name");
	grade = request.getParameter("grade");
	subjects = request.getParameter("subjects");
	hobby = request.getParameterValues("hobby");
	memo = request.getParameter("memo");
} catch (NumberFormatException e) {
%>
	<script>
		alert("비어있는 값이 있습니다");
		// 돌아가는 방법
		//location.href = 'ex08form05.jsp';
		//history.go(-1);
		//history.back();
	</script>
<%
	response.sendRedirect("./ex08form05.jsp");
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
	<table border="1">
		<tr>
			<td>학번</td>
			<td>이름</td>
			<td>학년</td>
			<td>과목</td>
			<td>취미</td>
			<td>메모</td>
		</tr>
		<tr>
			<td><%=hakbun%></td>
			<td><%=name%></td>
			<td><%=grade%></td>
			<td><%=subjects%></td>
			<td>
				<%
				for (int i = 0; i < hobby.length; i++) {
					out.print(i == 0 ? hobby[i] : "," + hobby[i]);
				}
				%>
			</td>
			<td><%=memo%></td>
		</tr>
	</table>
</body>
</html>