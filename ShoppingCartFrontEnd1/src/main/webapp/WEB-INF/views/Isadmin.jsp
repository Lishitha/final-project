<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="/resources/css/style2.css" />">
</head>
<body background="resources/images/footer.png">


	<!-- <table>
		<tr>
			<td align="left"><a href="categories"
				style="textfont-size: 200%; font-family: verdana">Manage
					Categories</a></td>
			<td align="right"><a href="products"
				style="textfont-size: 200%; font-family: verdana">Manage
					Products</a></td>
			<td align="center"><a href="suppliers"
				style="textfont-size: 200%; font-family: verdana">Manage
					Suppliers</a></td>

		</tr>

	</table> -->
	
  <div class="services">
  <h3 class="text-center wowload fadeInUp"></h3>
	<ul class="row text-center list-inline  wowload bounceInUp">
   	<li>
            <span><b><a href="categories" >Manage Categories</a></b></span>
        </li>
        <li>
            <span><i class="glyphicon glyphicon-list-alt"></i><b><a href="products" style="textfont-size: 500%; font-family: verdana">Manage Products</a></b></span>
        </li>
        <li>
            <span><i class="glyphicon glyphicon-list-alt"></i><b><a href="suppliers" style="textfont-size: 500%; font-family: verdana">Manage Suppliers</a></b></span>
        </li>
  	</ul>
  </div>

</body>
</html>

