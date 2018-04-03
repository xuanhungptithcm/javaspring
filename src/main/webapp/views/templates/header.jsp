<%@page import="com.green.example.util.SecurityUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<style>
<!--
strong{
	color:#fff;
	font-size: 20px;
}
-->
</style>
<div class="header">
	<sec:authorize access="isAnonymous()">
		<span class="floatRight"><a href="<c:url value="/login" />">Login</a></span>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<strong id="name">Welcome <%=SecurityUtil.getPrincipal()%></strong>
		<span class="floatRight"><a href="<c:url value="/logout" />">Logout</a></span>
	</sec:authorize>
</div>