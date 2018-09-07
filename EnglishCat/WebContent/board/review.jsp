<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>


		<table border="2">
				<tr>
					<td>cont_id</td>
					<td>title</td>
					<td>content</td>
					<td>user_id</td>
					<td>read</td>

				</tr>
				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.cont_id}</td>
						<td>${item.cont_title}</td>
						<td>${item.cont_content}</td>
						<td>${item.user_pid}</td>

					</tr>
				</c:forEach>
			</table>
			<a href="<%=request.getContextPath()%>/board/writeForm.jsp">글쓰기</a>

</body>
</html>
