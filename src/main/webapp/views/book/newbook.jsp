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

<title>Them Sach</title>
</head>
<body>
	<div class="main">

		<form:form id="profileForm" method="POST"
			enctype="multipart/form-data" modelAttribute="bookModel" >
			<h1>Thêm Sach</h1>
			<input type="text" name="namebook" required="" placeholder="Tên sach"
				value="${bookModel.book.namebook }">
			<c:choose>
				<c:when test="${edit}">
					<img accept=".jpg, .jpeg, .png"
						src="<c:url value='/book/files' />/${ bookModel.book.image}"
						class="img-rounded" alt="Cinque Terre" width="150" height="150">
					<input type="file" name="filein" placeholder="Hình ảnh"
						value="${ bookModel.book.image }">
					<input type="text" name="fileold" placeholder="Hình ảnh"
						value="${ bookModel.book.image }" style="display: none">
				</c:when>
				<c:otherwise>
					<input type="file" name="file" placeholder="Hình ảnh"
						accept=".jpg, .jpeg, .png" value="${ bookModel.book.image }">
				</c:otherwise>
			</c:choose>


			<input type="text" name="price" required=""
				placeholder="Gia khuyen mai" value="${ bookModel.book.price }">

			<input type="text" name="priceold" required="" placeholder="Gia goc"
				value="${bookModel.book.priceold }">

			<input type="text" name="date" required=""
				placeholder="Ngay Xuat Ban" value="${bookModel.book.date }">



			<div class="row">
				<div class="form-group col-md-12 optionbook">
					<label class="col-md-4 control-lable danhmuc">Danh muc</label>
					<div class="col-md-7">
						
						<form:select path="book.danhmuc.id" class="form-control input-sm" value="">
							<form:options items="${danhmuc}" itemLabel="tendanhmuc" itemValue="id" />
						</form:select>
					</div>
				</div>
			</div>
			<c:choose>
				<c:when test="${edit}">
					<input type="submit" value="Update" class="btn btn-primary btn-sm" /> or <a
						href="<c:url value='/book' />">Cancel</a>
				</c:when>
				<c:otherwise>
					<input type="submit" value="Submit" class="btn btn-primary btn-sm" /> or <a
						id="exit" href="<c:url value='/book' />">Cancel</a>
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