<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CRUD Application</title>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>
<body>
    <div class="header">
        <div class="header-panel filter-user">
            <form action="filterUser">
                <input type="text" name="filterName" placeholder="Type a name here...">
                <input type='submit' value='Use filter'/>
            </form>
        </div>
        <div class="header-panel add-user">
            <a href="createUser">Create new user</a>
        </div>
    </div>
    <div class="content">
        <div class="table-of-users">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>is Admin</th>
                        <th>Date added</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${userList}" var="user">
                    <tr>
                        <td><c:out value="${user.id}" /></td>
                        <td><c:out value="${user.name}" /></td>
                        <td><c:out value="${user.age}" /></td>
                        <td><c:out value="${user.isAdmin}" /></td>
                        <td><c:out value="${user.createdDate}" /></td>
                        <th><a href="editUser?id=<c:out value='${user.id}'/>">Edit</a></th>
                        <th><a href="deleteUser?id=<c:out value='${user.id}'/>">Delete</a></th>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="pagination">
            <c:url value="/" var="prev">
                <c:param name="page" value="${page-1}"/>
            </c:url>
            <c:if test="${page > 1}">
                <a href="<c:out value="${prev}" />" class="pn prev">«</a>
            </c:if>

            <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                <c:choose>
                    <c:when test="${page == i.index}">
                        <span>${i.index}</span>
                    </c:when>
                    <c:otherwise>
                        <c:url value="/" var="url">
                            <c:param name="page" value="${i.index}"/>
                        </c:url>
                        <a href='<c:out value="${url}" />'>${i.index}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:url value="/" var="next">
                <c:param name="page" value="${page + 1}"/>
            </c:url>
            <c:if test="${page + 1 <= maxPages}">
                <a href='<c:out value="${next}" />' class="pn next">»</a>
            </c:if>
        </div>
    </div>
</body>
</html>
