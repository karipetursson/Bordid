<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html>

<head>

    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>Borðið</title>

    <script type="text/javascript" src="bootstrap/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="<c:url value='../../bootstrap/css/bootstrap.min.css'/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value='../../bootstrap/css/bootstrap-theme.min.css'/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value='../../bootstrap/css/custom.css'/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value='../../css/postitnote.css'/> ">
    <link rel="stylesheet" href="animate.min.css">

</head>
<body>
<!-- Header -->
<header id="header" class="alt">
    <h1><a href="/">Borðið</a></h1>
    <nav id="nav">
        <ul>
            <li><a href="/addNewRestaurant">New Restaurant</a></li>
            <li><a href="/restaurants">Restaurants</a></li>
            <li><a href="/bookings">Bookings</a></li>
            <li><a href="/about">About</a></li>
        </ul>
    </nav>
</header>

<%--Note that the `commandName` given here HAS TO MATCH the name of the attribute--%>
<%--that is added to the model that is passed to the view.--%>
<%--See PostitNoteController, method postitNoteViewGet(), and find where this attribute is added to the model.--%>

<div class="wrapper style11">

        <sf:form method="POST" commandName="restaurant" action="/restaurants">

</sf:form>
    <div class="restaurantWrap">
        <div class="rowInfo">
            <div id = "restName">
                <h3 id ="restHeading">${restaurant.name}</h3>
            </div>
            <div class="restInfo"><p class="pInfo">Location: </p><p class="pDescription1">${restaurant.address},
                ${restaurant.location}</p>
            </div>
            <div class="restInfo"><p class="pInfo">Rating: </p><p class="pDescription1">${restaurant.rating}</p></div>

            <div class="restInfo"><p class="pDescription">${restaurant.longDescription}</p></div>
            <div class="restInfo"><p class="pInfo">Link: </p><p class="pDescription1"><a href="https://${restaurant.linkToHomepage}">${restaurant.linkToHomepage}</a></p></div>
        </div>
    </div>
</div>
<!-- Footer -->
<footer id="footer">
    <ul class="menu">
        <li><a href="#">About</a></li>
        <li><a href="#">Terms of Use</a></li>
        <li><a href="#">Privacy Policy</a></li>
        <li><a href="#">Contact Us</a></li>
    </ul>
    <div class="copyright">
        &copy; Bordid. All rights reserved.
    </div>
</footer>

</body>


</html>
