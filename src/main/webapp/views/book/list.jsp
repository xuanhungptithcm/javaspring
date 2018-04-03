<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css" />">

<link rel="stylesheet" href="<c:url value="/resources/css/app.css" />">
<title>Danh Sach Mon AN</title>
</head>
<body>
	<jsp:include page="../templates/header.jsp"></jsp:include>
	<a class="addFood" href="<c:url value='/book/newbook' />">Add New
		Food</a>
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Ten Sach</th>
					<th scope="col">Hinh anh</th>
					<th scope="col">Gia khuyen mai</th>
					<th scope="col">Gia goc</th>
					<th scope="col">Ngay xuat ban</th>
					<th scope="col">Name Danh Muc</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${book}" var="book">
					<tr>
						<th>${ book.id}</th>
						<td>${ book.namebook }</td>
						<td><img src="<c:url value='/book/files' />/${ book.image }"
							class="img-rounded" alt="Cinque Terre" width="150" height="150"></td>
						<td>${ book.price }</td>
						<td>${ book.priceold }</td>
						<td>${ book.date }</td>
						<td>${ book.danhmuc.tendanhmuc}</td>
						<sec:authorize access="hasRole('ADMIN')">
							<td><a href="<c:url value='/book/edit-book-${book.id}' />"
								class="btn btn-success custom-width">edit</a></td>
						</sec:authorize>
						<sec:authorize access="hasRole('ADMIN')">
							<td><a href="<c:url value='/book/delete-book-${book.id}' />"
								class="btn btn-danger custom-width">delete</a></td>
						</sec:authorize>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script type="text/javascript"
		src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

	<script type="text/javascript"
		src="<c:url value="/resources/js/app.js" />"></script>

</body>
</html>