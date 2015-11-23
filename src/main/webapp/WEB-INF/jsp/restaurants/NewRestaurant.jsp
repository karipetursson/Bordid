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
<!-- Header -->
<header id="header" class="alt">
    <h1><a href="/">Borðið</a></h1>
    <nav id="nav">
        <ul>
            <li><a href="/addNewRestaurant">New Restaurant</a></li>
            <li><a href="/restaurants">All Restaurants</a></li>
            <li><a href="/bookings">Bookings</a></li>

            <li><a href="/about">About</a></li>
        </ul>
    </nav>
</header>

<div class="wrapper style11">
    <div>


        <%--Note that the `commandName` given here HAS TO MATCH the name of the attribute--%>
        <%--that is added to the model that is passed to the view.--%>
        <%--See PostitNoteController, method postitNoteViewGet(), and find where this attribute is added to the model.--%>
        <sf:form method="POST" commandName="restaurant" action="/addNewRestaurant" id="newRestForm">

        <div class="control-group" id="name">
            <label class="control-label">Name: *</label>
            <div class="controls">
                <sf:input path="name" type="text" placeholder="Enter name"/>
            </div>
        </div>

        <div class="control-group" id="houseaddress">
            <label class="control-label">Address: *</label>
            <div class="controls">
                <sf:input path="address" type="text" placeholder="Enter address"/>
            </div>
        </div>

        <div class="control-group" id="zipcode">
            <label class="control-label">Location: *</label>
            <div class="controls">
                <sf:input path="location" type="text" placeholder="Enter location"/>
            </div>
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

        <div class="control-group">
            <label class="control-label">
                Link to homepage:
            </label>
            <div class="controls">
                <sf:input path="linkToHomepage" type="text" placeholder="Enter link to homepage"/>
            </div>
        </div>




        <input type="submit" VALUE="Add new restaurant"/>
    </div>
    </sf:form>

</div></div>
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
