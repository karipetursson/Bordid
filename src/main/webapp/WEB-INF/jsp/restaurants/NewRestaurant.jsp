<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>


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

    <sf:form method="POST" commandName="restaurant" action="/addNewRestaurant" id="newRestForm">

        <h1>Please enter restaurant details below</h1>
        <p>Fields marked with * must be filled out</p>

        <div class="control-group" id="name">

            <label class="control-label">Name: *</label>
            <div class="controls">
                <sf:input path="name" type="text" placeholder="Enter name"/>
            </div>

            <c if test="${not empty nameError}">
                ${nameError}
            </c>

        </div>

        <div class="control-group" id="houseaddress">

            <label class="control-label">Address: *</label>
            <div class="controls">
                <sf:input path="address" type="text" placeholder="Enter address"/>
            </div>
            <c if test="${not empty addressError}">
                ${addressError}
            </c>

        </div>

        <div class="control-group" id="zipcode">

            <label class="control-label">Location: *</label>
            <div class="controls">
                <sf:input path="location" type="text" placeholder="Enter location"/>
            </div>

            <c if test="${not empty locationError}">
                ${locationError}
            </c>

        </div>

        <div class="control-group">
            <label class="control-label">
                Short Description:
            </label>
            <div class="controls">
                <sf:textarea path="shortDescription" type="text" placeholder="Enter short description"/>
            </div>
        </div>

        <div class="control-group">

            <label class="control-label">
                Long Description:
            </label>

            <div class="controls">
                <sf:textarea path="longDescription" type="text" placeholder="Enter long description"/>
            </div>

        </div>

        <div class="control-group" id="rating">
            <label class="control-label">Rating: * (Between 1 and 5)</label>
            <div class="controls">
                <sf:input path="rating" type="number"  value="1" step="0.5" min="1.0" max="5.0"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">
                Link to homepage:
            </label>
            <div class="controls">
                <sf:input path="linkToHomepage" type="text" placeholder="Enter link to homepage"/>
            </div>
        </div>


        <input type="submit" VALUE="Add new restaurant" id="addRestaurant"/>

        </sf:form>
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
