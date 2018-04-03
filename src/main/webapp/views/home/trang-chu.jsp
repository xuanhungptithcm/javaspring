<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.green.example.util.SecurityUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trang-chu</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/trang-chu.js" />">
	
</script>
<link href='https://fonts.googleapis.com/css?family=Pacifico'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="<c:url value="/resources/css/trang-chu.css" />">
</head>

<body>
	<header> <section class="navbar">
	<div class="wrapper dropdown">
		<div class="brand">
			<a href=""> <img
				src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/logo.png"
				alt="logo">
			</a>
			<button onclick="toggle_visibility('menu_toggle')" id="menu_button">Menu</button>
		</div>
		<nav> <a href="">Home</a> <a href="">Menu</a> <a href="<c:url value="food/Listfood"/>">Pages</a>
		<a href="">Delivery</a> <a href="">News</a> <a href="">Features</a> <jsp:include
			page="../templates/header.jsp"></jsp:include> </nav>
		<nav id="menu_toggle"> <a href="">Home</a> <a href="">Menu</a> <a
			href="">Pages</a> <a href="">Delivery</a> <a href="">News</a> <a
			href="">Features</a> <a href="">Table Booking</a> </nav>
	</div>
	</section>
	<div class="wrapper">
		<section>
		<h1>Foody Love</h1>
		<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem
			accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae
			ab illo inventore veritatis et quasi.</p>
		<button>Click here</button>
		</section>
	</div>
	</header>
	<section class="about">
	<div class="wrapper">
		<section> <img
			src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/about-pic-1.jpg"
			alt=""> <img
			src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/about-pic-1.jpg"
			alt=""> </section>
		<section>
		<h4>About us</h4>
		<h3>WE ARE TASTY</h3>
		<p>Lorem Ipsum is simply dummy text of the printing and
			typesetting industry. Lorem Ipsum has been the industry's standard</p>
		<p>Dummy text ever since the 1500s,when an unknown printer took a
			galley of type and scrambled it to make a type specimen book. It has
			survived not only five centuries, but also the leap into electronic
			typesettingdard dummy text ever since the 1500s,when an unknown
			printer took a galley of type and scrambled it to make a type
			specimen book. It has survived not only five centuries, but also the
			leap into electronic typesetting</p>
		<button>Click here</button>
		</section>
	</div>
	</section>
	<section class="recipes">
	<div class="wrapper">
		<section> <img
			src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/recipies-pic.jpg"
			alt="">
		<div>
			<h4>Special Recipes</h4>
			<h3>Taste of Precious</h3>
			<p>Lorem Ipsum is simply dummy text of the printing and
				typesetting industry. Lorem Ipsum has been the industry's standard</p>
			<p>Dummy text ever since the 1500s,when an unknown printer took a
				galley of type and scrambled it to make a type specimen book. It has
				survived not only five centuries, but also the leap into electronic
				typesettingdard dummy text ever since the 1500s,when an unknown
				printer took a galley of type and scrambled it to make a type
				specimen book. It has survived not only five centuries, but also the
				leap into electronic typesetting</p>
			<button>Click here</button>
		</div>
		</section>
	</div>
	</section>
	<section class="experience">
	<div class="wrapper">
		<h4>Delightful</h4>
		<h3>Experience</h3>
		<section> 
		<c:forEach items="${food}" var="food">
			<div  style=" background-image: url(https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/expirience-pic-2.jpg)">
				<section>
				
				<p>
					${food.name} <br>
				</p>
				<p>${food.price}VND</p>
				<button>Click by</button>
				</section>
			</div>
		</c:forEach>

	</div>
	</section>
	<section class="menu">
	<div class="wrapper">
		<h4>Amazing</h4>
		<h3>Delicious</h3>
		<section> <img
			src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-drink-pic-1.jpg"
			alt="">
		<table>
			<thead>
				<tr>
					<th>Drinks</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
			</tbody>
		</table>
		</section>
		<section> <img
			src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-coures-pic.jpg"
			alt="">
		<table>
			<thead>
				<tr>
					<th>Main course</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
			</tbody>
		</table>
		</section>
		<section> <img
			src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-desert-pic.jpg"
			alt="">
		<table>
			<thead>
				<tr>
					<th>Desserts</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
				<tr>
					<td><img
						src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/menu-list-pic.jpg"
						alt=""> <span>Tuna Roast Source</span></td>
					<td>$24.5</td>
				</tr>
			</tbody>
		</table>
		</section>
	</div>
	</section>
	<section class="mobile">
	<div class="wrapper">
		<img
			src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/mobile-phone.png"
			alt="">
		<section>
		<h4>Happy to Announce</h4>
		<p>Mobile App</p>
		<p>is Available in every OS platform.</p>
		<div>
			<a href=""> <img
				src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/google-play.png"
				alt="">
			</a> <a href=""> <img
				src="https://bytebucket.org/consatanos/pen-picture/raw/3c0be7f1f1ea380d9165eb09d5c0f1ec921448f2/f-r/img/app-store.png"
				alt="">
			</a>
		</div>
		</section>
	</div>
	</section>
	<footer>
	<div class="wrapper">
		<section>
		<h4>Take it easy with location</h4>
		<div>
			<p>
				112-Legere ancillae vix ne. <br> Te elit putent propriae eum, <br>
				aliquip nominati
			</p>
			<br>
			<p>
				phone: 00 000 000 <br> Email: support@templatemela.com
			</p>
		</div>
		<nav> <a href=""> <i class="fa fa-2x fa-facebook"></i>
		</a> <a href=""> <i class="fa fa-2x fa-google-plus"></i>
		</a> <a href=""> <i class="fa fa-2x fa-twitter"></i>
		</a> <a href=""> <i class="fa fa-2x fa-linkedin"></i>
		</a> <a href=""> <i class="fa fa-2x fa-pinterest-p"></i>
		</a> <a href=""> <i class="fa fa-2x fa-youtube-square"></i>
		</a> <a href=""> <i class="fa fa-2x fa-whatsapp"></i>
		</a> <a href=""> <i class="fa fa-2x fa-instagram"></i>
		</a> </nav> </section>
		<section>
		<h4>Working Hours</h4>
		<div>
			<p>Monday To Friday</p>
			<br>
			<p>
				8:00am to 10:00pm(Breakfast) <br> 11:00am to
				10:00pm(Lunch/Diner)
			</p>
			<br>
			<p>Saturday & Sunday</p>
			<br>
			<p>
				10:00am to 11:00pm(Brunch) <br> 11:00am to
				12:00pm(Lunch/Dinner)
			</p>
		</div>
		</section>
		<section>
		<h4>Feedback form</h4>
		<form action="">
			<div>
				<input type="text" placeholder="Name"> <input type="email"
					placeholder="Email"> <input type="tel" placeholder="Phone">
				<textarea name="message" id="" cols="" rows="" placeholder="Message"></textarea>
			</div>
			<input type="submit">
		</form>
		</section>
	</div>
	<script>

	
	</script>
</body>

</html>