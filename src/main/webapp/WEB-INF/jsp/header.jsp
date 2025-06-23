<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
</head>
<body>

<header>
<nav class="bg-blue-900 border-b-8 border-blue-500">

    <!-- Menu max 80rem-->
    <div class="flex justify-between items-center h-20 max-w-[90%] mx-auto px-4 sm:px-6 lg:px-8">
      <!-- Logo -->
      <div class="h-16 flex items-center">
        <a href="${pageContext.request.contextPath}/index.jsp">
          <img class="h-14" src="${pageContext.request.contextPath}/img/gov_header_logo.svg" alt="">
        </a>
      </div>

      <!-- Toggle Button -->
      <div class="md:hidden">
        <button id="nav-toggle" class="text-white hover:text-blue-300 focus:outline-none focus:ring-2
            focus:ring-gray-300">
          <svg id="menu-open" class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
          </svg>
          <svg id="menu-close" class="h-6 w-6 hidden" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>
      </div>

      <!-- Navigation Links -->

      <div id="nav-menu" class="hidden md:flex md:items-center space-x-4">
        <div class="group relative">
          <c:if test="${sessionScope.username != null}">
          <a href="#" class="text-white hover:text-blue-100 px-3 py-2 text-lg font-medium flex items-center">
            Υπηρεσίες
            <!-- Down Arrow - chevron -->
            <svg class="ml-1 h-4 w-4 text-white group-hover:font-bold transition-transform transform group-hover:rotate-180 duration-300" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"/>
            </svg>
            <!-- Underline -->
            <span class="absolute bottom-0 left-0 w-0 h-0.5 bg-blue-500 transition-all duration-1000
                     group-hover:w-full"></span>
          </a>
          <!-- Submenu -->
          <div class="absolute hidden group-hover:block bg-white shadow-lg rounded-md w-40">
            <a href="${pageContext.request.contextPath}/school-app/teachers/view" class="block px-4 py-2 text-gray-700 hover:bg-gray-300 hover:rounded-md">Καθηγητές</a>
            <a href="${pageContext.request.contextPath}/school-app/students/view" class="block px-4 py-2 text-gray-700 hover:bg-gray-300 hover:rounded-md">Μαθητές</a>
          </div>
          </c:if>
        </div>


        <a href="#" class="text-white hover:text-blue-100 px-3 py-2 rounded-md text-lg font-medium">Πληροφορίες</a>
        <a href="#" class="text-white hover:text-blue-100 px-3 py-2 rounded-md text-lg font-medium">Επικοινωνία</a>
        <c:if test="${sessionScope.username == null}">
                <div class="pl-20 flex justify-between items-center">
                     <a href="${pageContext.request.contextPath}/login">
                         <button type="button" class="">
                             <svg class="w-6 h-6 mx-3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                <path fill="#ffffff" d="M217.9 105.9L340.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L217.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1L32 320c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM352 416l64 0c17.7 0 32-14.3 32-32l0-256c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32-14.3-32-32s14.3-32 32-32l64 0c53 0 96 43 96 96l0 256c0 53-43 96-96 96l-64 0c-17.7 0-32-14.3-32-32s14.3-32 32-32z"/>
                             </svg>
                         </button>
                     </a>
                  </c:if>
        <c:if test="${sessionScope.username != null}">
        <div class="pl-20 flex justify-between items-center">
          <span class="text-white px-1 py-2 rounded-md text-lg font-medium">${sessionScope.firstname}</span>
          <span class="text-white px-1 py-2 rounded-md text-lg font-medium">${sessionScope.lastname}</span>
          <span class="text-white px-1 py-2 rounded-md text-lg font-medium me-5">${sessionScope.username}</span>
             <a href="${pageContext.request.contextPath}/logout">
                <button type="button" class="text-white rounded-lg">
                    <svg class="w-6 h-6 mx-3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <path fill="#ffffff" d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"/>
                    </svg>
                </button>
             </a>
        </c:if>
        </div>
      </div>
    </div>


    <!-- Mobile Menu -->


    <div id="mobile-menu" class="hidden">
      <div class="block px-4 py-2">
        <a href="#" class="block text-white hover:text-blue-200 py-2">Κεντρική σελίδα</a>
      </div>
      <!-- Mobile Submenu -->
      <c:if test="${sessionScope.username != null}">
      <div class="block px-4 py-2 ">
        <button id="submenu-toggle" class="flex items-center justify-between w-full text-white
            hover:text-blue-200 py-2">
          Υπηρεσίες
          <svg id="submenu-icon" class="h-5 w-5 transform transition-transform" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
          </svg>
        </button>
        <div id="submenu" class="hidden ml-4 mt-2">
          <a href="${pageContext.request.contextPath}/school-app/teachers/view" class="block text-white hover:text-blue-200 py-1">Καθηγητές</a>
          <a href="${pageContext.request.contextPath}/school-app/students/view" class="block text-white hover:text-blue-200 py-1">Μαθητές</a>
        </div>
      </div>
      </c:if>
      <a href="#" class="block text-white hover:text-blue-200 px-4 py-2">Πληροφορίες</a>
      <a href="#" class="block text-white hover:text-blue-200 px-4 py-2">Επικοινωνία</a>
      <a href="#" class="block bg-blue-400 text-white hover:text-blue-900 px-4 py-2">${sessionScope.username}</a>
      <c:if test="${sessionScope.username != null}">
      <a href="${pageContext.request.contextPath}/logout" class="block bg-red-700 text-white hover:text-black px-4 py-2">Log Out</a>
      </c:if>

    </div>
  </nav>
</header>

   <script src="${pageContext.request.contextPath}/js/header.js"></script>
</body>
</html>





