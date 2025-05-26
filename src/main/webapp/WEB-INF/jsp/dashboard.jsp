<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>

    <%@ include file="header.jsp"%>

        <div class="flex flex-col items-center justify-center mt-32 w-auto">
            <h1 class="text-lg font-semibold ">Καλώς ορίσατε στην κεντρική σελίδα,</h1>
            <h1 class="text-lg font-semibold ">Επιλέξτε την υπηρεσία που θέλετε,</h1>
            <a href="<c:url value='${pageContext.request.contextPath}/school-app/teachers/view' />">
                <button type="button" class="bg-green-800 hover:bg-green-900 text-white font-semibold py-2 px-4 rounded-lg mt-6">Υπηρεσία Καθηγητών</button>
            </a>
            <a href="<c:url value='${pageContext.request.contextPath}/school-app/students/view' />">
                <button type="button" class="bg-green-800 hover:bg-green-900 text-white font-semibold py-2 px-4 rounded-lg mt-3">Υπηρεσία Μαθητών</button>
            </a>
        </div>

    <%@include file="footer.jsp"%>

</body>
</html>
