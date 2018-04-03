<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css" />">

<link rel="stylesheet" href="<c:url value="/resources/css/app.css" />">

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="well lead">User Registration Form</div>
		<form:form method="POST" modelAttribute="phim" class="form-horizontal">
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="name"> Name</label>
					<div class="col-md-7">
						<c:choose>
							<c:when test="${edit}">
								<form:input type="text" path="name" id="name"
									class="form-control input-sm" disabled="true" />
							</c:when>
							<c:otherwise>
								<form:input type="text" path="name" id="name"
									class="form-control input-sm" />
								<div class="has-error">
									<form:errors path="name" class="help-inline" />
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="image">image</label>
					<div class="col-md-7">
						<form:input type="text" path="image" id="image"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="image" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="time">Time</label>
					<div class="col-md-7">
						<form:input type="text" path="time" id="time"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="time" class="help-inline" />
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-actions floatRight">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Update"
								class="btn btn-primary btn-sm" /> or <a
								href="<c:url value='/phim/list' />">Cancel</a>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Register"
								class="btn btn-primary btn-sm" /> or <a
								href="<c:url value='/phim/list' />">Cancel</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</form:form>
	</div>
	<script type="text/javascript"
		src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

	<script type="text/javascript"
		src="<c:url value="/resources/js/app.js" />"></script>
</body>
</html>