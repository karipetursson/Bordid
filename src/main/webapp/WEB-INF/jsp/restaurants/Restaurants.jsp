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

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Borðið</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/addNewRestaurant">Add New Restaurant</a></li>
                <li><a href="/restaurants">All Restaurants</a></li>
                <li><a href="/bookings">All Bookings</a></li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Settu inn leitarorð">
                </div>
                <button type="submit" class="btn btn-default">Leita</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/about">About</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<%--Note that the `commandName` given here HAS TO MATCH the name of the attribute--%>
<%--that is added to the model that is passed to the view.--%>
<%--See PostitNoteController, method postitNoteViewGet(), and find where this attribute is added to the model.--%>
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
        <%--Create a table for the Postit Notes--%>
        <table class="notes">

                <%--For each postit note, that is in the list that was passed in the model--%>
                <%--generate a row in the table--%>
                <%--Here we set `postit` as a singular item out of the list `postitNotes`--%>
            <c:forEach var="restaurant" items="${restaurants}">
                <tr>
                        <%--We can reference attributes of the Entity by just entering the name we gave--%>
                        <%--it in the singular item var, and then just a dot followed by the attribute name--%>

                        <%--Create a link based on the name attribute value--%>
                    <td><a href="/restaurantInfo/${restaurant.name}">${restaurant.name}</a></td>
                        <%--The String in the note attribute--%>
                    <td>${restaurant.address}</td>

                    <td>${restaurant.location}</td>

                    <td>${restaurant.shortDescription}</td>

                    <td><a href="/bookRestaurant/${restaurant.name}">Book</a></td>
                </tr>
            </c:forEach>
        </table>


        <div>

            <c:forEach var="restaurant" items="${restaurants}">

                <div class="restaurant">

                    <div class="row">

                        <div class="col-md-3"></div>

                        <div class="col-md-6">

                            <h3>${restaurant.name}</h3>

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

                </div>

            </c:forEach>

        </div>



    </c:when>

    <%--If all tests are false, then do this--%>
    <c:otherwise>
        <h3>We have no restaurants!</h3>
    </c:otherwise>
</c:choose>

</body>
</html>
