<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
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
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script src="https://cdn.tailwindcss.com"></script>
        <script>
            tailwind.config = {
                theme: {
                    extend: {

                    }
                }
            }
        </script>
</head>
<body>
	<%@ include file="header.jsp"%>

   <div class="flex justify-center items-center mt-20 w-full">
    <div class="w-full max-w-sm mx-auto my-auto overflow-hidden bg-white rounded-lg shadow-md">

        <div class="px-6 py-4">
        <c:if test="${not empty error}">
            <div class=" p-3 bg-red-50 border-l-4 border-red-500 text-red-700 rounded">
               <p>${requestScope.error}</p>
            </div>
        </c:if>
            <h3 class="mt-3 text-xl font-medium text-center text-gray-600">Καλώς ορίσατε</h3>

            <p class="mt-1 text-center text-gray-500 ">Συνδεθείτε ή δημιουργήστε λογαριασμό</p>

            <form method="POST" action="${pageContext.request.contextPath}/login">
                <div class="w-full mt-4">
                    <input class="block w-full px-4 py-2 mt-2 text-gray-700 placeholder-gray-500 bg-white border rounded-lg focus:border-blue-400 focus:ring-opacity-40 focus:outline-none focus:ring focus:ring-blue-300" type="email" name="username" placeholder="Email Address" aria-label="Email Address"/>
                    <c:if test="${requestScope.isError == 'true'}">
                              <div class="text-red-500 text-m px-4 py-2">
                                 <p>${requestScope.error}</p>
                              </div>
                          </c:if>
                </div>

                <div class="w-full mt-4">
                    <input class="block w-full px-4 py-2 mt-2 text-gray-700 placeholder-gray-500 bg-white border rounded-lg focus:border-blue-400 focus:ring-opacity-40 focus:outline-none focus:ring focus:ring-blue-300" type="password" name="password" placeholder="Password" aria-label="Password" />
                </div>

                <div class="flex items-center justify-between mt-4">
                    <a href="#" class="text-sm text-gray-600  hover:text-gray-500">Ξεχάσατε τον κωδικό?</a>

                    <button type="submit" class="px-6 py-2 text-sm font-medium tracking-wide text-white capitalize transition-colors duration-300 transform bg-blue-500 rounded-lg hover:bg-blue-400 focus:outline-none focus:ring focus:ring-blue-300 focus:ring-opacity-50">
                        Σύνδεση
                    </button>
                </div>
            </form>
        </div>

        <div class="flex items-center justify-center py-4 text-center bg-gray-50">
            <span class="text-sm text-gray-600 ">Δεν έχετε λογαριασμό? </span>

            <a href="${pageContext.request.contextPath}/register" class="mx-2 text-sm font-bold text-blue-500 hover:underline">Δημιουργήστε</a>
        </div>
     </div>
    </div>

    <%@include file="footer.jsp"%>
</body>
</html>