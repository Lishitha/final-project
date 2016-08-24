<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>

</head>
<body>
<h2 style="text-align: center;font-style: italic; color: #FDFDFD">Add Category</h2>

	 <c:url var="addCategory" value="to_add_category"></c:url>
	<form:form action="${addCategory }" commandName="category">

		<table align="center" border="1px white solid" border-color="#FDFDFD">
			<tr>
				<td style=" font-family: verdana;color: #FDFDFD"><form:label path="id">
						<spring:message text="ID"   />
					</form:label></td>
				<c:choose>

					<c:when test="${!empty category.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern=".{5,7}" required="true"
								title="Enter a valid id" /></td>
					</c:otherwise>
				</c:choose>
			</tr>

			<tr>
					<form:input path="id" hidden="true"  />
				<td style=" font-family: verdana; color: #FDFDFD"><form:label path="name">
						<spring:message text="Name"></spring:message>
					</form:label></td>
				<td><form:input path="name" required="true"></form:input></td>
			</tr>

			<tr>
				<td style=" font-family: verdana; color: #FDFDFD"><form:label path="description">
						<spring:message text="Description"></spring:message>
					</form:label></td>
				<td><form:input path="description" required="true"></form:input></td>
			</tr>

			<tr>
				<!-- if the category is already exist, then edit -->
				<td colspan="2" align="center"><c:if test="${!empty category.name }">
						<input type="submit"
							value="<spring:message text="Edit"></spring:message>">
					</c:if> <c:if test="${empty category.name}">
						<input type="submit"
							value="<spring:message text="Add"></spring:message>">
					</c:if></td>
			</tr>
		</table>
	</form:form>

	<br><br>
	
	<h2 style=" font-family: verdana; color: #FDFDFD;text-align: center">List of Categories</h2>
	<c:if test="${!empty categoryList}">
		<table align="center" border="1px white solid" border-color="#FDFDFD">
			<tr>
				<th style=" font-family: verdana; color: #FDFDFD"> ID</th>
				<th style=" font-family: verdana; color: #FDFDFD"> NAME</th>
				<th style=" font-family: verdana; color: #FDFDFD"> DESCRIPTION</th>
				<th style=" font-family: verdana; color: #FDFDFD"> EDIT</th>
				<th style=" font-family: verdana; color: #FDFDFD"> DELETE</th>
			</tr>

			<c:forEach items="${categoryList }" var="category">
				<tr>
					<td style=" font-family: verdana; color: #FDFDFD">${category.id}</td>
					<td style=" font-family: verdana; color: #FDFDFD">${category.name}</td>
					<td style=" font-family: verdana; color: #FDFDFD">${category.description}</td>
					<td style=" font-family: verdana; color: #FDFDFD"><a href="<c:url value='editCategory/${category.id}' />">Edit</a></td>
					<td style=" font-family: verdana; color: #FDFDFD"><a href="<c:url value='deleteCategory/${category.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>



</body>
</html>