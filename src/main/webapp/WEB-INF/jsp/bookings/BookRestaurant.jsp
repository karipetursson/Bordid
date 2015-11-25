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
            <li><a href="/addNewRestaurant">New Restaurant</a></li>
            <li><a href="/restaurants">Restaurants</a></li>
            <li><a href="/bookings">Bookings</a></li>

            <li><a href="/about">About</a></li>
        </ul>
    </nav>
</header>

<div class="wrapper style11">
    <div>
        <sf:form method="POST" commandName="booking" action="/bookRestaurant" id="newRestForm">

            <div class="control-group" id="name">
                <label class="control-label">Restaurant name: *</label>
                <div class="controls">
                    <sf:input path="restaurantName" type="text" readonly="true"  value="${name}"/>
                </div>
                <label class="control-label">Full name: *</label>
                <div class="controls">
                    <sf:input path="customerName" type="text" placeholder="Enter full name"/>
                </div>

                <label class="control-label">Email: *</label>
                <div class="controls">
                    <sf:input path="email" type="text" placeholder="Enter your e-mail"/>
                </div>

                <div class="control">
                    <script>
                    $(function() {
                        $( "#datepicker" ).datepicker();
                        inline: true
                                showOtherMonths: true
                                dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
                    });
                </script>
                    Date: <sf:input path="date" type="text" id="datepicker"/>
                </div>
            </div>

    <input type="submit" VALUE="Book a table"/>

</sf:form>
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
