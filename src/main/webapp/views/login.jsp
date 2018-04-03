<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" href="<c:url value="/resources/css/app.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/login.css" />">
<link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">

</head>
<body>
<main>
    <h1>Welcome to Food-Company</h1>
	<c:url var="loginUrl" value="/login" />
	<form class="flp" action="${loginUrl}" method="post">
		<c:if test="${param.error != null}">
			<div class="alert alert-danger">
				<p>Invalid username and password.</p>
			</div>
		</c:if>
		<c:if test="${param.logout != null}">
			<div class="alert alert-success">
				<p>You have been logged out successfully.</p>
			</div>
		</c:if>
		<div>
			<input name="username" type="text" id="username" required /> <label
				for="username">UserName</label>

		</div>
		<div class="clear"></div>
		<div>
			<input name="password" type="password" id="password" required/> <label
				for="password">Password</label>
		</div>
		<div class="clear"></div>
		<div class="remember">
			<input name="remember-me" type="checkbox" id="rememberme" 	/> <p class="checkbox"
			 >Remember Me</p>
		</div>
		<div class="clear"></div>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />

		<div class="form-actions">
			<input type="submit" class="btn btn-block btn-primary btn-default"
				value="Log in">
		</div>
	</form>
	</main>
</body>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery.easing.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

<script type="text/javascript"
	src="<c:url value="/resources/js/app.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/login.js" />"></script>
</html>