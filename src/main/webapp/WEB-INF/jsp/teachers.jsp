<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Προβολή Καθηγητών</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/teachers.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<%@ include file="header.jsp"%>


<section class="px-4 mb-5">
    <div class="flex flex-col mt-6">
        <div class="-mx-4 -my-2 mx-auto">
        <div class="flex gap-x-2">
            <c:if test="${sessionScope.role == 'ADMIN'}">
                <div class="pl-5 pt-4 bottom-1">
                    <a href="${pageContext.request.contextPath}/school-app/teachers/insert">
                        <button type="button" class="bg-blue-800 hover:bg-blue-900 text-white font-semibold py-2 px-4 rounded-lg mt-3">Εισαγωγή Καθηγητή</button>
                    </a>
                    <input placeholder="Αναζήτηση Καθηγητή" type="" class="border border-gray-300 text-blue-500 border-gray-300 rounded p-2">
                </div>
            </c:if>
        </div>
            <div class="inline-block py-2 align-middle ">
                <div class="border border-gray-200">
                    <table class="divide-y divide-gray-200 min-w-full">
                        <thead class="bg-gray-50">
                            <p class="text-red-500 font-semibold">${requestScope.message}</p>
                            <tr>
                                <th scope="col" class="py-3.5 px-4 text-sm font-normal text-center text-white">
                                    <div class="">
                                        <span>Name</span>
                                    </div>
                                </th>

                                <th scope="col" class="px-4 py-3.5 text-sm font-normal text-left text-white">
                                    <button class="flex gap-x-1">
                                        <span>Role</span>

                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-4 h-4">
                                            <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                        </svg>
                                    </button>
                                </th>

                                <th scope="col" class="px-4 py-3.5 text-sm font-normal text-left text-white">Email</th>

                                <th scope="col" class="px-4 py-3.5 text-sm font-normal text-left text-white">Ενέργειες</th>

                                <th scope="col" class="relative py-3.5 px-4">
                                    <span class="sr-only">Edit</span>
                                </th>
                            </tr>
                        </thead>
                        <c:forEach var = "teacher" items = "${requestScope.teachers}">
                        <tbody class="bg-white divide-y divide-gray-200">
                            <tr>
                                <td class="px-4 py-4 text-sm font-medium text-gray-700 whitespace-nowrap">
                                    <div class="gap-x-3">
                                        <div class="gap-x-2">
                                            <div>
                                                <h2 class="font-medium text-gray-800">${teacher.firstname} ${teacher.lastname}</h2>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td class="px-12 py-4 text-sm font-medium text-gray-700 whitespace-nowrap">
                                    <div class="inline-flex px-3 py-1 rounded-full gap-x-2 bg-emerald-100/60">
                                    <c:if test="${sessionScope.role == 'ADMIN'}">
                                        <span class="h-1.5 w-1.5 rounded-full bg-emerald-500"></span>
                                        <h2 class="text-sm font-normal text-emerald-500">Teacher</h2>
                                    </c:if>
                                    <c:if test="${sessionScope.role == 'READER'}">
                                        <span class="h-1.5 w-1.5 rounded-full bg-blue-500"></span>
                                        <h2 class="text-sm font-normal text-blue-500">Student</h2>
                                    </c:if>
                                    </div>
                                </td>
                                <td class="px-4 py-4 text-sm text-gray-500 whitespace-nowrap">${teacher.email}</td>
                                <td class="px-4 py-4 text-sm whitespace-nowrap">
                                    <div class="flex gap-x-6">
                                        <!-- DELETE -->
                                        <button class="text-gray-500 transition-colors duration-200 hover:text-red-500 focus:outline-none">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5">
                                                <path stroke-linecap="round" stroke-linejoin="round" d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                                            </svg>
                                        </button>
                                        <!-- EDIT -->
                                        <button class="text-gray-500 transition-colors duration-200 hover:text-yellow-500 focus:outline-none">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5">
                                                <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10" />
                                            </svg>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


</section>

<div>
<%--    <c:if test="${requestScope.deleteAPIError}">--%>
        <p>${requestScope.message}</p>
<%--    </c:if>--%>
</div>

<div>
    <c:if test="${requestScope.updateAPIError}">
        <p>Something went wrong in Update</p>
    </c:if>
</div>

<%@ include file="footer.jsp"%>

<script src="${pageContext.request.contextPath}/js/teachers.js">

</script>
</body>
</html>


