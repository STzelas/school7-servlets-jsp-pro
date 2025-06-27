<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Central Service</title>
    <!-- Bootstrap CSS -->
    <script src="https://cdn.tailwindcss.com"></script
</head>
<body class="min-h-screen">

<%@ include file="/WEB-INF/jsp/header.jsp" %>

<!-- Main Content -->
<main class="text-center main-content my-20">
    <h1 class="mb-5 text-3xl font-semibold ">Κεντρική Υπηρεσία Διαχείρισης Καθηγητών και Μαθητών</h1>
    <c:if test="${sessionScope.username != null}">
    <button class="bg-green-600 hover:bg-green-700 px-6 py-3 rounded mt-10 text-white">
        <a href="${pageContext.request.contextPath}/school-app/dashboard" >Συνέχεια</a>
    </button>
     </c:if>
     <c:if test="${sessionScope.username == null}">
     <button class="bg-blue-600 hover:bg-blue-700 px-6 py-3 rounded mt-10 text-white">
         <a href="${pageContext.request.contextPath}/login" >Σύνδεση</a>
     </button>
     </c:if>

</main>

<%@ include file="/WEB-INF/jsp/footer.jsp" %>

</body>
</html>