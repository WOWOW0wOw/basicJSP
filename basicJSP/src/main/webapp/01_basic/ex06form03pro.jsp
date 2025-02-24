<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int num1 = 0;
	int num2 = 0;
	try {
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
	} catch (NumberFormatException e) {
		out.println("<h1>비어있는 값이 있습니다</h1>");
		return;
	}
	if(num1 == num2){
		out.println("두 값이 같습니다");
		return;
	}
	out.println(num1 > num2 ? "<h1>" + num1 + "값이 더 큽니다</h1>" : "<h1>" + num2 + "값이 더 큽니다</h1>");
	%>

</body>
</html>