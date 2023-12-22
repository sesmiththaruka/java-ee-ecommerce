<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="lk.verdana.ecom.util.HibernateUtil" %>
<%@ page import="lk.verdana.ecom.entity.Product" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.verdana.ecom.entity.Category" %><%--
  Created by IntelliJ IDEA.
  User: Tharuka
  Date: 10/1/2023
  Time: 10:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">


<!-- munchbox/restaurant.html  05 Dec 2019 10:13:26 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="keywords" content="#">
    <meta name="description" content="#">
    <title>Munchbox | Restaurant</title>
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="#">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="#">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="#">
    <link rel="apple-touch-icon-precomposed" href="#">
    <link rel="shortcut icon" href="#">
    <!-- Bootstrap -->
    <link href="${BASE_URL}assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Fontawesome -->
    <link href="${BASE_URL}assets/css/font-awesome.css" rel="stylesheet">
    <!-- Flaticons -->
    <link href="${BASE_URL}assets/css/font/flaticon.css" rel="stylesheet">
    <!-- Swiper Slider -->
    <link href="${BASE_URL}assets/css/swiper.min.css" rel="stylesheet">
    <!-- Range Slider -->
    <link href="${BASE_URL}assets/css/ion.rangeSlider.min.css" rel="stylesheet">
    <!-- magnific popup -->
    <link href="${BASE_URL}assets/css/magnific-popup.css" rel="stylesheet">
    <!-- Nice Select -->
    <link href="${BASE_URL}assets/css/nice-select.css" rel="stylesheet">
    <!-- Custom Stylesheet -->
    <link href="${BASE_URL}assets/css/style.css" rel="stylesheet">
    <!-- Custom Responsive -->
    <link href="${BASE_URL}assets/css/responsive.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;display=swap" rel="stylesheet">
    <!-- place -->
</head>
<%
    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session openSession = sessionFactory.openSession();



//    List<Category> category = openSession.createQuery("select category from Category category", Category.class).getResultList();
//    pageContext.setAttribute("category", category);
    String categoryIdStr = (String) request.getAttribute("categoryId");
    int categoryId = Integer.parseInt(categoryIdStr);
    List<Product> products = openSession.createQuery("SELECT product FROM Product product WHERE product.category.id = :categoryId", Product.class)
            .setParameter("categoryId", categoryId)
            .getResultList();

    pageContext.setAttribute("products", products);


    Category category = openSession.createQuery("SELECT category FROM Category category WHERE category.id = :categoryId", Category.class)
            .setParameter("categoryId", categoryId)
            .uniqueResult();
    pageContext.setAttribute("category", category);
