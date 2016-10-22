<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>

</head>
<body background="resources/images/footer.png">

	<div style="margin: 15px; padding: 15px;">

		<h4 style="text-align: center; font-family: verdana; color: #FFFFFF">Enter
			Your Credentials</h4>
		<br>
		
		
<!-- <c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		
		<form name='loginForm'
			action="<c:url value='/j_spring_security_check' />" method='POST'> -->

		<c:url var="action" value="/login_to_enter"></c:url>
		<form:form name="myForm" action="${action}" method="post"
			onsubmit="submitFunction()">

			<table align="center">
				<tr>
					<td><input type="text" name="userName" autofocus required
						id="userName" placeholder="Enter your Name"
						title="Enter a valid user name" ></td>
				</tr>

				<tr>
					<td><input type="password" name="pwd" autofocus required
						id="pwd" placeholder="Enter passWord"
						title="Enter a secure password"></td>
				</tr>

				<tr>
					<td align="center"><input class="btn btn-warning"
						type="submit" value="Log In"></td>
				</tr>
			</table>

<!--<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />  -->
		</form:form>
</body>

</html>

