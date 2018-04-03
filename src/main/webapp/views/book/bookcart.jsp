<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/font-awesome-4.7.0/css/font-awesome.min.css"/>">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,400,400i"
	rel="stylesheet">
<link rel="shortcut icon" type="img/png"
	href="https://vignette3.wikia.nocookie.net/logopedia/images/2/2c/Lazada_Icon.png/revision/latest?cb=20150131204229">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/animate.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/style3.css"/>">
	
<title>Gio hang</title>
</head>
<body>
	<div class="header">
		<div class="container">
			<div class="col-md-2 img">
				<a href="lazada.html"><img
					src="http://laptrinhvien.io/wp-content/themes/Training/asset/img/xlogo-white.png.pagespeed.ic.BsAknvdSa9.png"
					alt=""></a>
			</div>
		</div>
	</div>
	<div class="content">
		<div class="container">
			<div class="col-md-12 back">
				<div class="back-home">
					<a href="<c:url value="/book"/>">
						<p>
							<i class="fa fa-angle-left" aria-hidden="true"></i>Tiếp tục mua
							hàng
						</p>
					</a>
				</div>
			</div>
			<div class="col-md-12 cart">
				<div class="text">
					<h5>Giỏ hàng của tôi</h5>
				</div>
				<div class="col-md-6 table">
					<table class="product-table" id="myTable">
						<thead id="thead-talbe">
							<tr>
								<td class="size"></td>
								<td class="none"></td>
								<td class="price"><span>Giá</span></td>
								<td class="size-item">
									<p>Số lượng</p>
								</td>
							</tr>
						</thead>
						<tbody>
							
						</tbody>
					</table>
				</div>
				<div class="col-md-4 information" id="information2"></div>
			</div>
		</div>
	</div>
	<!-- 	<div class="pay animated bounceInDown">
			<h1>Pay Form</h1>
			<table>
				<tr>
					<td>Fisrt Name:</td>
					<td><input type="text" class="form-control" id="f-name"></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input type="text" class="form-control" id="l-name"></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input type="text" class="form-control" id="address"></td>
				</tr>
				<tr>
					<td>Phone Number:</td>
					<td><input type="text" class="form-control" id="phone"></td>
				</tr>
				<tr>
					<td><button type="button" class="btn btn-success"
							onclick="accept()">Accept</button></td>
					<td><button type="button" class="btn btn-success"
							onclick="hideAndShowPay()">Cancel</button></td>
				</tr>
			</table>
		</div>
	</div>
	<div class="che"></div>
	<div class="animated bounceInDown loading">
		<button class="buttonload">
			<i class="fa fa-refresh fa-spin"></i>
		</button>
		<p>Hệ thống đang xử lý đơn hàng</p>
	</div>
	<div class="animated bounceInDown alert alert-success">
		<strong><i class="fa fa-check-square-o" aria-hidden="true"></i>Success!</strong>
	</div> -->

	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/lazada3.js "/>"></script>
</body>
</html>