%>
<body>
<!-- Navigation -->
<div class="header">
    <header class="full-width">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 mainNavCol">
                    <!-- logo -->
                    <div class="logo mainNavCol">
                        <a href="index-2.html">
                            <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                        </a>
                    </div>
                    <!-- logo -->
                    <div class="main-search mainNavCol">
                        <form class="main-search search-form full-width">
                            <div class="row">
                                <!-- location picker -->
                                <div class="col-lg-6 col-md-5">
                                    <a href="#" class="delivery-add p-relative"> <span class="icon"><i class="fas fa-map-marker-alt"></i></span>
                                        <span class="address">Brooklyn, NY</span>
                                    </a>
                                    <div class="location-picker">
                                        <input type="text" class="form-control" placeholder="Enter a new address">
                                    </div>
                                </div>
                                <!-- location picker -->
                                <!-- search -->
                                <div class="col-lg-6 col-md-7">
                                    <div class="search-box padding-10">
                                        <input type="text" class="form-control" placeholder="Pizza, Burger, Chinese">
                                    </div>
                                </div>
                                <!-- search -->
                            </div>
                        </form>
                    </div>
                    <div class="right-side fw-700 mainNavCol">
                        <div class="gem-points">
                            <a href="#"> <i class="fas fa-concierge-bell"></i>
                                <span>Order Now</span>
                            </a>
                        </div>
                        <div class="catring parent-megamenu">
                            <a href="#"> <span>Pages <i class="fas fa-caret-down"></i></span>
                                <i class="fas fa-bars"></i>
                            </a>
                            <div class="megamenu">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-5">
                                                <div class="ex-collection-box h-100">
                                                    <a href="#">
                                                        <img src="assets/img/nav-1.jpg" class="img-fluid full-width h-100" alt="image">
                                                    </a>
                                                    <div class="category-type overlay padding-15"> <a href="restaurant.html" class="category-btn">Top rated</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-7">
                                                <div class="row">
                                                    <div class="col-lg-3 col-sm-6">
                                                        <div class="menu-style">
                                                            <div class="menu-title">
                                                                <h6 class="cat-name"><a href="#" class="text-light-black">Home Pages</a></h6>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index-2.html" class="text-light-white fw-500">Landing Page</a>
                                                                </li>
                                                                <li><a href="homepage-1.html" class="text-light-white fw-500">Home Page 1</a>
                                                                </li>
                                                                <li><a href="homepage-2.html" class="text-light-white fw-500">Home Page 2</a>
                                                                </li>
                                                                <li><a href="homepage-3.html" class="text-light-white fw-500">Home Page 3</a>
                                                                </li>
                                                                <li><a href="homepage-4.html" class="text-light-white fw-500">Home Page 4</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3 col-sm-6">
                                                        <div class="menu-style">
                                                            <div class="menu-title">
                                                                <h6 class="cat-name"><a href="#" class="text-light-black">Inner Pages</a></h6>
                                                            </div>
                                                            <ul>
                                                                <li><a href="blog.html" class="text-light-white fw-500">Blog Grid View</a>
                                                                </li>
                                                                <li><a href="blog-style-2.html" class="text-light-white fw-500">Blog Grid View 2</a>
                                                                </li>
                                                                <li><a href="blog-details.html" class="text-light-white fw-500">Blog Details</a>
                                                                </li>
                                                                <li><a href="ex-deals.html" class="text-light-white fw-500">Ex Deals</a>
                                                                </li>
                                                                <li><a href="about.html" class="text-light-white fw-500">About Us</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3 col-sm-6">
                                                        <div class="menu-style">
                                                            <div class="menu-title">
                                                                <h6 class="cat-name"><a href="#" class="text-light-black">Related Pages</a></h6>
                                                            </div>
                                                            <ul>
                                                                <li class="active"><a href="restaurant.html" class="text-light-white fw-500">Restaurant</a>
                                                                </li>
                                                                <li><a href="restaurant-style-1.html" class="text-light-white fw-500">Restaurant 1</a>
                                                                </li>
                                                                <li><a href="restaurant-style-2.html" class="text-light-white fw-500">Restaurant 2</a>
                                                                </li>
                                                                <li><a href="add-restaurant.html" class="text-light-white fw-500">Add Restaurant</a>
                                                                </li>
                                                                <li><a href="list-view.html" class="text-light-white fw-500">List View</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3 col-sm-6">
                                                        <div class="menu-style">
                                                            <div class="menu-title">
                                                                <h6 class="cat-name"><a href="#" class="text-light-black">Additional Pages</a></h6>
                                                            </div>
                                                            <ul>
                                                                <li><a href="login.html" class="text-light-white fw-500">Login</a>
                                                                </li>
                                                                <li><a href="register.html" class="text-light-white fw-500">Sign-up</a>
                                                                </li>
                                                                <li><a href="checkout.html" class="text-light-white fw-500">Checkout</a>
                                                                </li>
                                                                <li><a href="order-details.html" class="text-light-white fw-500">Order Details</a>
                                                                </li>
                                                                <li><a href="geo-locator.html" class="text-light-white fw-500">Geo Locator</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- mobile search -->
                        <div class="mobile-search">
                            <a href="#" data-toggle="modal" data-target="#search-box"> <i class="fas fa-search"></i>
                            </a>
                        </div>
                        <!-- mobile search -->
                        <!-- user account -->
                        <div class="user-details p-relative">
                            <a href="#" class="text-light-white fw-500">
                                <img src="assets/img/user-1.png" class="rounded-circle" alt="userimg"> <span>Hi, Kate</span>
                            </a>
                            <div class="user-dropdown">
                                <ul>
                                    <li>
                                        <a href="order-details.html">
                                            <div class="icon"><i class="flaticon-rewind"></i>
                                            </div> <span class="details">Past Orders</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="order-details.html">
                                            <div class="icon"><i class="flaticon-takeaway"></i>
                                            </div> <span class="details">Upcoming Orders</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="icon"><i class="flaticon-breadbox"></i>
                                            </div> <span class="details">Saved</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="icon"><i class="flaticon-gift"></i>
                                            </div> <span class="details">Gift cards</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="icon"><i class="flaticon-refer"></i>
                                            </div> <span class="details">Refer a friend</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="icon"><i class="flaticon-diamond"></i>
                                            </div> <span class="details">Perks</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="icon"><i class="flaticon-user"></i>
                                            </div> <span class="details">Account</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="icon"><i class="flaticon-board-games-with-roles"></i>
                                            </div> <span class="details">Help</span>
                                        </a>
                                    </li>
                                </ul>
                                <div class="user-footer"> <span class="text-light-black">Not Jhon?</span> <a href="#">Sign Out</a>
                                </div>
                            </div>
                        </div>
                        <!-- mobile search -->
                        <!-- user notification -->
                        <div class="cart-btn notification-btn">
                            <a href="#" class="text-light-green fw-700"> <i class="fas fa-bell"></i>
                                <span class="user-alert-notification"></span>
                            </a>
                            <div class="notification-dropdown">
                                <div class="product-detail">
                                    <a href="#">
                                        <div class="img-box">
                                            <img src="assets/img/shop-1.png" class="rounded" alt="image">
                                        </div>
                                        <div class="product-about">
                                            <p class="text-light-black">Lil Johnny’s</p>
                                            <p class="text-light-white">Spicy Maxican Grill</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="rating-box">
                                    <p class="text-light-black">How was your last order ?.</p> <span class="text-dark-white"><i class="fas fa-star"></i></span>
                                    <span class="text-dark-white"><i class="fas fa-star"></i></span>
                                    <span class="text-dark-white"><i class="fas fa-star"></i></span>
                                    <span class="text-dark-white"><i class="fas fa-star"></i></span>
                                    <span class="text-dark-white"><i class="fas fa-star"></i></span>
                                    <cite class="text-light-white">Ordered 2 days ago</cite>
                                </div>
                            </div>
                        </div>
                        <!-- user notification -->
                        <!-- user cart -->
                        <div class="cart-btn cart-dropdown">
                            <a href="#" class="text-light-green fw-700"> <i class="fas fa-shopping-bag"></i>
                                <span class="user-alert-cart">3</span>
                            </a>
                            <div class="cart-detail-box">
                                <div class="card">
                                    <div class="card-header padding-15">Your Order</div>
                                    <div class="card-body no-padding">
                                        <div class="cat-product-box">
                                            <div class="cat-product">
                                                <div class="cat-name">
                                                    <a href="#">
                                                        <p class="text-light-green"><span class="text-dark-white">1</span> Chilli Chicken</p> <span class="text-light-white">small, chilli chicken</span>
                                                    </a>
                                                </div>
                                                <div class="delete-btn">
                                                    <a href="#" class="text-dark-white"> <i class="far fa-trash-alt"></i>
                                                    </a>
                                                </div>
                                                <div class="price"> <a href="#" class="text-dark-white fw-500">
                                                    $2.25
                                                </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cat-product-box">
                                            <div class="cat-product">
                                                <div class="cat-name">
                                                    <a href="#">
                                                        <p class="text-light-green"><span class="text-dark-white">1</span> loaded cheese</p> <span class="text-light-white">small, chilli chicken</span>
                                                    </a>
                                                </div>
                                                <div class="delete-btn">
                                                    <a href="#" class="text-dark-white"> <i class="far fa-trash-alt"></i>
                                                    </a>
                                                </div>
                                                <div class="price"> <a href="#" class="text-dark-white fw-500">
                                                    $2.25
                                                </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cat-product-box">
                                            <div class="cat-product">
                                                <div class="cat-name">
                                                    <a href="#">
                                                        <p class="text-light-green"><span class="text-dark-white">1</span> Tortia Chicken</p> <span class="text-light-white">small, chilli chicken</span>
                                                    </a>
                                                </div>
                                                <div class="delete-btn">
                                                    <a href="#" class="text-dark-white"> <i class="far fa-trash-alt"></i>
                                                    </a>
                                                </div>
                                                <div class="price"> <a href="#" class="text-dark-white fw-500">
                                                    $2.25
                                                </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item-total">
                                            <div class="total-price border-0"> <span class="text-dark-white fw-700">Items subtotal:</span>
                                                <span class="text-dark-white fw-700">$9.99</span>
                                            </div>
                                            <div class="empty-bag padding-15"> <a href="#">Empty bag</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer padding-15"> <a href="checkout.html" class="btn-first green-btn text-custom-white full-width fw-500">Proceed to Checkout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- user cart -->
                    </div>
                </div>
                <div class="col-sm-12 mobile-search">
                    <div class="mobile-address">
                        <a href="#" class="delivery-add" data-toggle="modal" data-target="#address-box"> <span class="address">Brooklyn, NY</span>
                        </a>
                    </div>
                    <div class="sorting-addressbox"> <span class="full-address text-light-green">Brooklyn, NY 10041</span>
                        <div class="btns">
                            <div class="filter-btn">
                                <button type="button"><i class="fas fa-sliders-h text-light-green fs-18"></i>
                                </button> <span class="text-light-green">Sort</span>
                            </div>
                            <div class="filter-btn">
                                <button type="button"><i class="fas fa-filter text-light-green fs-18"></i>
                                </button> <span class="text-light-green">Filter</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</div>
<div class="main-sec"></div>
<!-- Navigation -->
<!-- restaurent top -->
<div class="page-banner p-relative smoothscroll" id="menu">
    <img src="assets/img/banner.jpg" class="img-fluid full-width" alt="banner">
    <div class="overlay-2">
        <div class="container">
            <div class="row">
                <div class="col-6">
                    <div class="back-btn">
                        <button type="button" class="text-light-green"> <i class="fas fa-chevron-left"></i>
                        </button>
                    </div>
                </div>
                <div class="col-6">
                    <div class="tag-share"> <span class="text-light-green share-tag">
                <i class="fas fa-chevron-right"></i>
              </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- restaurent top -->
<!-- restaurent details -->
<section class="restaurent-details  u-line">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading padding-tb-10">
                    <h3 class="text-light-black title fw-700 no-margin"><%= category.getName() %></h3>
                    <p class="text-light-black sub-title no-margin">4508 Fort Hamilton Pkwy <span><a href="checkout.html" class="text-success">Change locations</a></span>
                    </p>
                    <div class="head-rating">
                        <div class="rating"> <span class="fs-16 text-yellow">
                              <i class="fas fa-star"></i>
                            </span>
                            <span class="fs-16 text-yellow">
                              <i class="fas fa-star"></i>
                            </span>
                            <span class="fs-16 text-yellow">
                              <i class="fas fa-star"></i>
                            </span>
                            <span class="fs-16 text-yellow">
                              <i class="fas fa-star"></i>
                            </span>
                            <span class="fs-16 text-dark-white">
                              <i class="fas fa-star"></i>
                            </span>
                            <span class="text-light-black fs-12 rate-data">58 rating</span>
                        </div>
                        <div class="product-review">
                            <div class="restaurent-details-mob">
                                <a href="#"> <span class="text-light-black"><i class="fas fa-info-circle"></i></span>
                                    <span class="text-dark-white">info</span>
                                </a>
                            </div>
                            <div class="restaurent-details-mob">
                                <a href="#"> <span class="text-light-black"><i class="fas fa-info-circle"></i></span>
                                    <span class="text-dark-white">info</span>
                                </a>
                            </div>
                            <div class="restaurent-details-mob">
                                <a href="#"> <span class="text-light-black"><i class="fas fa-info-circle"></i></span>
                                    <span class="text-dark-white">info</span>
                                </a>
                            </div>
                            <div class="restaurent-details-mob">
                                <a href="#"> <span class="text-light-black"><i class="fas fa-info-circle"></i></span>
                                    <span class="text-dark-white">info</span>
                                </a>
                            </div>
                            <h6 class="text-light-black no-margin">91<span class="fs-14">% Food was good</span></h6>
                            <h6 class="text-light-black no-margin">91<span class="fs-14">% Food was good</span></h6>
                            <h6 class="text-light-black no-margin">91<span class="fs-14">% Food was good</span></h6>
                        </div>
                    </div>
                </div>
                <div class="restaurent-logo">
                    <img src="assets/img/logo-4.jpg" class="img-fluid" alt="#">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- restaurent details -->
