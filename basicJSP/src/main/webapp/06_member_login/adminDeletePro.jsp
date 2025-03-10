<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./common.jsp"%>

<%
if(dao.getLog() != 0){
	%>
	<script>
	goBack("잘못된 접근입니다");
	</script>
	<%
}
int idx = Integer.parseInt(request.getParameter("idx"));
String msg = dao.getOneMember(idx).getId() + "회원 삭제 완료";
dao.removeMemberList(idx);
%>
<script>
msgGoMain("<%=msg%>");
</script>

