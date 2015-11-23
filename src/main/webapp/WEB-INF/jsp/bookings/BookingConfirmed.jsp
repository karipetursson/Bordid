<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>

    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>All Restaurants</title>

    <link rel="stylesheet" type="text/css" href="<c:url value='../../../css/postitnote.css'/> ">

    <script type="text/javascript" src="bootstrap/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

    <link rel="stylesheet" type="text/css" href="<c:url value='../../../bootstrap/css/bootstrap.min.css'/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value='../../../bootstrap/css/bootstrap-theme.min.css'/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value='../../../bootstrap/css/custom.css'/> ">


</head>

<body>

<!-- Header -->
<header id="header" class="alt">
    <h1><a href="/">Borðið</a></h1>
    <nav id="nav">
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/addNewRestaurant">Add New Restaurant</a></li>
            <li><a href="/restaurants">All Restaurants</a></li>
            <li><a href="/bookings">Bookings</a></li>
            <li><a href="/about">About</a></li>
        </ul>
    </nav>
</header>

<p>Congratulations, you have booked a table at ${booking.restaurantName}</p>

</body>
</html>