<!-- restaurent tab -->
<div class="restaurent-tabs u-line">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="restaurent-menu scrollnav">
                    <ul class="nav nav-pills">
                        <li class="nav-item"> <a class="nav-link active text-light-white fw-700" data-toggle="pill" href="#menu">Menu</a>
                        </li>
                        <li class="nav-item"> <a class="nav-link text-light-white fw-700" data-toggle="pill" href="#about">About</a>
                        </li>
                        <li class="nav-item"> <a class="nav-link text-light-white fw-700" data-toggle="pill" href="#review">Reviews</a>
                        </li>
                        <li class="nav-item"> <a class="nav-link text-light-white fw-700" data-toggle="pill" href="#mapgallery">Map & Gallery</a>
                        </li>
                    </ul>
                    <div class="add-wishlist">
                        <img src="assets/img/svg/013-heart-1.svg" alt="tag">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- restaurent tab -->
<!-- restaurent address -->
<div class="restaurent-address u-line">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="address-details">
                    <div class="address">
                        <div class="delivery-address"> <a href="order-details.html" class="text-light-black">Delivery, ASAP (45–55m)</a>
                            <div class="delivery-type"> <span class="text-success fs-12 fw-500">No minimun</span><span class="text-light-white">, Free Delivery</span>
                            </div>
                        </div>
                        <div class="change-address"> <a href="checkout.html" class="fw-500">Change</a>
                        </div>
                    </div>
                    <p class="text-light-white no-margin">Lorem ipsum dolor sit amet, consectetur adipiscing elit,</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- restaurent address -->
