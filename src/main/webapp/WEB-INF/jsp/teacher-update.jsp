<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ενημέρωση Καθηγητή</title>
	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen">
<%@ include file="header.jsp"%>
<div class="flex justify-center flex min-h-[40vh] min-w-lg">
	<div class="bg-white shadow-md rounded-lg p-6 mb-8 mt-20">
		<form method="POST" action="${pageContext.request.contextPath}/school-app/teachers/update">
		    <h2 class="text-center font-semibold text-2xl">Ενημέρωση Καθηγητή</h2>
            <input type="hidden" name="id" value="${requestScope.updateDTO.id}" >
            <div class="flex gap-2 mt-8">
                <div>
                    <input class="w-full px-3 py-2 border rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" type="text" name="firstname" value="${requestScope.updateDTO.firstname}" placeholder="Όνομα">
                    <c:if test="${not empty requestScope.errorMessage}">
                        <p class="mt-1 text-sm text-red-600">${sessionScope.firstnameMessage}</p>
                    </c:if>

                </div>
                <div>
                    <input class="w-full px-3 py-2 border rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" type="text" name="lastname" value="${requestScope.updateDTO.lastname}" placeholder="Επώνυμο">
                    <p class="mt-1 text-sm text-red-600">${sessionScope.lastnameMessage}</p>
                </div>
            </div>
            <div class="flex gap-2 mt-5">
                <input class="w-full px-3 py-2 border rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" type="text" name="vat" value="${requestScope.updateDTO.vat}" placeholder="ΑΦΜ">
                <p class="mt-1 text-sm text-red-600">${sessionScope.vatMessage}</p>
                <input class="w-full px-3 py-2 border rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" type="text" name="fathername" value="${requestScope.updateDTO.fatherName}" placeholder="Επώνυμο Πατρός">
                <p class="mt-1 text-sm text-red-600">${sessionScope.fathernameMessage}</p>
            </div>
            <div class="flex gap-2 mt-5">
                <input class="w-full px-3 py-2 border rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" type="text" name="phoneNum" value="${requestScope.updateDTO.phoneNum}" placeholder="Αριθμός Τηλεφώνου">
                <p class="mt-1 text-sm text-red-600">${sessionScope.phoneNumMessage}</p>
                <input class="w-full px-3 py-2 border rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" type="text" name="email" value="${requestScope.updateDTO.email}" placeholder="E-mail">
                <p class="mt-1 text-sm text-red-600">${sessionScope.emailMessage}</p>
            </div>
            <div class="flex gap-2 mt-5">
                <input class="w-full px-3 py-2 border rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" type="text" name="street" value="${requestScope.updateDTO.street}" placeholder="Οδός">
                <p class="mt-1 text-sm text-red-600">${sessionScope.streetMessage}</p>
                <input class="w-full px-3 py-2 border rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" type="text" name="streetNum" value="${requestScope.updateDTO.streetNum}" placeholder="Αριθμός">
                <p class="mt-1 text-sm text-red-600">${sessionScope.streetNumMessage}</p>
            </div>
            <div class="flex gap-2 mt-5">
                <input class="w-full px-3 py-2 border rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" type="text" name="zipcode" value="${requestScope.updateDTO.zipCode}" placeholder="ΤΚ">
                <p class="mt-1 text-sm text-red-600">${sessionScope.zipcodeMessage}</p>

            <!-- City Dropdown -->
                <select class="w-full px-3 py-2 border rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500" name="cityId">
                <%-- The Select City option appears in the dropdown but cannot be chosen after a real selection is made --%>
                    <option value="" disabled ${empty updateDTO.cityId ? 'selected' : ''}>
                        Select City
                    </option>
                    <c:forEach items="${cities}" var="city">
                        <option value="${city.id}"
                                ${city.id eq updateDTO.cityId ? 'selected' : ''}>
                            ${city.name}
                        </option>
                    </c:forEach>
                </select>
                <p class="mt-1 text-sm text-red-600">${sessionScope.cityIdMessage}</p>
            </div>
            <div class="flex justify-between mt-5">
                <div>
                    <button class="px-4 py-2 mt-2 bg-blue-600 hover:bg-blue-700 rounded text-white" type="submit">Εισαγωγή</button>
                </div>
                <div class="flex spacy-y-2">
                    <a href="${pageContext.request.contextPath}/school-app/teachers/view">
                        <button type="button" class="px-4 py-2 mt-2 bg-gray-200 hover:bg-gray-300 rounded w-100">
                         Επιστροφή
                        </button>
                    </a>
                </div>
            </div>

		</form>
	</div>
    <div>
        ${requestScope.errorMessage}
    </div>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>