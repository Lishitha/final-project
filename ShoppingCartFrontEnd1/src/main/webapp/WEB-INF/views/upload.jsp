<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload File</title>
</head>
<body>
<form method="POST" action="uploadFile" enctype="multipart/form-data">
		File to upload: <input type="file" name="file">
 
		Name: <input type="text" name="name">
 
 
		<input type="submit" value="Upload"> Press here to upload the file!
	</form>	
</body>
</html>