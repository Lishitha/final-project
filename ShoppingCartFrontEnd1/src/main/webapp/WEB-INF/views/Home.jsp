<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Audiowide'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/animate.css">
<link rel="stylesheet" href="resources/css/simple-line-icons.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/rs-plugin/css/settings.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="<c:url value="/resources/css/menu.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/main.css" />">
<title>Shopping Cart</title>
<!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700'
	rel='stylesheet' type='text/css'>
<!-- font awesome -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!--  <script>
function submitFn() 
{
	var x = document.forms["myForm"]["cash2"].value;
	
	
}
</script>-->
</head>
<body background="resources/images/footer.png">

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<div class="sidebar-menu-container" id="sidebar-menu-container">
		<div class="sidebar-menu-push">
			<div class="sidebar-menu-overlay"></div>
			<div class="sidebar-menu-inner">
				<header class="site-header">
				<div id="main-header" class="main-header header-sticky">
					<div class="inner-header clearfix">
						<div class="logo">
							<img src="resources/images/images.jpg" alt="Bootsshop" />
						</div>
						<div class="header-right-toggle pull-right hidden-md hidden-lg">
							<a href="javascript:void(0)" class="side-menu-button"><i
								class="fa fa-bars"></i></a>
						</div>
						<nav class="main-navigation pull-right hidden-xs hidden-sm">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#" class="has-submenu">Category</a>
								<ul class="sub-menu">
									<li><a href="cake">Cakes</a></li>
									<li><a href="cookie">Cookies</a></li>
									<li><a href="chocolate">Chocolates</a></li>
								</ul> <c:choose>
									<c:when test="${empty loggedInUser}">
										<li><a href="login" role="button"
											style="padding-right: 0"><span
												class="btn btn-large btn-success">Login</span></a></li>
										<li><a href="member.obj" " role="button"
											style="padding-right: 0"><span
												class="btn btn-large btn-success">Register</span></a></li>
									</c:when>
								</c:choose>
						</ul>
						</nav>
					</div>
				</div>
				</header>

				<div class="slider">
					<div class="fullwidthbanner-container">
						<div class="fullwidthbanner">
							<ul>
								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="resources/images/462123.jpg" data-fullwidthcentering="on"
									alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">CAKES</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">A Party without cake, is just a
										meeting !!!</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Discover More</a>
									</div></li>
								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="resources/images/3597_cookies.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">COOKIES</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">life is short..eat cookies for
										breake!!!</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class=" second-btn btn btn-slider">Discover
											More</a>
									</div></li>
							
								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="resources/images/relish-sweet-benefits-of-candy-f-98f6f17b21.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">CHOCOLATES</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Life is Short.. Eat Chocolate
										!!!</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Discover More</a>
									</div></li>
							</ul>
						</div>
					</div>
					<nav class="sidebar-menu slide-from-left">
					<div class="nano">
						<div class="content">
							<nav class="responsive-menu">
							<ul>
								<li><a href="index-2.html">Home</a></li>
								<li class="menu-item-has-children"><a href="#">Category</a>
									<ul class="sub-menu">
										<li><a href="services.html">Cakes</a></li>
										<li><a href="clients.html">Cookies</a></li>
										<li><a href="clients.html">Chocolates</a></li>
									</ul></li>
								<c:choose>
									<c:when test="${empty loggedInUser}">
										<li><a href="login" role="button"
											style="padding-right: 0"><span
												class="btn btn-large btn-success">Login</span></a></li>
										<li><a href="register" " role="button"
											style="padding-right: 0"><span
												class="btn btn-large btn-success">Register</span></a></li>
									</c:when>
								</c:choose>
							</ul>
							</nav>
						</div>
					</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
	</div>

	<div data-role="header" data-position="fixed">
		<table width="100%">
			<tr>
				<c:choose>
					<c:when test="${not empty loggedInUser }">
						<td><h2
								style="text-align: center; font-family: Brush Script MT; color: #F0D3EE">***WELCOME
								${loggedInUser }***</h2></td>
						<td align="right"><a href="logout"
							style="textfont-size: 200%; color: #FDFDFD; font-family: verdana">LogOut</a></td>
					</c:when>
				</c:choose>
			</tr>
		</table>
	</div>

	<div id="cake">
		<c:if test="${isUserClickedCake==true }">
			<%@ include file="cake.jsp"%>
		</c:if>
	</div>

	<div id="cookie">
		<c:if test="${isUserClickedCookie==true }">
			<%@ include file="cookie.jsp"%>
		</c:if>
	</div>

	<div id="chocolate">
		<c:if test="${isUserClickedChocolate==true }">
			<%@ include file="chocolate.jsp"%>
		</c:if>
	</div>

	<div id="logout">
		<c:if test="${loggedOut==true}">
			<td align="center">
				<h5
					style="textfont-size: 300%; color: #FDFDFD; font-family: verdana">${logoutMsg}</h5>
			</td>
		</c:if>
	</div>

	<div id=cart>
		<c:if test="${not empty cartSize}">
			<td align="right"><a href="cart"
				style="textfont-size: 200%; color: #FDFDFD; font-family: verdana">My
					Cart </a>( ${cartSize} )</td>


		</c:if>
	</div>

	<div id="cartDisplay">

		<c:if test="${cartDisplay==true }">
			<h2 style="font-family: verdana; text-align: center; color: #FDFDFD">List
				of Carts</h2>

			<table align="center" border="1px white solid" border-color="#FDFDFD">
				<tr>
					<th style="font-family: verdana; color: #FDFDFD">Cart ID</th>
					<th style="font-family: verdana; color: #FDFDFD">Product Name</th>
					<th style="font-family: verdana; color: #FDFDFD">Quantity</th>
					<th style="font-family: verdana; color: #FDFDFD">Price</th>
					<th style="font-family: verdana; color: #FDFDFD">Delete</th>
				</tr>

				<c:forEach items="${cartList }" var="cart">
					<tr>
						<td style="font-family: verdana; color: #FDFDFD">${cart.id}</td>
						<td style="font-family: verdana; color: #FDFDFD">${cart.getProduct().getName()}</td>
						<td style="font-family: verdana; color: #FDFDFD">${cart.quantity}</td>
						<td style="font-family: verdana; color: #FDFDFD">${cart.price}</td>
						<td style="font-family: verdana; color: #FDFDFD"><a
							href="<c:url value='deleteCart/${cart.id}'></c:url>">Delete</a></td>
					</tr>
				</c:forEach>
			</table>

			<h4>
				<a href="cart"
					style="textfont-size: 200%; color: #FDFDFD; font-family: verdana">Total
					Price : ${totalAmount}</a>
			</h4>
			<%-- <a href="<c:url value='/pay/${cart.userID}'/>">Proceed</a>  --%>
			<!--<a href="<c:url value='/deleteCart/${cart.id}'></c:url>">Delete</a>  -->

			<form name="myForm" onsubmit="submitFn()"
				style="font-family: verdana; color: #FDFDFD">
				<input type="radio" name="cash1" value="Cash On Delivery">
				Cash On Delivery<br> <input type="radio" name="cash2"
					value="Net Banking"> Net Banking<br>
			</form>
		</c:if>

	</div>

	<div data-role="main" class="ui-content">

		<hr color="red" size="5">

		<ul id="menu">
			<c:if test="${not empty categoryList}">
				<c:forEach items="${categoryList}" var="category">
					<li><a href=${category.name}>${category.name}</a>
						<ul>
							<c:forEach items="${category.products}" var="product">

								<li><a href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>

							</c:forEach>

						</ul></li>
				</c:forEach>
			</c:if>

		</ul>
		<hr color="red" size="5">

		<div>
			<c:if test="${!empty selectedProduct.name}">
				<table align="center">
				    <tr>
				    <th style="text-align: center; font-family: Brush Script MT; color: #F0D3EE;textfont-size: 500%">
								   ${selectedProduct.name} </th>
					<tr>
					<th>
						<img
							src="<c:url value = 'C:\Users\LISHITHA K A\Shopping cart\s${selectedProduct.id}.jpg' />" /></th>
					</tr>
					<br>
					<tr>
						<th style="font-family: verdana; color: #FDFDFD">Product ID :
							${selectedProduct.id}</th>
					</tr>
					<br>
					<tr>
						<th style="font-family: verdana; color: #FDFDFD">Product Name
							: ${selectedProduct.name}</th>
					</tr>
					<br>
					<tr>
						<th style="font-family: verdana; color: #FDFDFD">Product
							Description : ${selectedProduct.description}</th>
					</tr>
					<br>
					<tr>
						<th style="font-family: verdana; color: #FDFDFD">Price :
							${selectedProduct.price}</th>
					</tr>
					<br>
					<tr>
						<th style="font-family: verdana; color: #FDFDFD">Product
							Category : ${selectedProduct.category.name}</th>
					</tr>
					<br>
					<tr>
						<th style="font-family: verdana; color: #FDFDFD">Product
							Supplier : ${selectedProduct.supplier.name}</th>
					</tr>
					<br>
					<tr>
						<!-- <input align="center" class="btn btn-warning" type="submit"
							value="Add To Cart"> -->

						<th style="font-family: verdana; color: #FDFDFD"><a
							href="<c:url value='/addToMycart/${selectedProduct.id}' />">Add
								to Cart</a></th>
								
								
					</tr>

				</table>
			</c:if>
		</div>
	</div>

	<div id="login">
		<c:if test="${isUserClickedLogin==true || invalidCredentials==true}">
			<div id="error"><h5
					style="textfont-size: 300%; color: #ff0000; font-family: verdana">${errorMsg}</h5></div>
			<td>${msg}</td>
			<%@ include file="Login.jsp"%>
			<%@ include file="footer.jsp"%>
		</c:if>
	</div>

	<div id="register">
		<c:if test="${isUserClickedRegister==true}">
			<%@ include file="Register.jsp"%>
			<%@ include file="footer.jsp"%>
		</c:if>
	</div>

	<div id="isAdmin">

		<c:if test="${isAdmin==true }">
			<%@ include file="Isadmin.jsp"%>
			<%@ include file="footer.jsp"%>
		</c:if>


		<div id="category">
			<c:if test="${isAdminCLickedCategory==true }">
				<%@ include file="Isadmin.jsp"%>
				<%@ include file="Category.jsp"%>
				<%@ include file="footer.jsp"%>
			</c:if>
		</div>

		<div id="product">
			<c:if test="${isAdminClickedProduct==true }">
				<%@ include file="Isadmin.jsp"%>
				<%@ include file="Product.jsp"%>
				<%@ include file="footer.jsp"%>
			</c:if>
		</div>

		<div id="supplier">
			<c:if test="${isAdminClickedSupplier==true }">
				<%@ include file="Isadmin.jsp"%>
				<%@ include file="Supplier.jsp"%>
				<%@ include file="footer.jsp"%>
			</c:if>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
	<script src="resources/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="resources/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="resources/js/plugins.js"></script>
	<script type="text/javascript" src="resources/js/custom.js"></script>
</body>

</html>
