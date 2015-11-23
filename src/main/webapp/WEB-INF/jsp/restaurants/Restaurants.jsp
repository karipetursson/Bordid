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

        <table>
            <tr>
                <td> Restaurant:</td>
                    <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:input path="name" type="text" placeholder="Enter name"/></td>
            </tr>
        </table>

        <input type="submit" VALUE="Search!"/>

    </sf:form>

    <%--Choose what code to generate based on tests that we implement--%>
    <c:choose>
        <%--If the model has an attribute with the name `postitNotes`--%>
        <c:when test="${not empty restaurants}">

            <div>

                <c:forEach var="restaurant" items="${restaurants}">

                    <div class="restaurant">

                        <div class="row">

                            <div class="col-md-3"></div>

                            <div class="col-md-6">

                                <h3><a href="/restaurantInfo/${restaurant.name}">${restaurant.name}</a></h3>

                            </div>

                            <div class="col-md-6"></div>

                        </div>

                        <div class="row">

                            <div class="col-md-3"></div>

                            <div class="col-md-6">

                                <p>${restaurant.address}</p>

                            </div>

                            <div class="col-md-6"></div>

                        </div>

                        <div class="row">

                            <div class="col-md-3"></div>

                            <div class="col-md-6">

                                <p>${restaurant.location}</p>

                            </div>

                            <div class="col-md-6"></div>

                        </div>

                        <div class="row">

                            <div class="col-md-3"></div>

                            <div class="col-md-6">

                                <p>${restaurant.shortDescription}</p>

                            </div>

                            <div class="col-md-6"></div>

                        </div>

                        <div class="row">

                            <div class="col-md-3"></div>

                            <div class="col-md-6">

                                <p><a href="/bookRestaurant/${restaurant.name}">Book this restaurant</a></p>

                            </div>

                            <div class="col-md-6"></div>

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
