<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<title>Product</title>


</head>
<body background="resources/images/footer.png">


	<h2 style="text-align: center; font-style: italic; color: #FDFDFD">Add
		Product</h2>

	<c:url var="addProduct" value="to_add_product"></c:url>
	<form:form action="${addProduct}" commandName="product"
		enctype="multipart/form-data" method="POST">

		<table align="center" border="1px white solid" border-color="#FDFDFD">
			<tr>
				<td style="font-family: verdana; color: #FDFDFD""><form:label
						path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>

					<c:when test="${!empty product.id}">
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
				<form:input path="id" hidden="true" />
				<td style="font-family: verdana; color: #FDFDFD"><form:label
						path="name">
						<spring:message text="Name"></spring:message>
					</form:label></td>
				<td><form:input path="name" required="true"></form:input></td>
			</tr>

			<tr>
				<td style="font-family: verdana; color: #FDFDFD""><form:label
						path="description">
						<spring:message text="Description"></spring:message>
					</form:label></td>
				<td><form:input path="description" required="true"></form:input></td>
			</tr>

			<tr>
				<td style="font-family: verdana; color: #FDFDFD""><form:label
						path="price">
						<spring:message text="Price"></spring:message>
					</form:label></td>
				<td><form:input path="price" required="true"></form:input></td>
			</tr>

			<!-- <tr>
				<td style="font-family: verdana; color: #FDFDFD""><form:label
						path="category">
						<spring:message text="Category"></spring:message>
					</form:label></td>
				<td><form:input path="description" required="true"></form:input></td>
			</tr>
			
			<tr>
				<td style="font-family: verdana; color: #FDFDFD"><form:label
						path="supplier">
						<spring:message text="Supplier"></spring:message>
					</form:label></td>
				<td><form:input path="description" required="true"></form:input></td>
			</tr> -->


			<tr>
				<td style="font-family: verdana; color: #FDFDFD"><form:label
						path="supplier">
						<spring:message text="Supplier" />
					</form:label></td>
				<td><form:select path="supplier.name" items="${supplierList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
				<td style="font-family: verdana; color: #FDFDFD"><form:label
						path="category">
						<spring:message text="Category" />
					</form:label></td>
				<td><form:select path="category.name" items="${categoryList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>


			<tr>
				<td style="font-family: verdana; color: #FDFDFD"><form:label
						path="image">
						<spring:message text="Image" />
					</form:label></td>
				<td align="left"><form:input type="file" path="image" /></td>
			</tr>

			<tr>
				<!-- if the category is already exist, then edit -->
				<td colspan="2" align="center"><c:if
						test="${!empty product.name }">
						<input type="submit"
							value="<spring:message text="Edit"></spring:message>">
					</c:if> <c:if test="${empty product.name}">
						<input type="submit"
							value="<spring:message text="Add"></spring:message>">
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	<br>
	<h2 style="font-family: verdana; text-align: center; color: #FDFDFD">List
		of Products</h2>
	<c:if test="${!empty productList}">
		<table align="center" border="1px white solid" border-color="#FDFDFD">
			<tr>
				<th style="font-family: verdana; color: #FDFDFD">ID</th>
				<th style="font-family: verdana; color: #FDFDFD">NAME</th>
				<th style="font-family: verdana; color: #FDFDFD">DESCRIPTION</th>
				<th style="font-family: verdana; color: #FDFDFD">PRICE</th>
				<th style="font-family: verdana; color: #FDFDFD">CATEGORY</th>
				<th style="font-family: verdana; color: #FDFDFD">SUPPLIER</th>
				<th style="font-family: verdana; color: #FDFDFD">EDIT</th>
				<th style="font-family: verdana; color: #FDFDFD">DELETE</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td style="font-family: verdana; color: #FDFDFD">${product.id}</td>
					<td style="font-family: verdana; color: #FDFDFD">${product.name}</td>
					<td style="font-family: verdana; color: #FDFDFD">${product.description}</td>
					<td style="font-family: verdana; color: #FDFDFD">${product.price}</td>
					<td style="font-family: verdana; color: #FDFDFD">${product.category.name}</td>
					<td style="font-family: verdana; color: #FDFDFD">${product.supplier.name}</td>
					<td style="font-family: verdana; color: #FDFDFD"><a
						href="<c:url value='product/edit/${product.id}' />">Edit</a></td>
					<td style="font-family: verdana; color: #FDFDFD"><a
						href="<c:url value='deleteProduct/${product.id}' />">Delete</a></td>
				</tr>
			</c:forEach>

		</table>
	</c:if>

</body>
</html>