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

<h1>Add New Restaurant</h1>

<%--Note that the `commandName` given here HAS TO MATCH the name of the attribute--%>
<%--that is added to the model that is passed to the view.--%>
<%--See PostitNoteController, method postitNoteViewGet(), and find where this attribute is added to the model.--%>
<sf:form method="POST" commandName="restaurant" action="/add">

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

</body>
</html>
