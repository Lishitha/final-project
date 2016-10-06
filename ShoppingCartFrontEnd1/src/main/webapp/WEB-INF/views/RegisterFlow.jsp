
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

<title>register</title>
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

<body background="resources/images/footer.png">
	
<div style="margin: 15px; padding: 15px;">

		<h4 style="text-align: center; font-family: verdana; color: #FFFFFF">Create
			Your Account</h4>
		
		<form:form modelAttribute="user">

			<table align="center">
				<tr>
					<td><form:input type="text" path="id" 
						placeholder="Id" title="Enter Id"/></td>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					
				</tr>

				<tr>
					<td><form:input type="text" path="name" placeholder="Enter your Name"
						title="Enter a valid user name"/></td>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />
				</tr>

				<tr>
					<td><form:input type="password" path="password"  
						 placeholder="Enter passWord"
						title="Enter a secure password"/></td>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />
				</tr>

				<tr>
					<td><form:input type="email" path="mailID"  
						 placeholder="E-Mail Id"
						title="Enter a Your Mail Id"/></td>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('mailID')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />
				</tr>

				<tr>
					<td><form:input type="number" path="contactNumber" 
						 placeholder="Mobile Number"
						title="Enter Your Mobile Number"/></td>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('contactNumber')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />
				</tr>



				<tr>
					<td><form:input type="text" path="address" placeholder="Address" title="Enter Your Address"/>
					</td>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('address')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />
				</tr>

				<tr>
					<td align="center"><input name="_eventId_submit" class="btn btn-warning"
						type="submit" value="Sign Up"></td>
					
				</tr>



			</table>
		</form:form>
	</div>



</body>
</html>