<!-- restaurent meals -->
<section class="section-padding restaurent-meals bg-light-theme">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-3 col-lg-3">
                <div class="advertisement-slider swiper-container h-auto mb-xl-20 mb-md-40">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="testimonial-wrapper">
                                <div class="testimonial-box">
                                    <div class="testimonial-img p-relative">
                                        <a href="restaurant.html">
                                            <img src="assets/img/blog/438x180/shop-1.jpg" class="img-fluid full-width" alt="testimonial-img">
                                        </a>
                                        <div class="overlay">
                                            <div class="brand-logo">
                                                <img src="assets/img/user/user-3.png" class="img-fluid" alt="logo">
                                            </div>
                                            <div class="add-fav text-success">
                                                <img src="assets/img/svg/013-heart-1.svg" alt="tag">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="testimonial-caption padding-15">
                                        <p class="text-light-white text-uppercase no-margin fs-12">Featured</p>
                                        <h5 class="fw-600"><a href="restaurant.html" class="text-light-black">GSA King Tomato Farm</a></h5>
                                        <div class="testimonial-user-box">
                                            <img src="assets/img/blog-details/40x40/user-1.png" class="rounded-circle" alt="#">
                                            <div class="testimonial-user-name">
                                                <p class="text-light-black fw-600">Sarra</p> <i class="fas fa-trophy text-black"></i><span class="text-light-black">Top Reviewer</span>
                                            </div>
                                        </div>
                                        <div class="ratings"> <span class="text-yellow fs-16">
                                                          <i class="fas fa-star"></i>
                                                        </span>
                                            <span class="text-yellow fs-16">
                                                          <i class="fas fa-star"></i>
                                                        </span>
                                            <span class="text-yellow fs-16">
                                                          <i class="fas fa-star"></i>
                                                        </span>
                                            <span class="text-yellow fs-16">
                                                          <i class="fas fa-star"></i>
                                                        </span>
                                            <span class="text-yellow fs-16">
                                                          <i class="fas fa-star"></i>
                                                        </span>
                                        </div>
                                        <p class="text-light-black">Delivery was fast and friendly...</p>
                                        <p class="text-light-white fw-100"><strong class="text-light-black fw-700">Local delivery: </strong> From $7.99 (4.0 mi)</p>
                                        <a href="checkout.html" class="btn-second btn-submit">Order Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="testimonial-wrapper">
                                <div class="testimonial-box">
                                    <div class="testimonial-img p-relative">
                                        <a href="restaurant.html">
                                            <img src="assets/img/blog/438x180/shop-2.jpg" class="img-fluid full-width" alt="testimonial-img">
                                        </a>
                                        <div class="overlay">
                                            <div class="brand-logo">
                                                <img src="assets/img/user/user-2.png" class="img-fluid" alt="logo">
                                            </div>
                                            <div class="add-fav text-success"><img src="assets/img/svg/013-heart-1.svg" alt="tag">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="testimonial-caption padding-15">
                                        <p class="text-light-white text-uppercase no-margin fs-12">Featured</p>
                                        <h5 class="fw-600"><a href="restaurant.html" class="text-light-black">GSA King Tomato Farm</a></h5>
                                        <div class="testimonial-user-box">
                                            <img src="assets/img/blog-details/40x40/user-2.png" class="rounded-circle" alt="#">
                                            <div class="testimonial-user-name">
                                                <p class="text-light-black fw-600">Sarra</p> <i class="fas fa-trophy text-black"></i><span class="text-light-black">Top Reviewer</span>
                                            </div>
                                        </div>
                                        <div class="ratings"> <span class="text-yellow fs-16">
                                                  <i class="fas fa-star"></i>
                                                </span>
                                            <span class="text-yellow fs-16">
                                                  <i class="fas fa-star"></i>
                                                </span>
                                            <span class="text-yellow fs-16">
                                                  <i class="fas fa-star"></i>
                                                </span>
                                            <span class="text-yellow fs-16">
                                                  <i class="fas fa-star"></i>
                                                </span>
                                            <span class="text-yellow fs-16">
                                                  <i class="fas fa-star"></i>
                                                </span>
                                        </div>
                                        <p class="text-light-black">Delivery was fast and friendly...</p>
                                        <p class="text-light-white fw-100"><strong class="text-light-black fw-700">Local delivery: </strong> From $7.99 (4.0 mi)</p>
                                        <a href="checkout.html" class="btn-second btn-submit">Order Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="testimonial-wrapper">
                                <div class="testimonial-box">
                                    <div class="testimonial-img p-relative">
                                        <a href="restaurant.html">
                                            <img src="assets/img/blog/438x180/shop-2.jpg" class="img-fluid full-width" alt="testimonial-img">
                                        </a>
                                        <div class="overlay">
                                            <div class="brand-logo">
                                                <img src="assets/img/user/user-1.png" class="img-fluid" alt="logo">
                                            </div>
                                            <div class="add-fav text-success"><img src="assets/img/svg/013-heart-1.svg" alt="tag">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="testimonial-caption padding-15">
                                        <p class="text-light-white text-uppercase no-margin fs-12">Featured</p>
                                        <h5 class="fw-600"><a href="restaurant.html" class="text-light-black">GSA King Tomato Farm</a></h5>
                                        <div class="testimonial-user-box">
                                            <img src="assets/img/blog-details/40x40/user-3.png" class="rounded-circle" alt="#">
                                            <div class="testimonial-user-name">
                                                <p class="text-light-black fw-600">Sarra</p> <i class="fas fa-trophy text-black"></i><span class="text-light-black">Top Reviewer</span>
                                            </div>
                                        </div>
                                        <div class="ratings"> <span class="text-yellow fs-16">
                                              <i class="fas fa-star"></i>
                                            </span>
                                            <span class="text-yellow fs-16">
                                              <i class="fas fa-star"></i>
                                            </span>
                                            <span class="text-yellow fs-16">
                                              <i class="fas fa-star"></i>
                                            </span>
                                            <span class="text-yellow fs-16">
                                              <i class="fas fa-star"></i>
                                            </span>
                                            <span class="text-yellow fs-16">
                                              <i class="fas fa-star"></i>
                                            </span>
                                        </div>
                                        <p class="text-light-black">Delivery was fast and friendly...</p>
                                        <p class="text-light-white fw-100"><strong class="text-light-black fw-700">Local delivery: </strong> From $7.99 (4.0 mi)</p>
                                        <a href="checkout.html" class="btn-second btn-submit">Order Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Add Arrows -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                <div class="card sidebar-card">
                    <div class="card-header no-padding">
                        <div class="offer-content">
                            <h2 class="text-custom-white fw-700">Get $12 off <small class=" fw-700">your order*</small></h2>
                            <p class="text-custom-white">As an added treat, enjoy <strong>free delivery</strong> from
                                <br>select restaurants automatically applied at checkout</p>
                        </div>
                    </div>
                    <div class="card-body padding-15">
                        <form>
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label class="text-light-white fs-14">Email</label>
                                        <input type="email" name="#" class="form-control form-control-submit" placeholder="Email I'd">
                                    </div>
                                    <div class="form-group">
                                        <label class="text-light-white fs-14">ZIP Code</label>
                                        <input type="number" name="#" class="form-control form-control-submit" placeholder="10421">
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn-second btn-submit full-width">Save $12 on your first order</button>
                                    </div>

                                    <div class="text-center"> <span class="text-light-black fs-12">*Valid on first order only, for one-time use, subject to Munchbox’s verification. Additional terms may apply. By signing up, you agree to receive marketing and
                        promotional emails and communications form Munchbox</span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="promocodeimg mb-xl-20 p-relative">
                            <img src="assets/img/banner.jpg" class="img-fluid full-width" alt="promocode">
                            <div class="promocode-text">
                                <div class="promocode-text-content">
                                    <h5 class="text-custom-white mb-2 fw-600">Get $10 off your first order!</h5>
                                    <p class="text-custom-white no-margin">Spend $15 or more and get $10 off your first delivery order.</p>
                                </div>
                                <div class="promocode-btn"> <a href="#">Get Deal</a>
                                </div>
                            </div>
                            <div class="overlay overlay-bg"></div>
                        </div>
                    </div>
                    <div class="col-lg-12 restaurent-meal-head mb-md-40">
                        <div class="card">
                            <div class="card-header">
                                <div class="section-header-left">
                                    <h3 class="text-light-black header-title">
                                        <a class="card-link text-light-black no-margin" data-toggle="collapse" href="#collapseOne">
                                            Most Popular
                                        </a>
                                    </h3>
                                </div>
                            </div>
                            <div id="collapseOne" class="collapse show">
                                <div class="card-body no-padding">
                                    <div class="row">
                                        <c:forEach var="products" items="${products}">
                                            <div class="col-lg-12">
                                                <div class="restaurent-product-list">
                                                    <div class="restaurent-product-detail">
                                                        <div class="restaurent-product-left">
                                                            <div class="restaurent-product-title-box">
                                                                <div class="restaurent-product-box">
                                                                    <div class="restaurent-product-title">
                                                                        <h6 class="mb-2" data-toggle="modal" data-target="#restaurent-popup"><a href="javascript:void(0)" data-product-id="${products.id}" class="text-light-black fw-600">${products.name}</a></h6>
                                                                        <p class="text-light-white">600-700 Cal.</p>
                                                                    </div>
                                                                    <div class="restaurent-product-label"> <span class="rectangle-tag bg-gradient-red text-custom-white">Label</span>
                                                                        <span class="rectangle-tag bg-dark text-custom-white">Combo</span>
                                                                    </div>
                                                                </div>
                                                                <div class="restaurent-product-rating">
                                                                    <div class="ratings"> <span class="text-yellow"><i class="fas fa-star"></i></span>
                                                                        <span class="text-yellow"><i class="fas fa-star"></i></span>
                                                                        <span class="text-yellow"><i class="fas fa-star"></i></span>
                                                                        <span class="text-yellow"><i class="fas fa-star"></i></span>
                                                                        <span class="text-yellow"><i class="fas fa-star-half-alt"></i></span>
                                                                    </div>
                                                                    <div class="rating-text">
                                                                        <p class="text-light-white fs-12 title">3845 ratings</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="restaurent-product-caption-box"> <span class="text-light-white">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor...</span>
                                                            </div>
                                                            <div class="restaurent-tags-price">
                                                                <div class="restaurent-tags">
                                                                    <span class="text-custom-white square-tag">
                                                                        <img src="assets/img/svg/004-leaf.svg" alt="tag">
                                                                    </span>
                                                                    <span class="text-custom-white square-tag">
                                                                        <img src="assets/img/svg/006-chili.svg" alt="tag">
                                                                      </span>
                                                                    <span class="text-custom-white square-tag">
                                                                        <img src="assets/img/svg/005-chef.svg" alt="tag">
                                                                      </span>
                                                                    <span class="text-custom-white square-tag">
                                                                        <img src="assets/img/svg/008-protein.svg" alt="tag">
                                                                      </span>
                                                                    <span class="text-custom-white square-tag">
                                                                        <img src="assets/img/svg/009-lemon.svg" alt="tag">
                                                                      </span>
                                                                </div>
                                                                <span class="circle-tag">
                                                                        <img src="assets/img/svg/010-heart.svg" alt="tag">
                                                                    </span>
                                                                <div class="restaurent-product-price">
                                                                    <h6 class="text-success fw-600 no-margin">$7.99+</h6>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="restaurent-product-img">
                                                            <img src="assets/img/dish/150x151/dish-1.jpg" class="img-fluid" alt="#">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>


                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3">
                <div class="sidebar">
                    <div class="video-box mb-xl-20">
                        <div class="video_wrapper video_wrapper_full js-videoWrapper">
                            <iframe class="videoIframe js-videoIframe" src="https://www.youtube.com/embed/AdZrEIo6UYU" data-src="https://www.youtube.com/embed/AdZrEIo6UYU?autoplay=1&amp;rel=0" allow="autoplay"></iframe>
                            <div class="videoPoster js-videoPoster">
                                <div class="video-inner">
                                    <i class="far fa-play-circle"></i>
                                </div>
                            </div>
                        </div>
                        <div class="discount-box main-box padding-tb-10">
                            <div class="discount-price padding-10">
                                <div class="left-side">
                                    <h6 class="text-light-black fw-600 no-margin">Watch Now and get 50% discount</h6>
                                    <p class="text-light-white no-margin">The hung-over foody (2019)</p>
                                </div>
                                <div class="right-side justify-content-end">
                                    <div class="dis-text">
                                        <span class="badge bg-light-green text-custom-white fw-400">Discount</span>
                                        <h4 class="text-light-black no-margin">50%</h4>
                                    </div>
                                    <a href="restaurent.html">
                                        <img src="assets/img/logo-3.jpg" class="img-fluid" alt="logo">
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="cart-detail-box">
                        <div class="card">
                            <div class="card-header padding-15 fw-700">Your Order</div>
                            <div class="card-body no-padding" id="scrollstyle-4">
                                <div class="cat-product-box">
                                    <div class="cat-product">
                                        <div class="cat-name">
                                            <a href="#">
                                                <p class="text-light-green fw-700"><span class="text-dark-white">1</span> Chilli Chicken Pizza</p> <span class="text-light-white fw-700">small, chilli chicken</span>
                                            </a>
                                        </div>
                                        <div class="delete-btn">
                                            <a href="#" class="text-dark-white"> <i class="far fa-trash-alt"></i>
                                            </a>
                                        </div>
                                        <div class="price"> <a href="#" class="text-dark-white fw-500">
                                            $2.25
                                        </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="cat-product-box">
                                    <div class="cat-product">
                                        <div class="cat-name">
                                            <a href="#">
                                                <p class="text-light-green fw-700"><span class="text-dark-white">1</span> Chilli Chicken Pizza</p> <span class="text-light-white fw-700">small, chilli chicken</span>
                                            </a>
                                        </div>
                                        <div class="delete-btn">
                                            <a href="#" class="text-dark-white"> <i class="far fa-trash-alt"></i>
                                            </a>
                                        </div>
                                        <div class="price"> <a href="#" class="text-dark-white fw-500">
                                            $2.25
                                        </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="cat-product-box">
                                    <div class="cat-product">
                                        <div class="cat-name">
                                            <a href="#">
                                                <p class="text-light-green fw-700"><span class="text-dark-white">1</span> Chilli Chicken Pizza</p> <span class="text-light-white fw-700">small, chilli chicken</span>
                                            </a>
                                        </div>
                                        <div class="delete-btn">
                                            <a href="#" class="text-dark-white"> <i class="far fa-trash-alt"></i>
                                            </a>
                                        </div>
                                        <div class="price"> <a href="#" class="text-dark-white fw-500">
                                            $2.25
                                        </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="cat-product-box">
                                    <div class="cat-product">
                                        <div class="cat-name">
                                            <a href="#">
                                                <p class="text-light-green fw-700"><span class="text-dark-white">1</span> Chilli Chicken Pizza</p> <span class="text-light-white fw-700">small, chilli chicken</span>
                                            </a>
                                        </div>
                                        <div class="delete-btn">
                                            <a href="#" class="text-dark-white"> <i class="far fa-trash-alt"></i>
                                            </a>
                                        </div>
                                        <div class="price"> <a href="#" class="text-dark-white fw-500">
                                            $2.25
                                        </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item-total">
                                    <div class="total-price border-0"> <span class="text-dark-white fw-700">Items subtotal:</span>
                                        <span class="text-dark-white fw-700">$9.00</span>
                                    </div>
                                    <div class="empty-bag padding-15 fw-700"> <a href="#">Empty bag</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer padding-15"> <a href="checkout.html" class="btn-first green-btn text-custom-white full-width fw-500">Proceed to Checkout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- restaurent meals -->
