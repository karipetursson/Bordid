<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <title>All Restaurants</title>

    <link href="css/postitnote.css" rel="stylesheet">
</head>

<body>

<a href="/">Homepage</a>

<h1><a href="/restaurants">All Restaurants</a></h1>

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
                    <td><a href="/restaurants/${restaurant.name}_${restaurant.location}">${restaurant.name}</a></td>
                        <%--The String in the note attribute--%>
                    <td>${restaurant.location}</td>

                    <td>${restaurant.description}</td>

                    <td><a href="/bookRestaurant/${restaurant.name}_${restaurant.location}">Book</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:when>

    <%--If all tests are false, then do this--%>
    <c:otherwise>
        <h3>We have no restaurants!</h3>
    </c:otherwise>
</c:choose>

</body>
</html>
