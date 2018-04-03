<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book Store</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,400,400i"
	rel="stylesheet">
<link rel="shortcut icon" type="img/png"
	href="https://vignette3.wikia.nocookie.net/logopedia/images/2/2c/Lazada_Icon.png/revision/latest?cb=20150131204229">
<link rel="stylesheet"
	href="<c:url value="/resources/css/animate.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min2.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/font-awesome-4.7.0/css/font-awesome.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/perfect-scrollbar.min.css" />">

</head>
<body>

	<div class="header">
		<div class="container">
			<div class="col-md-12" id="menu">
				<ul>
					<li class="end">CHANGE LANGUAGE</li>
					<li>ĐĂNG KÝ</li>
					<li>ĐĂNG NHẬP</li>
					<li>KIỂM TRA ĐƠN HÀNG</li>
					<li>CHĂM SÓC KHÁCH HÀNG</li>
					<li class="blue">BÁN HÀNG CÙNG LAZADA</li>
					<li class="yellow">TẢI APP LAZADA</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="header2">
		<div class="container">
			<div class="col-md-2" id="logo">
				<a href="lazada.html"><img
					src="http://laptrinhvien.io/wp-content/themes/Training/asset/img/xlogo-white.png.pagespeed.ic.BsAknvdSa9.png"
					alt=""></a>
			</div>
			<div class="col-md-6">
				<div class="input-group">
					<input type="text" class="form-control" id="search"
						onkeyup="loadItemSearch()"
						placeholder="Tìm kiếm sản phẩm, thương hiệu hay nhãn hàng mong muốn ...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</span>
				</div>

			</div>
			<div class="col-md-1 col-1 col-sm-1 " id="iconshopping">
				<a href="<c:url value='/book/bookcart' />"><i
					style="color: #fff" class="fa fa-shopping-cart" aria-hidden="true"></i></a>
				<div id="cart-item"></div>
			</div>
			<div class="col-md-3">
				<img
					src="https://vn-live.slatic.net/cms/2017/sticker/flashsale-header1.png">
			</div>
		</div>
	</div>
	<div class="header3">
		<div class="container">
			<div class="col-md-12" id="menu">
				<ul>
					<li class="start">Điện tử</li>
					<li>Thời trang</li>
					<li>Đồng hồ & Phụ kiện</li>
					<li>Nhà cửa & Đời sống</li>
					<li>Sức khỏe & Sắc đẹp</li>
					<li>Trẻ em & đồ chơi</li>
					<li>Bách hóa gia đình</li>
					<li>Thể thao & Du lịch</li>
					<li>Xe máy, Sách & Dịch vụ</li>
					<li class="yellow">Khuyễn mãi & Flash Sale</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="content">
		<div class="container">
			<div class="col-md-12" id="menu">
				<ul>
					<li onmouseover="next()">Khuyễn Mãi
						<div class="container">
							<div class="sub-menu animated bounceInLeft" id="KM1">
								<div class="col-md-4" id="menu1">
									<div class="img1">
										<img
											src="https://vn-live.slatic.net/original/28caebb984abaab8625f11c6200262e4.jpg">
									</div>
								</div>
								<div class="col-md-4">
									<div class="img2">
										<img
											src="https://vn-live.slatic.net/original/ce6a8337353e21f4569ddbf8116e1742.jpg">
									</div>
									<div class="img2">
										<img
											src="https://vn-live.slatic.net/original/37650a55222c32a6bd9904712d59ecde.jpg">
									</div>
								</div>
								<div class="col-md-4" id="menu4">
									<div class="img2">
										<img
											src="https://vn-live.slatic.net/original/57bea756817f4f2050ca1e5df10b8e72.jpg">
									</div>
									<div class="img2">
										<img
											src="https://vn-live.slatic.net/original/91aa712396ba5c6bb247781658ab8998.jpg">
									</div>
								</div>
								<div class="row-end">
									<div class="container animated bounceInLeft">
										<div class="col-md-4" id="row1">
											<div class="img2" id="row-img-1">
												<img
													src="https://vn-live.slatic.net/original/687982122af49acf1a9125250bc28931.jpg">
											</div>
											<div class="img2" id="row-img-2">
												<img
													src="https://vn-live.slatic.net/original/0ea3c5c5ab77d7d10d226347cea607dd.jpg">
											</div>
										</div>
										<div class="col-md-4" id="row2">
											<div class="img2" id="row-img-1">
												<img
													src="https://vn-live.slatic.net/original/41bf5d9505515783af24fd188a301ce0.jpg">
											</div>
											<div class="img2" id="row-img-2">
												<img
													src="https://vn-live.slatic.net/original/a389cf722c8b0d20b9653d2344e05999.jpg">
											</div>
										</div>
										<div class="col-md-4" id="row2">
											<div class="img2" id="row-img-1">
												<img
													src="https://vn-live.slatic.net/original/49682354cf0f310fa30b30e41aa41c9d.jpg">
											</div>
											<div class="img2" id="row-img-2">
												<img
													src="https://vn-live.slatic.net/original/5d142a0c586d9b87f19f21662021d2e7.jpg">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li onmouseover="next2()" class="sale">mã giảm giá
						<p class="new"></p>
						<div class="container" id="KM2">
							<div class="col-md-12 animated bounceInLeft">

								<div class="col-md-2">
									<img
										src="https://vn-live.slatic.net/original/1d3ec2fdfe7676fdd4d0f55f12166c31.jpg">
								</div>
								<div class="col-md-2">
									<img
										src="https://vn-live.slatic.net/original/d7404f4b5be6eb302e5102575787c763.jpg">
								</div>
								<div class="col-md-2" id="GG4">
									<img
										src="https://vn-live.slatic.net/original/3ce32908babdf343c2e9ac91a1c1dea4.jpg">
								</div>
								<div class="col-md-2" id="GG3">
									<img
										src="https://vn-live.slatic.net/original/db2f2aa16261c761461cece552f65ec6.jpg">
								</div>
								<div class="col-md-4">
									<img
										src="https://vn-live.slatic.net/original/cf2d074dd5bf464372357e8b1757b431.jpg">
								</div>
								<div class="row2">
									<div class="col-md-2">
										<img
											src="https://vn-live.slatic.net/original/73ed7fad8d2d2e3e9ee5f7678a6c82c9.jpg">
									</div>
									<div class="col-md-2">
										<img
											src="https://vn-live.slatic.net/original/82cb9137ebd60aee9a07413d773c1276.jpg">
									</div>
									<div class="col-md-2">
										<img
											src="https://vn-live.slatic.net/original/c852e1c242f726fc734a727d77ebcb08.jpg">
									</div>
									<div class="col-md-2">
										<img
											src="https://vn-live.slatic.net/original/7208aa98d341043c749fa9d8f38bddc5.jpg">
									</div>

									<div class="col-md-2" id="right1">
										<img
											src="https://vn-live.slatic.net/original/cfc3688c137965596eca9d63f098e7f6.jpg">
									</div>
									<div class="col-md-2" id="right2">
										<img
											src="https://vn-live.slatic.net/original/86880f8eb0e6931e7a90dd6bfe4ac513.jpg">
									</div>

								</div>
								<div class="row3">
									<div class="col-md-2">
										<img
											src="https://vn-live.slatic.net/original/73ed7fad8d2d2e3e9ee5f7678a6c82c9.jpg">
									</div>
									<div class="col-md-2">
										<img
											src="https://vn-live.slatic.net/original/82cb9137ebd60aee9a07413d773c1276.jpg">
									</div>
									<div class="col-md-2">
										<img
											src="https://vn-live.slatic.net/original/c852e1c242f726fc734a727d77ebcb08.jpg">
									</div>
									<div class="col-md-2">
										<img
											src="https://vn-live.slatic.net/original/7208aa98d341043c749fa9d8f38bddc5.jpg">
									</div>

									<div class="col-md-2" id="right1">
										<img
											src="https://vn-live.slatic.net/original/cfc3688c137965596eca9d63f098e7f6.jpg">
									</div>
									<div class="col-md-2" id="right2">
										<img
											src="https://vn-live.slatic.net/original/86880f8eb0e6931e7a90dd6bfe4ac513.jpg">
									</div>

								</div>
							</div>


						</div>
					</li>
					<li onmouseover="next3()" ; class="gianhangKM">
						<p>gian hàng chính hãng</p>
						<div class="container" id="KM3">
							<div class="sub-menu animated bounceInLeft">
								<div class="col-md-4" id="menu3">
									<div class="img1">
										<img
											src="https://vn-live.slatic.net/original/470be81ddd1d8864ee4e18de2fe372b7.jpg">
									</div>
								</div>
								<div class="col-md-4">
									<div class="img1">
										<img
											src="https://vn-live.slatic.net/original/eac79b092767353156f1a5a18995d537.jpg">
									</div>
									<div class="img1">
										<img
											src="https://vn-live.slatic.net/original/bb298d4dfed858fb41e5faf49822fa37.jpg">
									</div>
								</div>
								<div class="col-md-4" id="left">
									<div class="img1">
										<img
											src="https://vn-live.slatic.net/original/25d8b52ab9bd08f0f317e1aec3a4a72d.jpg">
									</div>
									<div class="col-md-6" id="left2">
										<div class="img1">
											<img
												src="https://vn-live.slatic.net/original/e9d41722fd98a1526c88a23e50c126fa.jpg">
										</div>
									</div>
									<div class="col-md-6">
										<div class="img1">
											<img
												src="https://vn-live.slatic.net/original/2e915c771b7c966f68c95aab650099ad.jpg">
										</div>
									</div>
								</div>
								<div class="col-md-12" id="menubot">
									<div class="col-md-4">
										<img
											src="https://vn-live.slatic.net/original/3a00c356039c84c8fd701c861bcaa023.jpg">
									</div>
									<div class="col-md-4" id="menubot1">
										<img
											src="https://vn-live.slatic.net/original/fc0dff7244bead39df21527958ae23bf.jpg">
									</div>
									<div class="col-md-4" id="menubot2">
										<img
											src="https://vn-live.slatic.net/original/f45e4ba81e28835ebe8f53cb9df6265c.jpg">
									</div>
								</div>
					</li>
					<li onmouseover="next5()" ; class="laneKM">
						<p>laneige khuyễn mãi</p>
						<div class="row">
							<div class="container" id="KM4">
								<div class="col-md-12 animated bounceInLeft">
									<div class="col-md-4">
										<img
											src="https://vn-live.slatic.net/original/3a7b63e8cb57d90b1a58189d05c74bec.jpg">
									</div>
									<div class="col-md-4">
										<img
											src="https://vn-live.slatic.net/original/4cf51f78e3788023328790a9b2b31a9c.jpg">
									</div>
									<div class="col-md-4" id="laneKM1">
										<img
											src="https://vn-live.slatic.net/original/733da52d3e25fb250791e79e65a56133.jpg">
									</div>
								</div>
							</div>
						</div>
					</li>
					<li class="end"><img
						src="http://xuanhungptithcm.byethost5.com/html/images/buttonlazada.PNG"></li>

				</ul>
			</div>
		</div>
	</div>
	<div class="menumain">
		<div class="container">
			<div class="category">
				<p class="sologan">Xu hướng tìm kiếm - Cập nhật lúc 9:00</p>
				<div class="item left">
					<i class="fa fa-angle-left" aria-hidden="true"></i>
				</div>
				<div class="item">
					<a href=""><i class="fa fa-laptop" aria-hidden="true"></i></a>
					<p>Nhà cửa & Đời sống</p>
				</div>
				<div class="item">
					<a href=""><i class="fa fa-home" aria-hidden="true"></i></a>
					<p>Sức khỏe & Sắc đẹp</p>
				</div>
				<div class="item">
					<a href=""><i class="fa fa-heartbeat" aria-hidden="true"></i></a>
					<p>Trẻ sơ sinh & Trẻ nhỏ</p>
				</div>
				<div class="item">
					<a href=""><i class="fa fa-child" aria-hidden="true"></i></a>
					<p>Bách hóa gia đình</p>
				</div>
				<div class="item">
					<a href=""><i class="fa fa-shopping-basket" aria-hidden="true"></i></a>
					<p>Thể thao & Du lịch</p>
				</div>
				<div class="item">
					<a href=""><i class="fa fa-futbol-o" aria-hidden="true"></i></a>
					<p>Xe máy, Sách & Dịch vụ</p>
				</div>
				<div class="item">
					<a href=""><i class="fa fa-car" aria-hidden="true"></i></a>
					<p>Chăm sóc thú cưng</p>
				</div>
				<div class="item">
					<a href=""><i class="fa fa-paw" aria-hidden="true"></i></a>
					<p>Xu hướng hot</p>
				</div>
				<div class="item right">
					<i class="fa fa-angle-right" aria-hidden="true"></i>

				</div>
			</div>
			<!-- ***************Flash-Sale*********************************** -->
			<div class="slogan">
				<p>Báo thanh niên</p>
			</div>
			<div class="col-md-12 plash-sale">
				<div class="col-md-3">
					<a href="#"> <img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK9NB48fFJJCP7NLL3g0OE2Sqs01Rf43cXzvoK2ou7IlsIfnMT"
						alt="" width="231.42" height="330.73">
					</a>
				</div>
				<c:forEach items="${dm1}" var="book">
					<div class="col-md-2 show" id="fl-1">
						<img src="<c:url value='/book/files' />/${ book.image }" alt=""
							width="220.7" height="220.7">
						<div class="text">
							<p class="name">${book.namebook }</p>
							<p class="prices">${book.price}</p>
							<span class="sale">${book.priceold}</span>
							<p class="discount">${book.date}</p>
							<a href="detail.html?code=el5lp"><button type="button"
									class="btn btn-primary animated bounceInDown by-item"
									id="add-item1" style="display: none;">Show item</button></a>
							<button class="btn btn-primary animated bounceInUp by-item cart"
								onclick="getItem('${book.id }','${book.namebook }','${book.price }','${book.priceold }','${book.image }','${book.date }');"
								id="show-item1" style="display: none;">Add item to cart</button>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="slogan">
				<p>Báo tuổi trẻ</p>
			</div>
			<div class="col-md-12 plash-sale">
				<div class="col-md-3">
					<a href="#"> <img
						src="data:image/png;base64,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"
						alt="" width="231.42" height="330.73">
					</a>
				</div>
				<c:forEach items="${dm2}" var="book">
					<div class="col-md-2 show" id="fl-1">
						<img src="<c:url value='/book/files' />/${ book.image }" alt=""
							width="220.7" height="220.7">
						<div class="text">
							<p class="name">${book.namebook }</p>
							<p class="prices">${book.price}</p>
							<span class="sale">${book.priceold}</span>
							<p class="discount">${book.date}</p>
							<a href="detail.html?code=el5lp"><button type="button"
									class="btn btn-primary animated bounceInDown by-item"
									id="add-item1" style="display: none;">Show item</button></a>
							<button class="btn btn-primary animated bounceInUp by-item cart"
								onclick="getItem('${book.id }','${book.namebook }','${book.price }','${book.priceold }','${book.image }','${book.date }');"
								id="show-item1" style="display: none;">Add item to cart</button>
						</div>
					</div>
				</c:forEach>
			</div>
			<!-- ************** Sennheiser - Tai nghe bluetooth in-ear ************************** -->
			<div class="slogan">
				<p>Báo an ninh</p>
			</div>
			<div class="col-md-12 plash-sale">
				<div class="col-md-3">
					<a href="#"> <img
						src="https://mythuatbui.edu.vn/wp-content/uploads/2017/03/baoanninhthudo1.png"
						alt="">
					</a>
				</div>
				<c:forEach items="${dm3}" var="book">
					<div class="col-md-2 show" id="fl-1">
						<img src="<c:url value='/book/files' />/${ book.image }" alt=""
							width="220.7" height="220.7">
						<div class="text">
							<p class="name">${book.namebook }</p>
							<p class="prices">${book.price}</p>
							<span class="sale">${book.priceold}</span>
							<p class="discount">${book.date}</p>
							<a href="detail.html?code=el5lp"><button type="button"
									class="btn btn-primary animated bounceInDown by-item"
									id="add-item1" style="display: none;">Show item</button></a>
							<button class="btn btn-primary animated bounceInUp by-item cart"
								onclick="getItem('${book.id }','${book.namebook }','${book.price }','${book.priceold }','${book.image }','${book.date }');"
								id="show-item1" style="display: none;">Add item to cart</button>
						</div>
					</div>
				</c:forEach>
			</div>
			<!-- ************** Top điện gia dụng bán chạy ************************* -->
			<div class="slogan">
				<p>Báo công an</p>
			</div>
			<div class="col-md-12 plash-sale">
				<div class="col-md-3">
					<a href="#"> <img
						src="https://lh3.googleusercontent.com/w7oC6hqMh0WBpSmPLvpOdwccZu-KqagWsmPQb1ZEbhN7Jq6DMONttVsfn37rpdjbjg=s360"
						alt="">
					</a>
				</div>
				<c:forEach items="${dm4}" var="book">
					<div class="col-md-2 show" id="fl-1">
						<img src="<c:url value='/book/files' />/${ book.image }" alt=""
							width="220.7" height="220.7">
						<div class="text">
							<p class="name">${book.namebook }</p>
							<p class="prices">${book.price}</p>
							<span class="sale">${book.priceold}</span>
							<p class="discount">${book.date}</p>
							<a href="detail.html?code=el5lp"><button type="button"
									class="btn btn-primary animated bounceInDown by-item"
									id="add-item1" style="display: none;">Show item</button></a>
							<button class="btn btn-primary animated bounceInUp by-item cart"
								onclick="getItem('${book.id }','${book.namebook }','${book.price }','${book.priceold }','${book.image }','${book.date }');"
								id="show-item1" style="display: none;">Add item to cart</button>
						</div>
					</div>
				</c:forEach>
			</div>
			<!-- **************Cho Chàng và Nàng - Giảm giá đồng loạt ************************* -->
			<div class="slogan">
				<p>Báo sức khỏe và đời sống</p>
			</div>
			<div class="col-md-12 plash-sale">
				<div class="col-md-3">
					<a href="#"> <img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbNEWVndLcnzSDofO2NoGwWzo_KzkLFMQNbBfCTI9tEtRJRDhi"
						alt="">
					</a>
				</div>
				<c:forEach items="${dm5}" var="book">
					<div class="col-md-2 show" id="fl-1">
						<img src="<c:url value='/book/files' />/${ book.image }" alt=""
							width="220.7" height="220.7">
						<div class="text">
							<p class="name">${book.namebook }</p>
							<p class="prices">${book.price}</p>
							<span class="sale">${book.priceold}</span>
							<p class="discount">${book.date}</p>
							<a href="detail.html?code=el5lp"><button type="button"
									class="btn btn-primary animated bounceInDown by-item"
									id="add-item1" style="display: none;">Show item</button></a>
							<button class="btn btn-primary animated bounceInUp by-item cart"
								onclick="getItem('${book.id }','${book.namebook }','${book.price }','${book.priceold }','${book.image }','${book.date }');"
								id="show-item1" style="display: none;">Add item to cart</button>
						</div>
					</div>
				</c:forEach>
			</div>
			<!-- ************** Tiện hơn cả chợ - Top 400 nhu yếu phẩm************************* -->
			<div class="slogan">
				<p>Báo lao động</p>
			</div>
			<div class="col-md-12 plash-sale">
				<div class="col-md-3">
					<a href="#"> <img
						src="https://lh3.googleusercontent.com/M1-qZYS7eL2xR0TWxbn6yi1_vemClGqjIM2C-XkVmUpTZ3hbu8_qoG_Hkr2BRWRz9Q=w300"
						alt="">
					</a>
				</div>
				<c:forEach items="${dm6}" var="book">
					<div class="col-md-2 show" id="fl-1">
						<img src="<c:url value='/book/files' />/${ book.image }" alt=""
							width="220.7" height="220.7">
						<div class="text">
							<p class="name">${book.namebook }</p>
							<p class="prices">${book.price}</p>
							<span class="sale">${book.priceold}</span>
							<p class="discount">${book.date}</p>
							<a href="detail.html?code=el5lp"><button type="button"
									class="btn btn-primary animated bounceInDown by-item"
									id="add-item1" style="display: none;">Show item</button></a>
							<button class="btn btn-primary animated bounceInUp by-item cart"
								onclick="getItem('${book.id }','${book.namebook }','${book.price }','${book.priceold }','${book.image }','${book.date }');"
								id="show-item1" style="display: none;">Add item to cart</button>
						</div>
					</div>
				</c:forEach>
			</div>
			<!-- ************** Top deal bán chạy - Giá cực tốt ************************* -->
			<div class="slogan">
				<p>Báo tài chính</p>
			</div>
			<div class="col-md-12 plash-sale">
				<div class="col-md-3">
					<a href="#"> <img
						src="https://bizweb.dktcdn.net/100/112/377/products/fe339c86-59a6-465d-bdef-0feed78d352e.png?v=1496042448467"
						alt="">
					</a>
				</div>
				<c:forEach items="${dm7}" var="book">
					<div class="col-md-2 show" id="fl-1">
						<img src="<c:url value='/book/files' />/${ book.image }" alt=""
							width="220.7" height="220.7">
						<div class="text">
							<p class="name">${book.namebook }</p>
							<p class="prices">${book.price}</p>
							<span class="sale">${book.priceold}</span>
							<p class="discount">${book.date}</p>
							<a href="detail.html?code=el5lp"><button type="button"
									class="btn btn-primary animated bounceInDown by-item"
									id="add-item1" style="display: none;">Show item</button></a>
							<button class="btn btn-primary animated bounceInUp by-item cart"
								onclick="getItem('${book.id }','${book.namebook }','${book.price }','${book.priceold }','${book.image }','${book.date }');"
								id="show-item1" style="display: none;">Add item to cart</button>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="footer-end">
		<div class="container">
			<div class="col-md-6">
				<div class="payment">
					<div class="text">
						<h3>CÁCH THỨC THAH TOÁN</h3>
					</div>
					<div class="icon">
						<i class="fa fa-cc-visa" aria-hidden="true"></i> <i
							class="fa fa-cc-mastercard" aria-hidden="true"></i> <i
							class="fa fa-cc-jcb" aria-hidden="true"></i> <i
							class="fa fa-cc-paypal" aria-hidden="true"></i> <i
							class="fa fa-cc-discover" aria-hidden="true"></i> <i
							class="fa fa-cc-stripe" aria-hidden="true"></i>
					</div>
					<div class="services">
						<img
							src="http://www.nuochoaonline.vn/upload/images/hinh-thuc-thanh-toan.jpg">
					</div>
				</div>
			</div>
			<div class="col-md-3 logo2">
				<div class="text">
					<h3>DICH VỤ GIAO HÀNG</h3>
				</div>
				<div class="item">
					<img src="http://vn-live-02.slatic.net/cms/icons/ghn.jpg" alt="">
				</div>
				<div class="item">
					<img src="http://vn-live-02.slatic.net/cms/icons/lex_logo.png"
						alt="">
				</div>
				<div class="item active">
					<img
						src="http://vn-live-01.slatic.net/cms/images/logo-ninjavan.png"
						alt="">
				</div>
				<div class="item">
					<img src="http://vn-live-02.slatic.net/cms/images/logo-ghtk.png"
						alt="">
				</div>
				<div class="item active2">
					<img src="http://vn-live-02.slatic.net/cms/images/logo-GNN.png"
						alt="">
				</div>
				<div class="item active3">
					<img src="http://vn-live-01.slatic.net/cms/images/logo-DHL-1.png"
						alt="">
				</div>
			</div>
			<div class="col-md-3 logo">
				<div class="text">
					<h3>CHỨNG NHẬN</h3>
				</div>
				<div class="item">
					<div class="icon1">
						<img src="http://vn-live-03.slatic.net/cms/seal_80_mar2016.png">
					</div>
					<div class="icon2 apply">
						<img src="http://vn-live-02.slatic.net/cms/2016/registered.png">
					</div>
					<div class="icon3 apply">
						<img src="http://vn-live-01.slatic.net/cms/2016/announced.png">
					</div>
					<div class="icon4 apply">
						<img src="http://vn-live-02.slatic.net/cms/2016/registered.png">
					</div>
				</div>
			</div>
		</div>
		<div class="end">
			<div class="container">
				<div class="col-md-3 infomation">
					<h1>LAZADA - KÊNH MUA SẮM TRỰC TUYẾN HÀNG ĐẦU VIỆT NAM!</h1>
					<p>Mua hàng trực tuyến (mua hàng online) mang lại sự tiện lợi,
						lựa chọn đa dạng hơn và các dịch vụ tốt hơn cho người tiêu dùng,
						thế nhưng người tiêu dùng Việt Nam vẫn chưa tận hưởng được những
						tiện ích đó. Chính vì vậy Lazada Việt Nam được triển khai với mong
						muốn trở thành trung tâm mua sắm trực tuyến số 1 tại Việt Nam, nơi
						bạn có thể chọn lựa mọi thứ, từ các mặt hàng điện tử như laptop,
						điện thoại di động giá rẻ, thiết bị gia dụng như máy lạnh, máy lọc
						không khí, máy hút bụi mini gia đình, nội thất phòng ngủ… Chúng
						tôi có tất cả!</p>
					<p>Tại Lazada.vn bạn có thể mua đồ điện tử giá rẻ, cũng như các
						loại mặt hàng khác với rất nhiều các chương trình khuyến mãi hàng
						tháng. Ngoài ra bạn cũng có thể tham gia</p>
				</div>
				<div class="col-md-3 infomation">
					<p>bán hàng trực tuyến thông qua hệ thống marketplace của
						Lazada với rất nhiều hỗ trợ và dịch vụ hấp dẫn. Bây giờ bạn có thể
						trải nghiệm mua hàng online thỏa thích mà Lazada mang lại chỉ với
						1 click chuột. Dù bạn là một nhà quản lý bận rộn với công việc hay
						là người nội trợ với danh sách dài việc phải làm, chắc chắn bạn
						cũng sẽ yêu thích trải nghiệm mua hàng tại Lazada Việt Nam - mua
						hàng trực tuyến dễ dàng hơn, thuận tiện hơn và tiết kiệm thời
						gian.</p>
					<p>Bạn muốn bán hàng trực tuyến online trên Lazada? Hãy đăng ký
						tại đây: Lazada Marketplace</p>
					<h3>SẢN PHẨM MỚI</h3>
					<p>iPhone 6s, Samsung Galaxy S7, Samsung Galaxy S7 Edge,
						Infinix Zero 3, Laptop Acer Predator, Asus Vivo E200, iPhone 7</p>
				</div>
				<div class="col-md-3 infomation">
					<h3>SẢN PHẨM NỔI BẬT</h3>
					<h4>ĐIỆN THOẠI & MÁY TÍNH BẢNG</h4>
					<p>Nokia, Samsung, Sony, Blackberry, Asus, HTC, Oppo, Lenovo,
						Alcatel, iPhone 4s, iPhone 5s, iPhone 6, Apple iPhone 6s, Máy tính
						bảng, iPad mini, máy tính bảng Samsung, máy tính bảng Acer, máy
						tính bảng Lenovo...</p>
					<h4>MÁY VI TÍNH & LAPTOP</h4>
					<p>Laptop Dell, Laptop Asus, Macbook, Laptop Sony, Laptop
						Lenovo, Laptop Acer</p>
					<h4>TIVI</h4>
					<p>Tivi Sony, Tivi LG, Tivi Toshiba, Tivi Samsung, Tivi
						Panasonic, Tivi Sharp, Tivi LCD, Tivi LCD Samsung, Tivi LCD LG,
						Tivi LCD Sharp, Tivi Led, Tivi Led Sony, Tivi Led Samsung...</p>
					<h4>TỦ LẠNH</h4>
					<p>tủ lạnh mini, Tủ lạnh Sanyo, Tủ lạnh Electrolux, Tủ lạnh
						Panasonic, Tủ lạnh Toshiba, Tủ lạnh Samsung...</p>
					<h4>CHĂM SÓC SỨC KHỎE & LÀM ĐẸP</h4>
					<p>Bourjois, L'oreal, The Body Shop, Maybeline, Shiseido...</p>
				</div>
				<div class="col-md-3 infomation">
					<h4>MÁY ẢNH</h4>
					<p>Máy ảnh Canon, Máy ảnh Nikon, Máy ảnh Sony, Máy ảnh
						Fujifilm, Máy ảnh siêu zoom, Máy ảnh DSLR, Máy quay phim...</p>
					<h4>MÁY LẠNH</h4>
					<p>Máy lạnh Daikin, Máy lạnh Electrolux, Máy lạnh LG, Máy lạnh
						Mitsubishi, Máy lạnh Panasonic, Máy lạnh Samsung, Máy lạnh Sharp,
						Máy lạnh Toshiba, Máy lạnh Gree...</p>
					<h4>MÁY GIẶT</h4>
					<p>Máy giặt Electrolux, Máy giặt Sanyo, Máy giặt Toshiba, Máy
						giặt Sanyo, Máy giặt Hitachi, Máy giặt Panasonic, Máy giặt
						Samsung, Máy giặt LG...</p>
					<h4>LÒ VI SÓNG</h4>
					<p>Lò vi sóng Sharp, Lò vi sóng Electrolux, Lò vi sóng
						Bluestone, Lò vi sóng Samsung, Lò vi sóng Sanyo, Lò vi sóng
						Goldsun, Lò vi sóng Panasonic...</p>
					<h4>Ô TÔ, XE MÁY & PHỤ KIỆN</h4>
					<p>Xe máy Honda, Xe máy Yamaha, Xe máy Piaggio, Phim cách
						nhiệt 3M chính hãng...</p>
				</div>
			</div>
		</div>
		<div class="contact">
			<div class="container">
				<h3>Kết nối với chúng tôi</h3>
				<i class="fa fa-facebook" aria-hidden="true"></i> <i
					class="fa fa-twitter" aria-hidden="true"></i> <i
					class="fa fa-linkedin-square" aria-hidden="true"></i> <i
					class="fa fa-google-plus" aria-hidden="true"></i> <i
					class="fa fa-youtube" aria-hidden="true"></i> <i
					class="fa fa-pinterest-p" aria-hidden="true"></i>
			</div>
		</div>
	</div>
	</div>
	</div>
	<div class="mobile">
		<div class="container">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">

					<div class="item active">
						<img
							src="http://vn-live-02.slatic.net/cms/2017/08-Aug/720x389_mua_sam_tren_app.jpg"
							alt="Los Angeles">
					</div>

					<div class="item">
						<img
							src="http://vn-live-01.slatic.net/cms/2017/06-Jun/720x389-khuyen-mai.jpg"
							alt="Chicago">
					</div>

					<div class="item">
						<img
							src="http://vn-live-02.slatic.net/cms/2017/04-Apr/M-site-Stack-Banner.jpg"
							alt="New York">
					</div>
					<div class="item">
						<img
							src="http://vn-live-01.slatic.net/cms/2017/08-Aug/mobile_720x389_subsidy.jpg"
							alt="New York">
					</div>
					<div class="item">
						<img
							src="http://vn-live-03.slatic.net/cms/2017/05-May/720x389_hang_moi_180517.jpg"
							alt="New York">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
			<div class="col-md-12 banner1">
				<img
					src="https://vn-live.slatic.net/cms/2017/08-Aug/official%20stores/M-site_ofs.jpg">
			</div>
			<div class="col-md-12 banner2 ">
				<img
					src="https://vn-live.slatic.net/cms/2017/08-Aug/Msite_TB_topup_5.jpg">
			</div>
			<div class="col-md-12 banner3 ">
				<img
					src="http://vn-live-01.slatic.net/cms/2017/07-July/Stack-Banner-app-280717.jpg">
			</div>
			<div class="col-md-12 slider1">
				<div class="container">
					<div class="footer1">
						<span class="title-text"> Những sản phẩm bán chạy </span> <a
							href="#"><span class="title-more">Xem tất cả <i
								class="fa fa-angle-right" aria-hidden="true"></i></span></a>
					</div>
					<div class="menu1">
						<div class="container">
							<div class="col-md-3 item-flash">
								<div class="img">
									<img
										src="https://vn-live-01.slatic.net/p/4/image-1706662-0fb2e3e32bf8a84756509e3cb2ccee03-catalog_233.jpg"
										alt="">
								</div>
								<div class="text-item active">
									<a href=""><p>Combo Pediasure tiết kiệm gồm 2 lon
											Pediasure B/A 850G + 2chaiPediasure BA 3+237ml</p></a>

								</div>
								<div class="text-price">
									<p>1.099.000 VND</p>
								</div>
							</div>
							<div class="col-md-3 item-flash">
								<div class="img">
									<img
										src="https://vn-live-01.slatic.net/p/11/image-4762123-33d3562e79caf572984caa73581715f3-catalog_233.jpg"
										alt="">
								</div>
								<div class="text-item active">
									<a href=""><p>Thùng 24 lon bia Tiger 330ml</p></a>
								</div>
								<div class="text-price">
									<p>297.500 VND</p>
								</div>
							</div>
							<div class="col-md-3 item-flash">
								<div class="img">
									<img
										src="https://vn-live-01.slatic.net/p/7/image-2462394-affe2088a3db5b9440e2b1a590b7a4e2-catalog_233.jpg"
										alt="">
								</div>
								<div class="text-item active">
									<a href=""><p>Bộ 3 áo thun nam body cổ tròn ( Đen,
											trắng, xám )</p></a>
								</div>
								<div class="text-price">
									<p>69.000 VND</p>
								</div>
							</div>
							<div class="col-md-3 item-flash">
								<div class="img">
									<img
										src="https://vn-live-01.slatic.net/p/4/image-7715035-da1c6106791fd52222304b606d3670de-catalog_233.jpg"
										alt="">
								</div>
								<div class="text-item active">
									<a href=""><p>Đồ Chơi Giúp Xả Stress Fidget Spinner 3
											bạc đạn Trắng (Xanh Lá) + Tặng vỏ của Spinner để thay đổi màu</p></a>
								</div>
								<div class="text-price">
									<p>14.000 VND</p>
								</div>
							</div>
						</div>
					</div>
					<div class="menu2">
						<div class="item" id="item-active">
							<p>
								Tất cả danh mục <i class="fa fa-angle-right"
									onclick="showitem()" aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Thể thao <i class="fa fa-angle-right" aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Voucher & Du lịch <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Truyên thông, Âm nhạc & Sách <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Háo học <i class="fa fa-angle-right" aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Ô tô, Xe máy & Thiết bị định vị <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Thời trang & Du lịch <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Đồ da dụng <i class="fa fa-angle-right" aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Máy bi tính & Laptop <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Điện thoại & Máy tính bảng <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								TV, Video, Âm thanh, Game & Thiết bị đeo công nghệ <i
									class="fa fa-angle-right" aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Máy ảnh & Máy quay phim <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Chăm sóc sữa khỏe & Làm đẹp <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Khuyễn mãi <i class="fa fa-angle-right" aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Túi sách & Vali túi du lịch <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Bách hóa Online <i class="fa fa-angle-right" aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Đồng hồ, Mắt kính, Trang sức <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Đồ chơi & Trò chơi <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Trẻ sơ sinh & Trẻ nhỏ <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Chăm sóc thú cưng <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Giường ngủ & Nhà tắm <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Đồ nội thất & Trang trí <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Công cụ, Đồ thủ công & Ngoài trời <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Dụng cụ vệ sinh <i class="fa fa-angle-right" aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Bếp & Phòng ăn <i class="fa fa-angle-right" aria-hidden="true"></i>
							</p>
						</div>
						<div class="item">
							<p>
								Văn phòng phẩm và nghề thủ công <i class="fa fa-angle-right"
									aria-hidden="true"></i>
							</p>
						</div>
					</div>
					<div class="menu1">
						<div class="container"></div>
						<div class="menu1">
							<div class="container"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="container-fluid">
			<div class="services">
				<div class="col-md-12">
					<div class="col-md-3">
						<a href="#">
							<p>
								<i class="fa fa-usd" aria-hidden="true"></i>
							</p>
							<p>Thanh toán</p>
						</a>
					</div>
					<div class="col-md-3">
						<a href="#">
							<p>
								<i class="fa fa-bus" aria-hidden="true"></i>
							</p>
							<p>Giao hàng toàn quốc</p>
						</a>
					</div>
					<div class="col-md-3 last">
						<a href="#">
							<p>
								<i class="fa fa-exchange" aria-hidden="true"></i>
							</p>
							<p>Miễn phí đổi trả</p>
						</a>
					</div>
				</div>
				<div class="clearn"></div>
			</div>
			<div class="infomation">
				<p>CÔNG TY TNHH RECESS</p>
				<p>Giấy CNĐKDN: 0308808576 - Ngày cấp: 06/5/2009, được sửa đổi
					lần thứ 14 ngày 23/01/2015. Cơ quan cấp: Phòng Đăng ký kinh doanh
					Sở Kế hoạch và Đầu tư TPHCM.</p>
				<p>Địa chỉ: Tầng 19, Sài Gòn Center, 65 Lê Lợi, Phường Bến Nghé,
					Quận 1, TP. Hồ Chí Minh.</p>
			</div>
			<div class="rules">
				<a href="#">
					<p>Chính sách bảo mật | Điều khoản | Liên hệ chúng tôi | Bán
						hàng cùng Lazada</p>
				</a>
			</div>
		</div>
	</div>
	<div class="col-md-12 listsearch">
		
	</div>
	<script type="text/javascript"
		src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/perfect-scrollbar.jquery.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/perfect-scrollbar.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/lazada.js" />"></script>
	<script>
	$(".listsearch").css("display", "none");
	function loadItemSearch() {
	    var name = document.getElementById('search').value;

	    $.ajax({
	        type: "GET",
	        contentType: "application/json",
	        url: "${book}book/search/",
	        data: {
	            name: name
	        },
	        dataType: 'json',
	        timeout: 100000,
	        success: function (data) {
	            console.log("SUCCESS: ", data);
	            if (data != null) {
	                var listsearch = data;
	                console.log(listsearch.length);
	                $('.listsearch').html("");
	            	$(".listsearch").css("display", "block");
	                for (var i = 0; i < listsearch.length; i++) {
	                    var text = '<div class="show-search" id="fl-1">'
	                        +'<img src="/BanBao/food/files/' + listsearch[i].image
							+ '" alt="" width="220.7" height="220.7"><div class="text">'
	                        + '<p class="name">'+listsearch[i].namebook+'</p>'
	                        + '<p class="prices">'+listsearch[i].price+'</p>'
	                        + '<span class="sale">'+listsearch[i].priceold+'</span>'
	                        + '<p class="discount">'+listsearch[i].date+'</p>'
	                        + '<button type="button" class="btn btn-primary animated bounceInDown by-item" id="add-item1" >Show item</button>'
	                        + '<button type="button" class="btn btn-primary animated bounceInUp by-item cart" id="show-item1" >Add item to cart</button></div></div>';

	                    $('.listsearch').append(text);
	                }
	                if(name == ""){
	                	 $('.listsearch').html("");
	                	 $(".listsearch").css("display", "none");
	                }
	            }
	        },
	        error: function (e) {
	            console.log("ERROR: ", e);
	        }
	    });
	}
	</script>
</body>
</html>