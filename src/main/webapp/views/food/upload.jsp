<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<body>
	<h1>Spring MVC file upload example</h1>

	<form:form id="profileForm"
		action="/example/food/upload" method="POST"
		enctype="multipart/form-data">
             ...
            <input type="file" name="file">
             ...
                 <input type="submit" value="Submit" />
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form:form>
</body>
</html>