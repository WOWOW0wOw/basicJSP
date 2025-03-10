<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./common.jsp"%>

<%
String id = request.getParameter("id");
int idx = dao.checkMemberList(id);
if (idx != -1) {
%>
<script>
	goBack("수정에 실패했습니다");
</script>
<%
} else {
	idx = dao.getLog();
	dao.getOneMember(idx).setId(id);
	dao.getOneMember(idx).setPw(request.getParameter("pw"));
	dao.getOneMember(idx).setName(request.getParameter("name"));
	dao.getOneMember(idx).setGender(request.getParameter("gender").equals("남성") ? true : false);
%>
<script>
	msgGoMain('수정 성공!!');
</script>
<%
}
%>
