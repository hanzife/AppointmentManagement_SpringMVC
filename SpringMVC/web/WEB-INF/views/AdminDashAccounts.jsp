<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
        <title>Dashboard Accounts</title>
    </head>

    <body class="flex">

        <!-- Side Menu -->
        <div class="w-16 h-screen border-r-2 border-gray-700">
        </div>

        <!-- Center -->
        <div class="w-4/5 h-screen bg-red">
            <h1 class="w-5/6 m-auto font-medium text-2xl mt-4">Dashboard</h1>
            <!-- DataGrid -->

            <div class="overflow-x-auto">
                <div class=" flex items-center justify-center  font-sans overflow-hidden">
                    <div class="lg:w-5/6">
                        <div class="bg-white shadow-md rounded my-6">
                            <table class="min-w-max w-full table-auto">
                                <thead>
                                    <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
                                        <th class="py-3 px-6 text-left">Username</th>
                                        <th class="py-3 px-6 text-left">Email</th>
                                        <th class="py-3 px-6 text-center">Status</th>
                                        <th class="py-3 px-6 text-center">Action</th>
                                    </tr>
                                </thead>

                                <tbody class="text-gray-600 text-sm font-light">
                                    <c:forEach items="${requestScope.students}" var="student">
                                        <c:if test="${student.role != 'Admin'}">
                                            <tr class="border-b border-gray-200 hover:bg-gray-100">
                                                <td class="py-3 px-6 text-left whitespace-nowrap">
                                                    <div class="flex items-center">
                                                        <div class="mr-2">
                                                            <div class="mr-2">
                                                                <img class="w-6 h-6 rounded-full"
                                                                    src="https://randomuser.me/api/portraits/men/1.jpg" />
                                                            </div>
                                                        </div>
                                                        <span class="font-medium">
                                                            <c:out value="${student.username}" />
                                                        </span>
                                                    </div>
                                                </td>
                                                <td class="py-3 px-6 text-left">
                                                    <div class="flex items-center">
                                                        <span>
                                                            <c:out value="${student.email}" />
                                                        </span>
                                                    </div>
                                                </td>

                                                <td class="py-3 px-6 text-center">
                                                    <c:choose>
                                                        <c:when test="${student.validated != '0'}">
                                                            <span
                                                                class="bg-green-200 text-green-600 py-1 px-3 rounded-full text-xs">Confirmed</span>
                                                            <br />
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span
                                                                class="bg-red-200 text-red-600 py-1 px-3 rounded-full text-xs">Pending</span>
                                                            <br />
                                                        </c:otherwise>
                                                    </c:choose>


                                                </td>
                                                <td class="py-3 px-6 text-center">
                                                    <div class="flex item-center justify-center">

                                                        <div
                                                            class="w-4 mr-2 transform hover:text-purple-500 hover:scale-110">
                                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                                viewBox="0 0 24 24" stroke="currentColor">
                                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                                    stroke-width="2"
                                                                    d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Right Panel - Notification -->
        <div class="w-1/5 h-screen bg-gray-100 overflow-auto">
            <h1 class="w-5/6 m-auto font-medium text-2xl mt-4">Pending Accounts</h1>
            <!-- Cards -->
            <c:forEach items="${requestScope.students}" var="student">
                <form method="post" action="validatedaccount" class="w-5/6 m-auto bg-white rounded-xl mt-8 ">
                    <div class="flex relative ">
                        <div class="w-5/6 relative top-2 left-2">
                            <h1>
                                <c:out value="${student.username}" />
                            </h1>
                            <h6>
                                <c:out value="${student.email}" />
                            </h6>
                        </div>
                        <div class="absolute top-2 right-2">
                            <svg width=" 32" height="32" viewBox="0 0 32 32" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <circle cx="16" cy="16" r="16" fill="#FFB1B1" />
                                <path
                                    d="M20.308 10L16 14.308L11.692 10L10 11.692L14.308 16L10 20.308L11.692 22L16 17.692L20.308 22L22 20.308L17.692 16L22 11.692L20.308 10Z"
                                    fill="#D74949" />
                            </svg>
                        </div>

                    </div>
                    <button class="w-full h-10 bg-gray-700 relative text-white mt-6  rounded-b-xl">
                        <div class="flex my-auto">
                            <p class="relative left-2">Confirm</p>
                            <p class="absolute right-2">></p>
                        </div>
                    </button>
                </form>
            </c:forEach>
        </div>
    </body>

    </html>