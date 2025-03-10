<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%
%>
<h1>회원 삭제</h1>
<form action="./deletePro.jsp" method="post">
	<table border="1">
		<tr>
			<td>PW</td>
			<th><input type="text" name="pw" id="pw"></th>
		</tr>
		<tr>
			<td colspan="2" align="center" id="submit"><input type="submit"
				value="삭제하기"></td>
		</tr>
	</table>
</form>
<%@ include file="./footer.jsp"%>