<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CRUD Application</title>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
</head>
<body>
<div class="form-content">
    <form:form id="UserRegisterForm" modelAttribute="user" method="post" action="saveUser">
        <div class="form-group">
            <div class="form-row">
                <form:label path="name">Name</form:label>
            </div>
                <form:hidden path="id" value="${userObject.id}"/>
                <form:input path="name" value="${userObject.name}"/>
        </div>

        <div class="form-group">
            <div class="form-row">
                <form:label path="age">Age</form:label>
            </div>
                <form:input path="age" value="${userObject.age}"/>
        </div>

        <div class="form-group">
            <div class="form-row">
                <form:label path="isAdmin">Admin status</form:label>
            </div>
                <form:input path="isAdmin" value="${userObject.isAdmin}"/>
        </div>
        <div class="form-group">
            <div class="form-submit-button">
                <input type="submit" id="saveUser" value="Save" onclick="return submitUserForm();"/>
            </div>
        </div>
    </form:form>
</div>
<div id="review_form_overlay"></div>
</body>
</html>
