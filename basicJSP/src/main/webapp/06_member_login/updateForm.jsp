<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>
<h1>회원 수정</h1>
<form action="./updatePro.jsp" method="post">
	<table border="1">
		<tr>
			<th>ID</th>
			<th><input type="text" name="id" id="id"></th>
		</tr>
		<tr>
			<th>PW</th>
			<th><input type="text" name="pw" id="pw"></th>
		</tr>
		<tr>
			<th>NAME</th>
			<th><input type="text" name="name" id="name"></th>
		</tr>
		<tr>
			<th>성별</th>
			<th><input type="radio" name="gender" value="true">남성 <input
				type="radio" name="gender" value="false">여성</th>
		</tr>
		<tr>
			<td colspan="2" align="center" id="submit"><input type="submit"
				value="정보수정"></td>
		</tr>
	</table>
</form>


<%@ include file="./footer.jsp"%>
