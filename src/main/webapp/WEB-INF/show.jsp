<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1><c:out value="${book.title }"></c:out></h1>
	<h3><c:out value="${book.description }"></c:out></h3>
	<p>Language: <c:out value="${book.language }"></c:out></p>
	<p><c:out value="${book.numberOfPages }"></c:out> pages</p>
</body>
</html>