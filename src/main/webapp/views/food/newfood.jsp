<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css" />">
<link href='http://fonts.googleapis.com/css?family=Roboto:400'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="<c:url value="/resources/css/newfood.css" />">

<title>Them Mon An</title>
</head>
<body>
	<div class="main">

		<form:form id="profileForm" method="POST"
			enctype="multipart/form-data" modelAttribute="food">
			<h1>Thêm món ăn</h1>
			<input type="text" name="name" required="" placeholder="Tên món ăn"
				value="${food.name }">
			<c:choose>
				<c:when test="${edit}">
					<img accept=".jpg, .jpeg, .png"
						src="<c:url value='/food/files' />/${ food.image }"
						class="img-rounded" alt="Cinque Terre" width="150" height="150">
					<input type="file" name="file" placeholder="Hình ảnh"
						value="${ food.image }">
					<input type="text" name="filein" placeholder="Hình ảnh"
						value="${ food.image }" style="display:none" >
				</c:when>
				<c:otherwise>
					<input type="file" name="file" placeholder="Hình ảnh"
						accept=".jpg, .jpeg, .png" value="${ food.image }">
				</c:otherwise>
			</c:choose>

			<input type="text" name="gia" required="" placeholder="Giá"
				value="${food.price }">

			<input type="text" name="namestore" required=""
				placeholder="Tên cửa hàng" value="${ food.namestore }">

			<input type="text" name="storeaddress" required=""
				placeholder="Địa chỉ" value="${food.store }">

			<c:choose>
				<c:when test="${edit}">
					<input type="submit" value="Update" class="btn btn-primary btn-sm" /> or <a
						href="<c:url value='/food' />">Cancel</a>
				</c:when>
				<c:otherwise>
					<input type="submit" value="Submit" class="btn btn-primary btn-sm" /> or <a
						id="exit" href="<c:url value='/food' />">Cancel</a>
				</c:otherwise>
			</c:choose>

		</form:form>



	</div>
	<script type="text/javascript"
		src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

	<script type="text/javascript"
		src="<c:url value="/resources/js/app.js" />"></script>
</body>
</html>