<!-- restaurent about -->
<section class="section-padding restaurent-about smoothscroll" id="about">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3 class="text-light-black fw-700 title">Great Burger Menu Info</h3>
                <p class="text-light-green no-margin">American, Breakfast, Coffee and Tea, Fast Food, Hamburgers</p>
                <p class="text-light-white no-margin">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <span class="text-success fs-16">$</span>
                <span class="text-success fs-16">$</span>
                <span class="text-success fs-16">$</span>
                <span class="text-dark-white fs-16">$</span>
                <span class="text-dark-white fs-16">$</span>
                <ul class="about-restaurent">
                    <li> <i class="fas fa-map-marker-alt"></i>
                        <span>
                <a href="#" class="text-light-white">
                  314 79th St<br>
                  Rite Aid, Brooklyn, NY, 11209
                </a>
              </span>
                    </li>
                    <li> <i class="fas fa-phone-alt"></i>
                        <span><a href="tel:" class="text-light-white">(347) 123456789</a></span>
                    </li>
                    <li> <i class="far fa-envelope"></i>
                        <span><a href="mailto:" class="text-light-white">demo@domain.com</a></span>
                    </li>
                </ul>
                <ul class="social-media pt-2">
                    <li> <a href="#"><i class="fab fa-facebook-f"></i></a>
                    </li>
                    <li> <a href="#"><i class="fab fa-twitter"></i></a>
                    </li>
                    <li> <a href="#"><i class="fab fa-instagram"></i></a>
                    </li>
                    <li> <a href="#"><i class="fab fa-pinterest-p"></i></a>
                    </li>
                    <li> <a href="#"><i class="fab fa-youtube"></i></a>
                    </li>
                </ul>
            </div>
            <div class="col-md-6">
                <div class="restaurent-schdule">
                    <div class="card">
                        <div class="card-header text-light-white fw-700 fs-16">Hours</div>
                        <div class="card-body">
                            <div class="schedule-box">
                                <div class="day text-light-black">Monday</div>
                                <div class="time text-light-black">Delivery: 7:00am - 10:59pm</div>
                            </div>
                            <div class="collapse" id="schdule">
                                <div class="schedule-box">
                                    <div class="day text-light-black">Tuesday</div>
                                    <div class="time text-light-black">Delivery: 7:00am - 10:00pm</div>
                                </div>
                                <div class="schedule-box">
                                    <div class="day text-light-black">Wednesday</div>
                                    <div class="time text-light-black">Delivery: 7:00am - 10:00pm</div>
                                </div>
                                <div class="schedule-box">
                                    <div class="day text-light-black">Thursday</div>
                                    <div class="time text-light-black">Delivery: 7:00am - 10:00pm</div>
                                </div>
                                <div class="schedule-box">
                                    <div class="day text-light-black">Friday</div>
                                    <div class="time text-light-black">Delivery: 7:00am - 10:00pm</div>
                                </div>
                                <div class="schedule-box">
                                    <div class="day text-light-black">Saturday</div>
                                    <div class="time text-light-black">Delivery: 7:00am - 10:00pm</div>
                                </div>
                                <div class="schedule-box">
                                    <div class="day text-light-black">Sunday</div>
                                    <div class="time text-light-black">Delivery: 7:00am - 10:00pm</div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer"> <a class="fw-500 collapsed" data-toggle="collapse" href="#schdule">See the full schedule</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- restaurent about -->
<!-- map gallery -->
<div class="map-gallery-sec section-padding bg-light-theme smoothscroll" id="mapgallery">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="main-box">
                    <div class="row">
                        <div class="col-md-6 map-pr-0">
                            <iframe id="locmap" src="https://maps.google.com/maps?q=university%20of%20san%20francisco&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed"></iframe>
                        </div>
                        <div class="col-md-6 map-pl-0">
                            <div class="gallery-box padding-10">
                                <ul class="gallery-img">
                                    <li>
                                        <a class="image-popup" href="assets/img/gallery/img-1.jpg" title="Image title">
                                            <img src="assets/img/gallery/img-1.jpg" class="img-fluid full-width" alt="9.jpg" />
                                        </a>
                                    </li>
                                    <li>
                                        <a class="image-popup" href="assets/img/gallery/img-2.jpg" title="Image title">
                                            <img src="assets/img/gallery/img-2.jpg" class="img-fluid full-width" alt="9.jpg" />
                                        </a>
                                    </li>
                                    <li>
                                        <a class="image-popup" href="assets/img/gallery/img-3.jpg" title="Image title">
                                            <img src="assets/img/gallery/img-3.jpg" class="img-fluid full-width" alt="9.jpg" />
                                        </a>
                                    </li>
                                    <li>
                                        <a class="image-popup" href="assets/img/gallery/img-4.jpg" title="Image title">
                                            <img src="assets/img/gallery/img-4.jpg" class="img-fluid full-width" alt="9.jpg" />
                                        </a>
                                    </li>
                                    <li>
                                        <a class="image-popup" href="assets/img/gallery/img-5.jpg" title="Image title">
                                            <img src="assets/img/gallery/img-5.jpg" class="img-fluid full-width" alt="9.jpg" />
                                        </a>
                                    </li>
                                    <li>
                                        <a class="image-popup" href="assets/img/gallery/img-6.jpg" title="Image title">
                                            <img src="assets/img/gallery/img-6.jpg" class="img-fluid full-width" alt="9.jpg" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- map gallery -->
