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

    <div class="featurette">
        <div class="featurette-inner text-center">
            <form role="form" class="search">
                <div class="input-group input-group-lg">
                    <sf:input path="name" type="text" placeholder="Enter Restaurant name" class="form-control"/>
                    <span class="input-group-btn">
                        <input type="submit" VALUE="Search!" class="btn btn-danger"/>
                    </span>
                </div>
                <!-- /input-group -->
            </form>
            <!-- /.max-width on this form -->
        </div>
        <!-- /.featurette-inner (display:table-cell) -->
    </div>

    </sf:form>


    <%--Choose what code to generate based on tests that we implement--%>
    <c:choose>
        <%--If the model has an attribute with the name `postitNotes`--%>
        <c:when test="${not empty restaurants}">

            <div>

                <c:forEach var="restaurant" items="${restaurants}">

                    <div class="restaurantWrap">

                        <div class="row">
                            <div id = "restName">
                                <h3 id ="restHeading"><a href="/restaurantInfo/${restaurant.id}">${restaurant.name}</a></h3>
                                <a href="/bookRestaurant/${restaurant.name}"> <input type="submit" VALUE="Book" id="restBook"/></a>

                            </div>





                            <p>${restaurant.address}</p>

                            <p id = "location">${restaurant.location}</p>

                            <p>${restaurant.shortDescription}</p>


                        </div>

                    </div>







                    </div>

                </c:forEach>

            </div>



        </c:when>

        <%--If all tests are false, then do this--%>
        <c:otherwise>
            <h3>We have no restaurants!</h3>
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
