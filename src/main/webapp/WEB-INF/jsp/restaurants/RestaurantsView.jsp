<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <title>Restaurants</title>

    <link href="css/postitnote.css" rel="stylesheet">
</head>
<body>

<h1><a href="/restaurant">Restaurants</a></h1>

<%--Note that the `commandName` given here HAS TO MATCH the name of the attribute--%>
<%--that is added to the model that is passed to the view.--%>
<%--See PostitNoteController, method postitNoteViewGet(), and find where this attribute is added to the model.--%>
<sf:form method="POST" commandName="restaurant" action="/restaurant">

    <table>
        <tr>
            <td> Name:</td>
                <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
            <td><sf:input path="name" type="text" placeholder="Enter name"/></td>
        </tr>
        <tr>
            <td>Notes:</td>
                <%--the `path` attribute matches the `note` attribute of the Entity that was passed in the model--%>
            <td><sf:textarea path="note" type="text" placeholder="Note text here"/></td>
        </tr>
    </table>

    <input type="submit" VALUE="Add new restaurant!"/>

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
                    <td><a href="/restaurant/${restaurant.name}">${restaurant.name}</a></td>
                        <%--The String in the note attribute--%>
                    <td>${restaurant.note}</td>
                </tr>
            </c:forEach>
        </table>
    </c:when>

    <%--If all tests are false, then do this--%>
    <c:otherwise>
        <h3>No restaurants!</h3>
    </c:otherwise>
</c:choose>

</body>
</html>
