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

    <link rel="stylesheet" type="text/css" href="<c:url value='../../../bootstrap/css/bootstrap.min.css'/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value='../../../bootstrap/css/bootstrap-theme.min.css'/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value='../../../bootstrap/css/custom.css'/> ">


</head>

<body>

<!-- Header-->
<header id="header" class="alt">
    <h1><a href="/">Borðið</a></h1>
    <nav id="nav">
        <ul>
            <li><a href="/">Home</a></li>
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
<sf:form method="POST" commandName="booking" action="/bookings">

    <div class="featurette" id ="skitmix">
        <div class="featurette-inner text-center">
            <form role="form" class="search">
                <div class="input-group input-group-lg">
                    <sf:input path="restaurantName" type="text" placeholder="Enter name" class="form-control"/>
                    <span class="input-group-btn">
                        <input type="submit" VALUE="Search!" class="btn btn-danger"/>
                    </span>
                </div>
            </form>
        </div>
    </div>

</sf:form>


<%--Choose what code to generate based on tests that we implement--%>
<c:choose>
    <%--If the model has an attribute with the name `postitNotes`--%>
    <c:when test="${not empty bookings}">

        <div>

            <c:forEach var="booking" items="${bookings}">

                <div class="restaurant">

                    <div class="row">

                        <div class="col-md-3"></div>

                        <div class="col-md-6">

                            <h3>${booking.restaurantName}</h3>

                        </div>

                        <div class="col-md-6"></div>

                    </div>

                    <div class="row">

                        <div class="col-md-3"></div>

                        <div class="col-md-6">

                            <p>${booking.customerName}</p>

                        </div>

                        <div class="col-md-6"></div>

                    </div>

                    <div class="row">

                        <div class="col-md-3"></div>

                        <div class="col-md-6">

                            <p>${booking.date}</p>

                        </div>

                        <div class="col-md-6"></div>

                    </div>

                </div>

            </c:forEach>

        </div>



    </c:when>

    <%--If all tests are false, then do this--%>
    <c:otherwise>
        <h4 id="bookingSearch">Please search by your name or a restaurant name</h4>
    </c:otherwise>
</c:choose>
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