<!-- restaurent reviews -->
<section class="section-padding restaurent-review smoothscroll" id="review">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-header-left">
                    <h3 class="text-light-black header-title title">Reviews for Great Burger</h3>
                </div>
                <div class="restaurent-rating mb-xl-20">
                    <div class="star"> <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-dark-white fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-dark-white fs-16">
                <i class="fas fa-star"></i>
              </span>
                    </div> <span class="fs-12 text-light-black">58 Ratings</span>
                </div>
                <p class="text-light-black mb-xl-20">Here's what people are saying:</p>
                <ul>
                    <li>
                        <h6 class="text-light-black mb-1">73%</h6>
                        <span class="text-light-black fs-12 fw-400">Food was good</span>
                    </li>
                    <li>
                        <h6 class="text-light-black mb-1">85%</h6>
                        <span class="text-light-black fs-12 fw-400">Delivery was on time</span>
                    </li>
                    <li>
                        <h6 class="text-light-black mb-1">68%</h6>
                        <span class="text-light-black fs-12 fw-400">Order was accurate</span>
                    </li>
                </ul>
                <div class="u-line"></div>
            </div>
            <div class="col-md-12">
                <div class="review-box">
                    <div class="review-user">
                        <div class="review-user-img">
                            <img src="assets/img/blog-details/40x40/user-1.png" class="rounded-circle" alt="#">
                            <div class="reviewer-name">
                                <p class="text-light-black fw-600">Sarra <small class="text-light-white fw-500">New York, (NY)</small>
                                </p> <i class="fas fa-trophy text-black"></i><span class="text-light-black">Top Reviewer</span>
                            </div>
                        </div>
                        <div class="review-date"> <span class="text-light-white">Sep 20, 2019</span>
                        </div>
                    </div>
                    <div class="ratings"> <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="ml-2 text-light-white">2 days ago</span>
                    </div>
                    <p class="text-light-black">Delivery was fast and friendly. Food was not great especially the salad. Will not be ordering from again. Too many options to settle for this place.</p> <span class="text-light-white fs-12 food-order">Kathy
              ordered:</span>
                    <ul class="food">
                        <li>
                            <button class="add-pro bg-gradient-red">Coffee <span class="close">+</span>
                            </button>
                        </li>
                        <li>
                            <button class="add-pro bg-dark">Pizza <span class="close">+</span>
                            </button>
                        </li>
                        <li>
                            <button class="add-pro bg-gradient-green">Noodles <span class="close">+</span>
                            </button>
                        </li>
                        <li>
                            <button class="add-pro bg-gradient-orange">Burger <span class="close">+</span>
                            </button>
                        </li>
                    </ul>
                </div>
                <div class="review-box">
                    <div class="review-user">
                        <div class="review-user-img">
                            <img src="assets/img/blog-details/40x40/user-2.png" class="rounded-circle" alt="#">
                            <div class="reviewer-name">
                                <p class="text-light-black fw-600">Sarra <small class="text-light-white fw-500">New York, (NY)</small>
                                </p> <i class="fas fa-trophy text-black"></i><span class="text-light-black">Top Reviewer</span>
                            </div>
                        </div>
                        <div class="review-date"> <span class="text-light-white">Sep 20, 2019</span>
                        </div>
                    </div>
                    <div class="ratings"> <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="ml-2 text-light-white">2 days ago</span>
                    </div>
                    <p class="text-light-black">Delivery was fast and friendly. Food was not great especially the salad. Will not be ordering from again. Too many options to settle for this place.</p> <span class="text-light-white fs-12 food-order">Kathy
              ordered:</span>
                    <ul class="food">
                        <li>
                            <button class="add-pro bg-gradient-red">Coffee <span class="close">+</span>
                            </button>
                        </li>
                        <li>
                            <button class="add-pro bg-dark">Pizza <span class="close">+</span>
                            </button>
                        </li>
                        <li>
                            <button class="add-pro bg-gradient-green">Noodles <span class="close">+</span>
                            </button>
                        </li>
                        <li>
                            <button class="add-pro bg-gradient-orange">Burger <span class="close">+</span>
                            </button>
                        </li>
                    </ul>
                </div>
                <div class="review-box">
                    <div class="review-user">
                        <div class="review-user-img">
                            <img src="assets/img/blog-details/40x40/user-1.png" class="rounded-circle" alt="#">
                            <div class="reviewer-name">
                                <p class="text-light-black fw-600">Sarra <small class="text-light-white fw-500">New York, (NY)</small>
                                </p> <i class="fas fa-trophy text-black"></i><span class="text-light-black">Top Reviewer</span>
                            </div>
                        </div>
                        <div class="review-date"> <span class="text-light-white">Sep 20, 2019</span>
                        </div>
                    </div>
                    <div class="ratings"> <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="text-yellow fs-16">
                <i class="fas fa-star"></i>
              </span>
                        <span class="ml-2 text-light-white">2 days ago </span>
                    </div>
                    <p class="text-light-black">Delivery was fast and friendly. Food was not great especially the salad. Will not be ordering from again. Too many options to settle for this place.</p> <span class="text-light-white fs-12 food-order">Kathy
              ordered:</span>
                    <ul class="food">
                        <li>
                            <button class="add-pro bg-gradient-red">Coffee <span class="close">+</span>
                            </button>
                        </li>
                        <li>
                            <button class="add-pro bg-dark">Pizza <span class="close">+</span>
                            </button>
                        </li>
                        <li>
                            <button class="add-pro bg-gradient-green">Noodles <span class="close">+</span>
                            </button>
                        </li>
                        <li>
                            <button class="add-pro bg-gradient-orange">Burger <span class="close">+</span>
                            </button>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-12">
                <div class="review-img">
                    <img src="assets/img/review-footer.png" class="img-fluid" alt="#">
                    <div class="review-text">
                        <h2 class="text-light-white mb-2 fw-600">Be one of the first to review</h2>
                        <p class="text-light-white">Order now and write a review to give others the inside scoop.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- restaurent reviews -->
