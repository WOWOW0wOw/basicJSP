<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./common.jsp"%>

<%
String id = request.getParameter("id");
if(id.equals("admin") && request.getParameter("pw").equals("admin")){
	dao.setLog(0);
	%>
	<script>
		msgGoMain('관리자님 환영합니다!!');
	</script>
	<%
}
int idx = dao.checkMemberList(id);
if (idx != -1 && dao.getOneMember(idx).getPw().equals(request.getParameter("pw"))) {
	dao.setLog(idx);
%>
<script>
	msgGoMain('로그인 성공!!');
</script>
<%
} else {
%>
<script>
	goBack("아이디와 비밀번호를 확인하십시오");
</script>
<%
}
%>
