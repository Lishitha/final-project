
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Audiowide'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/animate.css">
<link rel="stylesheet" href="../resources/css/simple-line-icons.css">
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/style.css">
<link rel="stylesheet" href="../resources/rs-plugin/css/settings.css">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="../resources/css/menu.css" />">
<link rel="stylesheet" href="<c:url value="../resources/css/main.css" />">
<title>Insert title here</title>
<!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700'
	rel='stylesheet' type='text/css'>
<!-- font awesome -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body background="../resources/images/footer.png"
	style="background-color: gray;">


	
	<div style="margin: 15px; padding: 15px;">

		<h4 style="text-align: center; font-family: verdana; color: #FFFFFF">Create
			Your Account</h4>
		<br>

		<c:url var="action" value="/register"></c:url>
		<!--  to use the form to submit the data - modelAttribute  -->
		<form:form action="${action}" method="post" modelAttribute="user">

			<table align="center">
				<tr>
					<td><input type="text" name="id" autofocus required id="id"
						placeholder="Id" title="Enter Id"></td>
					<br>
				</tr>

				<tr>
					<td><input type="text" name="name" autofocus required
						id="userName" placeholder="Enter your Name"
						title="Enter a valid user name"></td>
				</tr>

				<tr>
					<td><input type="password" name="password" autofocus required
						id="pwd" placeholder="Enter passWord"
						title="Enter a secure password"></td>
				</tr>


				<tr>
					<td><input type="number" name="contactNumber" autofocus
						required id="moblieNumber" placeholder="Mobile Number"
						title="Enter Your Mobile Number"></td>
				</tr>

				<tr>
					<td><input type="email" name="mailID" autofocus required
						id="userEmail" placeholder="E-Mail Id"
						title="Enter a Your Mail Id"></td>
				</tr>

				<tr>
					<td><input type="text" name="address" autofocus required
						id="userAddress" placeholder="Address" title="Enter Your Address">
					</td>
				</tr>

				<tr>
					<td align="center"><input class="btn btn-warning"
						type="submit" value="Sign Up"></td>
					<td><input type="reset" value="<spring:message text="Reset"/>" />
				</tr>



			</table>
		</form:form>
	</div>


	<script type="text/javascript" src="files/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="files/js/bootstrap.min.js"></script>
	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
	<script src="files/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script src="files/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

	<script type="text/javascript" src="files/js/plugins.js"></script>
	<script type="text/javascript" src="files/js/custom.js"></script>



	
</body>
</html>



