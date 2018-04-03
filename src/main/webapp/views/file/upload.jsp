<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<body>
	<h1>Spring MVC file upload example</h1>

	<form:form id="profileForm"
		action="/example/file/upload" method="POST"
		enctype="multipart/form-data">
             ...
            <input type="file" name="file">
             ...
                 <input type="submit" value="Submit" />
	</form:form>
</body>
</html>