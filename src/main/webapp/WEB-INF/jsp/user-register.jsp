<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Εγγραφή Χρήστη</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user-register.css">
</head>
<body>
<%@ include file="header.jsp"%>

<div class="bg-white flex justify-center items-center mt-20 w-full">
    <div class="container flex flex-col items-center justify-center px-6 mx-auto">
    <%--<form method="POST" action="${pageContext.request.contextPath}/register">--%>
        <form method="POST" class="w-full max-w-md">
            <div class="relative flex items-center mt-8">
                <span class="absolute">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 mx-3 text-gray-300" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                    </svg>
                </span>

                <input type="email" name="username" value="${requestScope.userRegisterDTO.username}" class="block w-full py-3 text-gray-700 bg-white border rounded-lg px-11 focus:border-blue-400 focus:ring-blue-300 focus:outline-none focus:ring focus:ring-opacity-40"required placeholder="Όνομα λογαριασμού">
            </div>
            <div class="px-2 py-1 text-red-600 hidden">
              <p>${requestScope.usernameMessage}</p>
            </div>

            <div class="relative flex items-center mt-4">
                <span class="absolute">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 mx-3 text-gray-300" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z" />
                    </svg>
                </span>

                <input type="password" name="password" value="${requestScope.userRegisterDTO.password}" class="block w-full px-10 py-3 text-gray-700 bg-white border rounded-lg focus:border-blue-400 focus:ring-blue-300 focus:outline-none focus:ring focus:ring-opacity-40" required placeholder="Κωδικός">
            </div>
            <div class="px-2 py-1 text-red-600 hidden">
              <p>${requestScope.passwordMessage}</p>
            </div>

            <div class="relative flex items-center mt-4">
                <span class="absolute">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 mx-3 text-gray-300" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z" />
                    </svg>
                </span>

                <input type="password" name="confirmPassword" value="${requestScope.userRegisterDTO.confirmPassword}" class="block w-full px-10 py-3 text-gray-700 bg-white border rounded-lg focus:border-blue-400 focus:ring-blue-300 focus:outline-none focus:ring focus:ring-opacity-40" required placeholder="Επιβεβαίωση Κωδικού">
            </div>
            <div class="px-2 py-1 text-red-600 hidden">
              <p>${requestScope.confirmPasswordMessage}</p>
            </div>

            <div class="row m-botto mt-4">
              <select class="m-bottom p-2 rounded-lg bg-gray-200 text-gray-700 hover:bg-gray-300" name="role">
                  <option class="" disabled hidden selected>Επιλέξτε ρόλο</option>
                  <option value="ADMIN" class="">Διαχειριστής</option>
                  <option value="LIGHT_ADMIN">Βοηθός Διαχειριστή</option>
              </select>
              <p class="px-2 py-1 text-red-600">${requestScope.roleMessage}</p>
            </div>

            <div class="mt-6 flex flex-col items-center">
                <button type="submit" class="w-full px-6 py-3 text-sm font-medium tracking-wide text-white capitalize transition-colors duration-300 transform bg-blue-500 rounded-lg hover:bg-blue-400 focus:outline-none focus:ring focus:ring-blue-300 focus:ring-opacity-50">
                    Εγγραφή
                </button>



                <div class="mt-6 text-center ">
                    <a href="${pageContext.request.contextPath}/login" class="text-sm text-blue-500 hover:underline">
                        Έχετε ήδη λογαριασμό?
                    </a>
                </div>
                <div>
                    ${requestScope.errorMessage}
                </div>
            </div>
        </form>
        <a href="${pageContext.request.contextPath}/login">
            <button class="w-25 px-6 py-3 mt-4 text-sm font-medium tracking-wide capitalize transition-colors duration-300 transform bg-gray-200 rounded-lg hover:bg-gray-300 focus:outline-none focus:ring focus:ring-blue-300 focus:ring-opacity-50 ">
              Πίσω
            </button>
        </a>
    </div>
  </div>

<%@ include file="footer.jsp"%>
</body>
</html>
