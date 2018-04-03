<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.green.example.util.SecurityUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>List Food</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="icon" type="image/png"
	href="<c:url value="/resources/images/icons/favicon.ico"/>">
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>

<link rel="stylesheet"
	href="<c:url value="/resources/css/perfect-scrollbar.min.css" />">

<link rel="stylesheet"
	href="<c:url value="/resources/css/listfood.css" />">
</head>
<body>
	<div class="header">
		<div class="content">
			<img alt="logo" src="/example/resources/image/logo_animated_sm.gif">
			<div class="visible">
				<ul>
					<li>Chào mừng bạn đến với Let's Eat</li>
					<li>Thực Đơn Hôm Nay</li>
					<li>Chúc Quý Khách Ngon Miệng</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="showPage" style="display: none"></div>
	<div class="main">

		<div class="left-col">
			<c:forEach items="${listfood}" var="f">
				<div class="container-item">
					<div class="item">
						<div class="item-overlay">
							<div class="sale-tag">
								<span>HOT</span>
							</div>
						</div>
						<!-- item image -->
						<div class="item-img" id="hinhanh${f.id }">
							<img src="<c:url value='/food/files' />/${ f.image }" width="191"
								height="200" />
						</div>

						<!-- end item image -->
						<div class="item-content">
							<div class="item-top-content">
								<div class="item-top-content-inner">
									<div class="item-product">

										<div class="item-top-title">
											<h2 id="tenmon${f.id}">${f.name }</h2>
											<p class="subdescription">${f.store }</p>
										</div>
									</div>
									<div class="item-product-price">
										<span class="price-num"><span>${ f.price }</span></span>
									</div>
								</div>
							</div>
							<div class="item-add-content">
								<div class="item-add-content-inner">
									<div class="section">
										<h4>${f.namestore }</h4>
									</div>
									<div class="section">
										<button class="btn buy expand"
											onclick="buy(${f.id},${f.price })">Buy now</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>

			<div class="clearnfix"></div>
		</div>
		<div class="right-col">
			<div class="listOrder">
				<p id="name" style="display: none"><%=SecurityUtil.getPrincipal()%></p>
				<table class="table" id="listfood">

					<!--Table head-->
					<thead class="blue-grey lighten-4">
						<tr>
							<th>#</th>
							<th>Tên món</th>
							<th>Giá tiền</th>
							<th>Hình ảnh</th>
							<th></th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>
			<div class="pushitem">
				<button type="button" class="btn btn-success">Đặt hàng</button>
				<button type="button" class="btn btn-primary" onclick="showPage()">Trạng
					thái danh sách Order</button>
			</div>
		</div>
	</div>


	<!-- Item slider end-->

	<script src="https://www.gstatic.com/firebasejs/4.9.0/firebase.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"
		charset="utf-8"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/perfect-scrollbar.jquery.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/perfect-scrollbar.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/list-food.js" />"></script>
	<script>
    new PerfectScrollbar('#listfood tbody');
    </script>
</body>
</html>