<!-- offer near -->
<section class="fresh-deals section-padding">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-header-left">
                    <h3 class="text-light-black header-title title">Offers near you</h3>
                </div>
            </div>
            <div class="col-12">
                <div class="fresh-deals-slider swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="product-box">
                                <div class="product-img">
                                    <a href="restaurant.html">
                                        <img src="assets/img/restaurants/255x150/shop-10.jpg" class="img-fluid full-width" alt="product-img">
                                    </a>
                                </div>
                                <div class="product-caption">
                                    <div class="title-box">
                                        <h6 class="product-title"><a href="restaurant.html" class="text-light-black">Great Burger</a></h6>
                                    </div>
                                    <p class="text-light-white">American, Fast Food</p>
                                    <div class="product-details">
                                        <div class="price-time"> <span class="text-light-black time">30-40 min</span>
                                            <span class="text-light-white price">$10 min</span>
                                        </div>
                                        <div class="rating"> <span>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                        </span>
                                            <span class="text-light-white text-right">4225 ratings</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-footer-2">
                                    <div class="discount"> <span class="text-success fs-12">$3 off</span>
                                    </div>
                                    <div class="discount-coupon"> <span class="text-light-white fs-12">First order only</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-box">
                                <div class="product-img">
                                    <a href="restaurant.html">
                                        <img src="assets/img/restaurants/255x150/shop-11.jpg" class="img-fluid full-width" alt="product-img">
                                    </a>
                                </div>
                                <div class="product-caption">
                                    <div class="title-box">
                                        <h6 class="product-title"><a href="restaurant.html" class="text-light-black">Flavor Town</a></h6>
                                    </div>
                                    <p class="text-light-white">Breakfast, Lunch & Dinner</p>
                                    <div class="product-details">
                                        <div class="price-time"> <span class="text-light-black time">30-40 min</span>
                                            <span class="text-light-white price">$10 min</span>
                                        </div>
                                        <div class="rating"> <span>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                        </span>
                                            <span class="text-light-white text-right">4225 ratings</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-footer-2">
                                    <div class="discount"> <span class="text-success fs-12">$3 off</span>
                                    </div>
                                    <div class="discount-coupon"> <span class="text-light-white fs-12">First order only</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-box">
                                <div class="product-img">
                                    <a href="restaurant.html">
                                        <img src="assets/img/restaurants/255x150/shop-22.jpg" class="img-fluid full-width" alt="product-img">
                                    </a>
                                </div>
                                <div class="product-caption">
                                    <div class="title-box">
                                        <h6 class="product-title"><a href="restaurant.html" class="text-light-black">Big Bites</a></h6>
                                    </div>
                                    <p class="text-light-white">Pizzas, Fast Food</p>
                                    <div class="product-details">
                                        <div class="price-time"> <span class="text-light-black time">30-40 min</span>
                                            <span class="text-light-white price">$10 min</span>
                                        </div>
                                        <div class="rating"> <span>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                        </span>
                                            <span class="text-light-white text-right">4225 ratings</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-footer-2">
                                    <div class="discount"> <span class="text-success fs-12">$3 off</span>
                                    </div>
                                    <div class="discount-coupon"> <span class="text-light-white fs-12">First order only</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-box">
                                <div class="product-img">
                                    <a href="restaurant.html">
                                        <img src="assets/img/restaurants/255x150/shop-23.jpg" class="img-fluid full-width" alt="product-img">
                                    </a>
                                </div>
                                <div class="product-caption">
                                    <div class="title-box">
                                        <h6 class="product-title"><a href="restaurant.html" class="text-light-black">Smile N’ Delight</a></h6>
                                    </div>
                                    <p class="text-light-white">Desserts, Beverages</p>
                                    <div class="product-details">
                                        <div class="price-time"> <span class="text-light-black time">30-40 min</span>
                                            <span class="text-light-white price">$10 min</span>
                                        </div>
                                        <div class="rating"> <span>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                        </span>
                                            <span class="text-light-white text-right">4225 ratings</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-footer-2">
                                    <div class="discount"> <span class="text-success fs-12">$3 off</span>
                                    </div>
                                    <div class="discount-coupon"> <span class="text-light-white fs-12">First order only</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-box">
                                <div class="product-img">
                                    <a href="restaurant.html">
                                        <img src="assets/img/restaurants/255x150/shop-24.jpg" class="img-fluid full-width" alt="product-img">
                                    </a>
                                </div>
                                <div class="product-caption">
                                    <div class="title-box">
                                        <h6 class="product-title"><a href="restaurant.html" class="text-light-black">Lil Johnny’s</a></h6>
                                    </div>
                                    <p class="text-light-white">Continental & Mexican</p>
                                    <div class="product-details">
                                        <div class="price-time"> <span class="text-light-black time">30-40 min</span>
                                            <span class="text-light-white price">$10 min</span>
                                        </div>
                                        <div class="rating"> <span>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                          <i class="fas fa-star text-yellow"></i>
                        </span>
                                            <span class="text-light-white text-right">4225 ratings</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-footer-2">
                                    <div class="discount"> <span class="text-success fs-12">$3 off</span>
                                    </div>
                                    <div class="discount-coupon"> <span class="text-light-white fs-12">First order only</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Add Arrows -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- offer near -->
<!-- footer -->
<div class="footer-top section-padding">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2 col-sm-4 col-6 mb-sm-20">
                <div class="icon-box"> <span class="text-light-green"><i class="flaticon-credit-card-1"></i></span>
                    <span class="text-light-black">100% Payment<br>Secured</span>
                </div>
            </div>
            <div class="col-md-2 col-sm-4 col-6 mb-sm-20">
                <div class="icon-box"> <span class="text-light-green"><i class="flaticon-wallet-1"></i></span>
                    <span class="text-light-black">Support lots<br> of Payments</span>
                </div>
            </div>
            <div class="col-md-2 col-sm-4 col-6 mb-sm-20">
                <div class="icon-box"> <span class="text-light-green"><i class="flaticon-help"></i></span>
                    <span class="text-light-black">24 hours / 7 days<br>Support</span>
                </div>
            </div>
            <div class="col-md-2 col-sm-4 col-6">
                <div class="icon-box"> <span class="text-light-green"><i class="flaticon-truck"></i></span>
                    <span class="text-light-black">Free Delivery<br>with $50</span>
                </div>
            </div>
            <div class="col-md-2 col-sm-4 col-6">
                <div class="icon-box"> <span class="text-light-green"><i class="flaticon-guarantee"></i></span>
                    <span class="text-light-black">Best Price<br>Guaranteed</span>
                </div>
            </div>
            <div class="col-md-2 col-sm-4 col-6">
                <div class="icon-box"> <span class="text-light-green"><i class="flaticon-app-file-symbol"></i></span>
                    <span class="text-light-black">Mobile Apps<br>Ready</span>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="section-padding bg-light-theme pt-0 u-line">
    <div class="u-line instagram-slider swiper-container">
        <ul class="hm-list hm-instagram swiper-wrapper">
            <li class="swiper-slide">
                <a href="#"><img src="assets/img/restaurants/250x200/insta-3.jpg" alt="instagram"></a>
            </li>
            <li class="swiper-slide">
                <a href="#"><img src="assets/img/restaurants/250x200/insta-1.jpg" alt="instagram"></a>
            </li>
            <li class="swiper-slide">
                <a href="#"><img src="assets/img/restaurants/250x200/insta-2.jpg" alt="instagram"></a>
            </li>
            <li class="swiper-slide">
                <a href="#"><img src="assets/img/restaurants/250x200/insta-4.jpg" alt="instagram"></a>
            </li>
            <li class="swiper-slide">
                <a href="#"><img src="assets/img/restaurants/250x200/insta-5.jpg" alt="instagram"></a>
            </li>
            <li class="swiper-slide">
                <a href="#"><img src="assets/img/restaurants/250x200/insta-6.jpg" alt="instagram"></a>
            </li>
            <li class="swiper-slide">
                <a href="#"><img src="assets/img/restaurants/250x200/insta-7.jpg" alt="instagram"></a>
            </li>
            <li class="swiper-slide">
                <a href="#"><img src="assets/img/restaurants/250x200/insta-8.jpg" alt="instagram"></a>
            </li>
        </ul>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl col-lg-4 col-md-4 col-sm-6">
                <div class="footer-contact">
                    <h6 class="text-light-black">Need Help</h6>
                    <ul>
                        <li class="fw-600"><span class="text-light-white">Call Us</span> <a href="tel:" class="text-light-black">+(347) 123 456 789</a>
                        </li>
                        <li class="fw-600"><span class="text-light-white">Email Us</span> <a href="mailto:" class="text-light-black">demo@domain.com</a>
                        </li>
                        <li class="fw-600"><span class="text-light-white">Join our twitter</span> <a href="#" class="text-light-black">@munchbox</a>
                        </li>
                        <li class="fw-600"><span class="text-light-white">Join our instagram</span> <a href="#" class="text-light-black">@munchbox</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xl col-lg-4 col-md-4 col-sm-6">
                <div class="footer-links">
                    <h6 class="text-light-black">Get to Know Us</h6>
                    <ul>
                        <li><a href="#" class="text-light-white fw-600">About Us</a>
                        </li>
                        <li><a href="#" class="text-light-white fw-600">Blog</a>
                        </li>
                        <li><a href="#" class="text-light-white fw-600">Socialize</a>
                        </li>
                        <li><a href="#" class="text-light-white fw-600">Munchbox</a>
                        </li>
                        <li><a href="#" class="text-light-white fw-600">Perks</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xl col-lg-4 col-md-4 col-sm-6">
                <div class="footer-links">
                    <h6 class="text-light-black">Let Us Help You</h6>
                    <ul>
                        <li><a href="#" class="text-light-white fw-600">Account Details</a>
                        </li>
                        <li><a href="#" class="text-light-white fw-600">Order History</a>
                        </li>
                        <li><a href="#" class="text-light-white fw-600">Find restaurant</a>
                        </li>
                        <li><a href="#" class="text-light-white fw-600">Login</a>
                        </li>
                        <li><a href="#" class="text-light-white fw-600">Track order</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xl col-lg-4 col-md-4 col-sm-6">
                <div class="footer-links">
                    <h6 class="text-light-black">Doing Business</h6>
                    <ul>
                        <li><a href="#" class="text-light-white fw-600">Suggest an Idea</a>
                        </li>
                        <li><a href="#" class="text-light-white fw-600">Be a Partner restaurant</a>
                        </li>
                        <li><a href="#" class="text-light-white fw-600">Create an Account</a>
                        </li>
                        <li><a href="#" class="text-light-white fw-600">Help</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xl col-lg-4 col-md-4 col-sm-6">
                <div class="footer-links">
                    <h6 class="text-light-black">Download Apps</h6>
                    <div class="appimg">
                        <a href="#">
                            <img src="assets/img/playstore.jpg" class="img-fluid" alt="app logo">
                        </a>
                    </div>
                    <div class="appimg">
                        <a href="#">
                            <img src="assets/img/appstore.jpg" class="img-fluid" alt="app logo">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-xl col-lg-4 col-md-4 col-sm-6">
                <div class="footer-contact">
                    <h6 class="text-light-black">Newsletter</h6>
                    <form class="subscribe_form">
                        <div class="input-group">
                            <input type="text" class="form-control form-control-submit" name="email" placeholder="Enter your email">
                            <span class="input-group-btn">
                      <button class="btn btn-second btn-submit" type="button"><i class="fas fa-paper-plane"></i></button>
                 </span>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-12">
                <div class="ft-social-media">
                    <h6 class="text-center text-light-black">Follow us</h6>
                    <ul>
                        <li> <a href="#"><i class="fab fa-facebook-f"></i></a>
                        </li>
                        <li> <a href="#"><i class="fab fa-twitter"></i></a>
                        </li>
                        <li> <a href="#"><i class="fab fa-instagram"></i></a>
                        </li>
                        <li> <a href="#"><i class="fab fa-pinterest-p"></i></a>
                        </li>
                        <li> <a href="#"><i class="fab fa-youtube"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="copyright">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4">
                <div class="payment-logo mb-md-20"> <span class="text-light-white fs-14 mr-3">We are accept</span>
                    <div class="payemt-icon">
                        <img src="assets/img/card-front.jpg" alt="#">
                        <img src="assets/img/visa.jpg" alt="#">
                        <img src="assets/img/amex-card-front.png" alt="#">
                        <img src="assets/img/mastercard.png" alt="#">
                    </div>
                </div>
            </div>
            <div class="col-lg-4 text-center medewithlove align-self-center">
                <a href="http://www.slidesigma.com/" class="text-light-black">Made with Real <i class="fas fa-heart"></i> Slidesigma</a>
            </div>
            <div class="col-lg-4">
                <div class="copyright-text"> <span class="text-light-black"><a href="templateshub.net">Templates Hub</a> </span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- footer -->
