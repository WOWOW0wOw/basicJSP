<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./common.jsp"%>

<%
String msg = "비밀번호를 확인해주세요";
if(!request.getParameter("pw").equals(dao.getOneMember(dao.getLog()).getPw())){
	%>
<script>
	goBack("<%=msg%>");
</script>
<%
}else{
	msg = dao.getOneMember(dao.getLog()).getId() + "님 회원 탈퇴 완료";
	dao.removeMemberList(dao.getLog());
	dao.setLog(-1);
%>
<script>
msgGoMain("<%=msg%>");
</script>
<%
}
%>

