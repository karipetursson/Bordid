<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <title>Form</title>
</head>
<body>

<h1>Form Example</h1>

<sf:form method="post" action="/form">
    <label>First Input
            <%--The `name` that you give the input field is important!--%>
            <%--That `name` value is how you can identify that particular form--%>
            <%--element in the controller that receives the POST request--%>
        <input type="text" name="firstInput"/>
    </label>

    <label>Second Input
        <input type="text" name="secondInput"/>
    </label>

    <%--Submit the form--%>
    <input type="submit" value="POST form to backend"/>
</sf:form>

<%--The taglibrary for `c` (see line 4 of the file) enables us to put logic into our JSP files--%>
<%--Here we check if the model attribute is empty or not, and if it is NOT EMPTY, then we do--%>
<%--the stuff that is between the `c:if` and `/c:if`--%>
<c:if test="${not empty textSentFromBackend}">
    <h3>${textSentFromBackend}</h3>
</c:if>

</body>
</html>
