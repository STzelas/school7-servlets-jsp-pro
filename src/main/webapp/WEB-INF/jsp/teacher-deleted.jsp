<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Επιτυχής Διαγραφή</title>
</head>
<body class="min-h-screen">

<%@ include file="header.jsp"%>

<div class="flex justify-center">
    <div class="bg-green-500 shadow-md rounded-lg p-6 mb-8 mt-10 w-1/3">
        <h1 class="text-center font-semibold text-2xl mt-5 underline">Επιτυχής Ενημέρωση</h1>
        <p class="text-center text-xl mt-10">Κωδικός:  <strong>${sessionScope.teacherInfo.id}</strong> </p>
    </div>
</div>
<div class="text-center">
    <button class="text-center px-4 py-2 bg-gray-300 hover:bg-gray-400 rounded">
        <a href="${pageContext.request.contextPath}/school-app/teachers/view">Επιστροφή</a>
    </button>
</div>

<%@ include file="footer.jsp"%>
</body>
</html>