<!-- modal boxes -->
<div class="modal fade" id="address-box">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title fw-700">Change Address</h4>
            </div>
            <div class="modal-body">
                <div class="location-picker">
                    <input type="text" class="form-control" placeholder="Enter a new address">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="search-box">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="search-box p-relative full-width">
                    <input type="text" class="form-control" placeholder="Pizza, Burger, Chinese">
                </div>
            </div>
            <div class="modal-body"></div>
        </div>
    </div>
</div>
<!-- product popup -->
<div class="modal fade restaurent-popup" id="restaurent-popup">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <img src="https://via.placeholder.com/800x200" class="img-fluid full-width" alt="#">
            </div>
            <div class="modal-body">
                <div class="name padding-10">
                    <h3 class="text-light-black fw-700 mb-2" id="product-name">Sausage Egg McMuffin - Meal</h3>
                    <h5 class="text-light-black fw-600 no-margin" id="product-price">$7.40</h5>
                </div>
                <div class="padding-10">
                    <p class="text-light-black no-margin">600-770 Cal.</p>
                </div>
                <div class="u-line">
                    <div class="product-quantity padding-10"> <span class="text-light-black fw-700 fs-16">Quantity</span>
                        <div class="input-group quantity">
                            <div class="input-group-append">
                                <button class="minus-btn" type="button" name="button"> <i class="fas fa-minus"></i>
                                </button>
                            </div>
                            <input type="text" class="text-center" name="name" value="1">
                            <div class="input-group-prepend">
                                <button class="plus-btn" type="button" name="button"><i class="fas fa-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- sub product -->
                <div class="additional-product">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="no-margin">
                                <a class="card-link collapsed text-light-black fw-700" data-toggle="collapse" href="#additionalOne">
                                        <span>Select Breakfast Drink
                      <span class="text-light-white fw-500 fs-12 padding-tb-10">Select one (Required)</span></span>
                                </a>
                            </h5>
                        </div>
                        <div id="additionalOne" class="collapse">
                            <div class="card-body padding-10">
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <h5 class="no-margin">
                                <a class="card-link collapsed text-light-black fw-700" data-toggle="collapse" href="#additionalTwo">
                                        <span>Select Breakfast Drink
                      <span class="text-light-white fw-500 fs-12 padding-tb-10">Select one (Required)</span></span>
                                </a>
                            </h5>
                        </div>
                        <div id="additionalTwo" class="collapse">
                            <div class="card-body padding-10">
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <h5 class="no-margin">
                                <a class="card-link collapsed text-light-black fw-700" data-toggle="collapse" href="#additionalThree">
                                        <span>Select Breakfast Drink
                      <span class="text-light-white fw-500 fs-12 padding-tb-10">Select one (Required)</span></span>
                                </a>
                            </h5>
                        </div>
                        <div id="additionalThree" class="collapse">
                            <div class="card-body padding-10">
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <h5 class="no-margin">
                                <a class="card-link collapsed text-light-black fw-700" data-toggle="collapse" href="#additionalFour">
                                        <span>Select Breakfast Drink
                      <span class="text-light-white fw-500 fs-12 padding-tb-10">Select one (Required)</span></span>
                                </a>
                            </h5>
                        </div>
                        <div id="additionalFour" class="collapse">
                            <div class="card-body padding-10">
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                                <button class="add-pro">Small Premium Roast Coffee (0 Cal.) <span>+$0.59</span>
                                    <span class="close">+</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- sub product -->
            </div>
            <div class="modal-footer padding-10">
                <button class="btn-second btn-submit">Add Bag : $7.40</button>
            </div>
        </div>
    </div>
</div>
<!-- Place all Scripts Here -->
<!-- jQuery -->
<script src="${BASE_URL}assets/js/jquery.min.js"></script>
<!-- Popper -->
<script src="${BASE_URL}assets/js/popper.min.js"></script>
<!-- Bootstrap -->
<script src="${BASE_URL}assets/js/bootstrap.min.js"></script>
<!-- Range Slider -->
<script src="${BASE_URL}assets/js/ion.rangeSlider.min.js"></script>
<!-- Swiper Slider -->
<script src="${BASE_URL}assets/js/swiper.min.js"></script>
<!-- Nice Select -->
<script src="${BASE_URL}assets/js/jquery.nice-select.min.js"></script>
<!-- magnific popup -->
<script src="${BASE_URL}assets/js/jquery.magnific-popup.min.js"></script>
<!-- Maps -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnd9JwZvXty-1gHZihMoFhJtCXmHfeRQg"></script>
<!-- sticky sidebar -->
<script src="${BASE_URL}assets/js/sticksy.js"></script>
<!-- Munch Box Js -->
<script src="${BASE_URL}assets/js/munchbox.js"></script>
<!-- /Place all Scripts Here -->
<script>
    $(document).ready(function () {
        // Handle click event on the product name link
        $('h6[data-toggle="modal"] a').on('click', function () {
            // Retrieve the product ID from the data attribute
            var productId = $(this).data('product-id');

            // Fetch product details using AJAX (replace this with your actual data source)
            $.ajax({
                url: '/path/to/your/api/endpoint', // Replace with your API endpoint
                method: 'GET',
                data: { productId: productId },
                success: function (data) {
                    // Populate the modal with the fetched data
                    $('#product-name').text(data.name);
                    $('#product-price').text('$' + data.price); // Replace 'data.price' with the actual price property


                    // Add code here to populate other elements with product details
                },
                error: function () {
                    // Handle error if the product details cannot be fetched
                    alert('Failed to retrieve product details.');
                }
            });
        });
    });
</script>

</body>


<!-- munchbox/restaurant.html  05 Dec 2019 10:14:41 GMT -->
</html>
