<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
</head>
<body>

<header>
    <div class="outer border-blue">
        <div class="items">
            <a href="${pageContext.request.contextPath}/index.jsp"><img class="gov-gr-logo" src="${pageContext.request.contextPath}/img/gov_header_logo.svg" alt="" width="40" height="auto"></a>
            <span class="title">Coding Factory - Education Reinvented </span>
        </div>
        <div class="login-name">
<%--            <span>${sessionScope.firstname}</span>--%>
<%--            <span>${sessionScope.lastname</span>--%>
            <span>${sessionScope.username}</span>
            <c:if test="${sessionScope.username != null}">
                <a href="${pageContext.request.contextPath}/logout"><button type="button" class="btn btn-danger">Log out</button></a>
            </c:if>
        </div>
    </div>
</header>
</body>
</html>