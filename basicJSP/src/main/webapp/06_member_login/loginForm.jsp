<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<h1>로그인</h1>
<form action="./loginPro.jsp" method="post">
	<table border="1">
		<tr>
			<td>ID</td>
			<th><input type="text" name="id" id="id"></th>
		</tr>
		<tr>
			<td>PW</td>
			<th><input type="text" name="pw" id="pw"></th>
		</tr>
		<tr>
			<td colspan="2" align="center" id="submit"><input type="submit"
				value="로그인"></td>
		</tr>
	</table>
</form>
<%@ include file="./footer.jsp"%>