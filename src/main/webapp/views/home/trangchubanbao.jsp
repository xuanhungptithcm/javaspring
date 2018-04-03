<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
					<input type="text" class="form-control"
						placeholder="Tìm kiếm sản phẩm, thương hiệu hay nhãn hàng mong muốn ...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</span>
				</div>
			</div>
			<div class="col-md-1 col-1 col-sm-1 " id="iconshopping">
				<a href="cart.html"><i style="color: #fff"
					class="fa fa-shopping-cart" aria-hidden="true"></i></a>
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
					<li onmouseover="next2()"  class="sale">mã giảm giá
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
					<li class="end"><img src="./images/buttonlazada.PNG"></li>

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
					<a
						href="http://www.lazada.vn/iphone-giam-gia-sau/?spm=a2o4n.home.sku-feed-slider-with-banner_452505.1.PvlJSQ">
						<img
						src="https://vn-live.slatic.net/original/a4a141187876f906dfd872a897112f6e.jpg"
						alt="">
					</a>
				</div>
				<div class="col-md-1 left" onclick="left()">
					<i class="fa fa-angle-left" aria-hidden="true"></i>
				</div>
				<c:forEach items="dm1" var="book">
					<div class="col-md-2 show" id="fl-1">
						<img
							src="<c:url value='/book/files' />/${ book.image }"
							alt="">
						<div class="text">
							<p class="name">${book.namebook }</p>
							<p class="prices">${book.price}</p>
							<span class="sale">${book.priceold}</span><p class="discount">
								${book.date}</p><a href="detail.html?code=el5lp"><button type="button"
									class="btn btn-primary animated bounceInDown by-item"
									id="add-item1" style="display: none;">Show item</button></a>
							<button class="btn btn-primary animated bounceInUp by-item cart"
								onclick="getItem('el5lp');" id="show-item1"
								style="display: none;">Add item to cart</button>
						</div>
					</div>
				</c:forEach>
				<div class="col-md-1 right" onclick="right()">
					<i class="fa fa-angle-right" aria-hidden="true"></i>
				</div>
			</div>
			<!-- **************Không thể rẻ hơn ************************** -->
			<div class="slogan">
				<p>Không thể rẻ hơn - Giảm đến 50%</p>
			</div>
			<div class="col-md-12 plash-sale" id="special">

				<div class="col-md-1 left">
					<i class="fa fa-angle-left" aria-hidden="true" onclick="left2()"></i>
				</div>
				<div class="col-md-2 show active" id="sl-1"></div>
				<div class="col-md-2 show" id="sl-2"></div>
				<div class="col-md-2 show" id="sl-3"></div>
				<div class="col-md-2 show end" id="sl-4">
					<!-- https://api.myjson.com/bins/11hw41 -->
				</div>
				<div class="col-md-3">
					<a
						href="http://www.lazada.vn/khong-the-re-hon/?spm=a2o4n.home.sku-feed-slider-with-banner_434186.46.PvlJSQ">
						<img
						src="https://vn-live.slatic.net/original/bc55ca348b4ef38589e27ccb6033d10a.jpg"
						alt="">
					</a>
				</div>
				<div class="col-md-1 right">
					<i class="fa fa-angle-right" aria-hidden="true" onclick="right2()"></i>
				</div>
			</div>
			<!-- ************** Sennheiser - Tai nghe bluetooth in-ear ************************** -->
			<div class="slogan">
				<p>Sennheiser - Tai nghe bluetooth in-ear</p>
			</div>
			<div class="col-md-12 plash-sale">
				<div class="col-md-3">
					<a
						href="http://www.lazada.vn/sennheiser-official-store/?spm=a2o4n.home.sku-feed-slider-with-banner_437263.46.PvlJSQ"><img
						src="https://vn-live.slatic.net/original/4fa9a279e348cea3e3f4243f8a08bab0.jpg"
						alt=""></a>
				</div>
				<div class="col-md-1 left" onclick="left3()">
					<i class="fa fa-angle-left" aria-hidden="true"></i>
				</div>
				<div class="col-md-2 show" id="tl-1"></div>
				<div class="col-md-2 show" id="tl-2"></div>
				<div class="col-md-2 show" id="tl-3"></div>
				<div class="col-md-2 show" id="tl-4"></div>
				<div class="col-md-1 right" onclick="right3()">
					<i class="fa fa-angle-right" aria-hidden="true"></i>
				</div>
			</div>
			<!-- ************** ASUS - Laptop giảm đến 35% ************************* -->
			<div class="slogan">
				<p>ASUS - Laptop giảm đến 35%</p>
			</div>
			<div class="col-md-12 plash-sale" id="special">

				<div class="col-md-1 left">
					<i class="fa fa-angle-left" aria-hidden="true" onclick="left4()"></i>
				</div>
				<div class="col-md-2 active show" id="lt-1"></div>
				<div class="col-md-2 show" id="lt-2"></div>
				<div class="col-md-2 show" id="lt-3"></div>
				<div class="col-md-2 end show" id="lt-4">
					<!-- https://api.myjson.com/bins/11hw41 -->
				</div>
				<div class="col-md-3 laptop">
					<a
						href="http://www.lazada.vn/may-vi-tinh-laptop/?spm=a2o4n.category-020100000000.0.0.u1nvRO">
						<img
						src="https://vn-live.slatic.net/original/2006e62ec967e635732ce8d21755f46e.jpg"
						alt="">
					</a>
				</div>
				<div class="col-md-1 right">
					<i class="fa fa-angle-right" aria-hidden="true" onclick="right4()"></i>
				</div>
			</div>
			<!-- ************** Top điện gia dụng bán chạy ************************* -->
			<div class="slogan">
				<p>Top điện gia dụng bán chạy</p>
			</div>
			<div class="col-md-12 plash-sale">
				<div class="col-md-3">
					<a
						href="http://www.lazada.vn/dien-gia-dung-chinh-hang/?spm=a2o4n.home.sku-feed-slider-with-banner_452768.31.PvlJSQ"><img
						src="https://vn-live.slatic.net/original/8fb368955e9db93f81a6908bef1414cd.jpg"
						alt=""></a>
				</div>
				<div class="col-md-1 left" onclick="left5()">
					<i class="fa fa-angle-left" aria-hidden="true"></i>
				</div>
				<div class="col-md-2 show" id="dh-1"></div>
				<div class="col-md-2 show" id="dh-2"></div>
				<div class="col-md-2 show" id="dh-3"></div>
				<div class="col-md-2 show" id="dh-4"></div>
				<div class="col-md-1 right" onclick="right5()">
					<i class="fa fa-angle-right" aria-hidden="true"></i>
				</div>
			</div>
			<!-- **************Cho Chàng và Nàng - Giảm giá đồng loạt ************************* -->
			<div class="slogan">
				<p>Cho Chàng và Nàng - Giảm giá đồng loạt</p>
			</div>
			<div class="col-md-12 plash-sale" id="special">

				<div class="col-md-1 left">
					<i class="fa fa-angle-left" aria-hidden="true" onclick="left6()"></i>
				</div>
				<div class="col-md-2 active" id="tt-1"></div>
				<div class="col-md-2 show" id="tt-2"></div>
				<div class="col-md-2 show" id="tt-3"></div>
				<div class="col-md-2 end show" id="tt-4"></div>
				<div class="col-md-3">
					<a
						href="http://www.lazada.vn/khong-the-re-hon-hang-thoi-trang-ban-chay/?spm=a2o4n.home.sku-feed-slider-with-banner_453968.1.PvlJSQ">
						<img
						src="https://vn-live.slatic.net/original/fef80c9d802552150d7fcd897c9a050a.jpg"
						alt="">
					</a>
				</div>
				<div class="col-md-1 right">
					<i class="fa fa-angle-right" aria-hidden="true" onclick="right6()"></i>
				</div>
			</div>
			<!-- ************** Tiện hơn cả chợ - Top 400 nhu yếu phẩm************************* -->
			<div class="slogan">
				<p>Tiện hơn cả chợ - Top 400 nhu yếu phẩm</p>
			</div>
			<div class="col-md-12 plash-sale">
				<div class="col-md-3">
					<a
						href="http://www.lazada.vn/bach-hoa-deal-tot/?spm=a2o4n.home.sku-feed-slider-with-banner_433223.31.PvlJSQ"><img
						src="https://vn-live.slatic.net/original/745f65e3970815cda2e1cbd00be1fb8b.jpg"
						alt=""></a>
				</div>
				<div class="col-md-1 left" onclick="left7()">
					<i class="fa fa-angle-left" aria-hidden="true"></i>
				</div>
				<div class="col-md-2 show" id="top-1"></div>
				<div class="col-md-2 show" id="top-2"></div>
				<div class="col-md-2 show" id="top-3"></div>
				<div class="col-md-2 show" id="top-4"></div>
				<div class="col-md-1 right" onclick="right7()">
					<i class="fa fa-angle-right" aria-hidden="true"></i>
				</div>
			</div>
			<!-- ************** Top deal bán chạy - Giá cực tốt ************************* -->
			<div class="slogan">
				<p>Top deal bán chạy - Giá cực tốt</p>
			</div>
			<div class="col-md-12 plash-sale" id="special">

				<div class="col-md-1 left">
					<i class="fa fa-angle-left" aria-hidden="true" onclick="left8()"></i>
				</div>
				<div class="col-md-2 active show" id="top-deal-1"></div>
				<div class="col-md-2 show" id="top-deal-2"></div>
				<div class="col-md-2 show" id="top-deal-3"></div>
				<div class="col-md-2 end show" id="top-deal-4"></div>
				<div class="col-md-3">
					<a
						href="http://www.lazada.vn/deal-gia-soc/?spm=a2o4n.home.sku-feed-slider-with-banner_438483.1.PvlJSQ#vn156i">
						<img
						src="https://vn-live.slatic.net/original/f7474f10c60f0b28bbe7f7986cbe481d.jpg"
						alt="">
					</a>
				</div>
				<div class="col-md-1 right">
					<i class="fa fa-angle-right" aria-hidden="true" onclick="right8()"></i>
				</div>
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
	<script type="text/javascript"
		src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.js"
		integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/lazada.js" />"></script>
</body>
</html>