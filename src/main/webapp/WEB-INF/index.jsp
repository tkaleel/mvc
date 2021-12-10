<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Insert title here</title>
</head>
<div class="box w-50 p-3 ">
	<h1>All Books</h1>
	<table class="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Language</th>
				<th>Number of Pages</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="book" items="${books }">
				<tr>
					<td><c:out value="${book.title }"></c:out></td>
					<td><c:out value="${book.description }"></c:out></td>
					<td><c:out value="${book.language }"></c:out></td>
					<td><c:out value="${book.numberOfPages }"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>
