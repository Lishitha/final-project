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

	<div class="sidebar-menu-container" id="sidebar-menu-container">

		<div class="sidebar-menu-push">

			<div class="sidebar-menu-overlay"></div>

			<div class="sidebar-menu-inner">
				<header class="site-header">
				<div id="main-header" class="main-header header-sticky">
					<div class="inner-header clearfix">
						<div class="logo">
							<img src="files/images/images.jpg" alt="Bootsshop" />

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
									<li><a href="../cake.html">Cakes</a></li>
									<li><a href="../cookie.html">Cookies</a></li>
									<li><a href="../chocolate.html">Chocolates</a></li>
								</ul>
							<li><a href="#">About</a></li>
							<li><a href="#">Contact</a></li>
							<li class=""><a href="login" role="button"
								data-toggle="modal" style="padding-right: 0"><span
									class="btn btn-large btn-success">Login</span></a>
							<li class=""><a href="register" " role="button"
								data-toggle="modal" style="padding-right: 0"><span
									class="btn btn-large btn-success">Register</span></a>
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
									src="files/images/462123.jpg" data-fullwidthcentering="on"
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
										data-endelementdelay="0">From Yom you can download
										anything for free</div>
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
									src="files/images/3597_cookies.jpg"
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
										data-endelementdelay="0">Using Yom you can create multi
										author Blog platform</div>
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
									src="files/images/thinkstockphotos-160141683.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">DONUTS</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Using Yom you can create multi
										author Blog platform</div>
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
									src="files/images/relish-sweet-benefits-of-candy-f-98f6f17b21.jpg"
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
										data-endelementdelay="0">Using Yom your can create a
										Multi Author E-Commerce Website</div>
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
								<li class="menu-item-has-children"><a href="#">Pages</a>
									<ul class="sub-menu">
										<li><a href="services.html">Services</a></li>
										<li><a href="clients.html">Clients</a></li>
									</ul></li>
								<li class="menu-item-has-children"><a href="#">Blog</a>
									<ul class="sub-menu">
										<li><a href="blog.html">Blog Classic</a></li>
										<li><a href="blog-grid.html">Blog Grid</a></li>
										<li><a href="blog-single.html">Single Post</a></li>
									</ul></li>
								<li><a href="about.html">About</a></li>
								<li class="menu-item-has-children"><a href="#">Works</a>
									<ul class="sub-menu">
										<li><a href="work-3columns.html">Three Columns</a></li>
										<li><a href="work-4columns.html">Four Columns</a></li>
										<li><a href="single-project.html">Single Project</a></li>
									</ul></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
							</nav>
						</div>
					</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
	
	<div>
			<c:if test="${!empty selectedProduct.name}">
				<table align="center">
					<tr>
						<img
							src="<c:url value = 'C:\Users\LISHITHA K A\Shopping cart\s${selectedProduct.id}.jpg' />" />
					</tr>
					<br>
					<tr>
						<th>Product ID : ${selectedProduct.id}</th>
					<tr>
						<br>
					<tr>
						<th>Product Name : ${selectedProduct.name}</th>
					<tr>
						<br>
					<tr>
						<th>Product Description : ${selectedProduct.description}</th>
					<tr>
						<br>
					<tr>
						<th>Price : ${selectedProduct.price}</th>
					<tr>
						<br>
					<tr>
						<th>Product Category : ${selectedProduct.category.name}</th>
					<tr>
						<br>
					<tr>
						<th>Product Supplier : ${selectedProduct.supplier.name}q</th>
					<tr>
						<br>
					<tr>
						<input align="right" class="btn btn-warning" type="submit"
							value="Add To Cart">
					</tr>
					</tr>

				</table>
			</c:if>
		</div>
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



