<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>


<html>
<head>
<meta charset=UTF-8">
<title>공지사항 게시판 만들기</title>
</head>
<body>
<table border="1"  align="center"  width="80%">
    <tr align="center"   bgcolor="lightgreen">
      <td><b>번호</b></td>
      <td><b>구분</b></td>
      <td><b>제목</b></td>
      <td><b>등록일</b></td>
   </tr>

 <c:forEach var="notice" items="${noticeList}">
   <tr align="center">
      <td>${notice.n_idx}</td>
      <td>${notice.n_category}</td>
      <td>${notice.n_title}</td>
      <td>${notice.n_regdate}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
