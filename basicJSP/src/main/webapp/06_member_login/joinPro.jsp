<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./common.jsp"%>

<%-- 
process page 는 나중에 서블렛 자바 클래스 부분 

자바랑 자바스크립트만 쓴다 : 화면에 보이는 부분이 아니라 
사용자의 요청을 처리하는 부분 
그리고 다른 페이지로 연결해준다

 --%>

<%
String id = request.getParameter("id");

if (dao.checkMemberList(id) == -1) {
	dao.addMemberList(id, request.getParameter("pw"), request.getParameter("name"), request.getParameter("gender").equals("남성") ? true : false);
%>
<script>
	msgGoMain('회원 가입을 축하합니다');
</script>
<%
} else {
%>
<script>
	goBack("이미 존재하는 아이디입니다");
</script>
<%
}
%>
