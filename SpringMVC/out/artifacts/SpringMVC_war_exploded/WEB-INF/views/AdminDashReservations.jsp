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
<div class="w-16 h-screen border-r-2 border-gray-700 flex flex-col items-center justify-between py-8">
    <!-- Top Icon -->
    <div class="font-bold text-2xl ">
        YC
    </div>
    <!-- Middle Nav -->
    <div class="font-bold text-2xl w-full space-y-6">

        <div class="h-16 w-full flex justify-between items-center">
            <div class="h-full w-1 bg-white"></div>
            <a class="" href="/AdminDash"> <svg width="22" height="26" viewBox="0 0 22 26" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M11 26C5.038 26 0 23.3545 0 20.2228V5.7772C0 2.6455 5.038 0 11 0C16.962 0 22 2.6455 22 5.7772V20.2228C22 23.3545 16.9634 26 11 26ZM2.75 16.77V20.2267C2.84625 20.9456 5.92488 23.1153 11 23.1153C16.0751 23.1153 19.1551 20.9391 19.25 20.2189V16.77C16.7467 18.142 13.8929 18.8377 11 18.7811C8.10709 18.8377 5.2533 18.1421 2.75 16.77ZM2.75 9.5433V13C2.84625 13.7189 5.92488 15.8886 11 15.8886C16.0751 15.8886 19.1551 13.7124 19.25 12.9922V9.5433C16.7468 10.9158 13.893 11.6119 11 11.5557C8.10695 11.612 5.25313 10.9159 2.75 9.5433ZM11 2.8886C5.9235 2.8886 2.84487 5.0648 2.75 5.7863C2.84625 6.5 5.92763 8.6658 11 8.6658C16.0724 8.6658 19.1551 6.4896 19.25 5.7694C19.1538 5.0531 16.0724 2.8886 11 2.8886Z" fill="#0F111A"></path>
            </svg></a>
            <div class="h-full w-1  rounded-tl-lg rounded-bl-lg"></div>
        </div>

        <div class="h-16 w-full flex justify-between items-center">
            <div class="h-full w-1 bg-white"></div>
            <a class="" href="/reservations"> <svg width="24" height="26" viewBox="0 0 24 26" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M21.3333 26H2.66667C1.19391 26 0 24.8359 0 23.4V5.2C0 3.76406 1.19391 2.6 2.66667 2.6H5.33333V0H8V2.6H16V0H18.6667V2.6H21.3333C22.8061 2.6 24 3.76406 24 5.2V23.4C24 24.8359 22.8061 26 21.3333 26ZM2.66667 10.4V23.4H21.3333V10.4H2.66667ZM2.66667 5.2V7.8H21.3333V5.2H2.66667Z" fill="#0F111A"></path>
            </svg></a>
            <div class="h-full w-1 bg-black rounded-tl-lg rounded-bl-lg"></div>
        </div>





    </div>
    <!-- Logout -->
    <div class="font-bold text-2xl">
       <a href="/logout"> <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
           <path d="M13 16H2C0.89543 16 0 15.1046 0 14V3C0 1.89543 0.89543 1 2 1H6V3H2V14H13V10H15V14C15 15.1046 14.1046 16 13 16ZM7.7 9.707L6.29 8.293L12.583 2H9V0H16V7H14V3.415L7.7 9.707Z" fill="#2E3A59"></path>
       </svg></a>
    </div>
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
                            <th class="py-3 px-6 text-left">Date</th>
                            <th class="py-3 px-6 text-center">Status</th>
                        </tr>
                        </thead>

                        <tbody class="text-gray-600 text-sm font-light">
                        <c:forEach items="${requestScope.reservations}" var="reservation">
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
                                                            <c:out value="${reservation.user.username}" />
                                                        </span>
                                        </div>
                                    </td>
                                    <td class="py-3 px-6 text-left">
                                        <div class="flex items-center">
                                                        <span>
                                                            <c:out value="${reservation.getDateReservation()}" />
                                                        </span>
                                        </div>
                                    </td>

                                    <td class="py-3 px-6 text-center">
                                        <c:choose>
                                            <c:when test="${reservation.getConfirmed() != '0'}">
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

                                </tr>
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
    <c:forEach items="${requestScope.reservations}" var="reservation">
        <c:if test="${reservation.confirmed == '0'}">

            <form method="post" action="ConfirmReservation" class="w-5/6 m-auto bg-white rounded-xl mt-8 ">
                <div class="flex relative ">
                    <div class="w-5/6 relative top-2 left-2">
                        <h1>
                            <c:out value="${reservation.user.username}" />
                        </h1>
                        <h6>
                            <c:out value="${reservation.user.email}" />
                        </h6>
                        <h4>
                            <c:out value="${reservation.getDateReservation()}" />
                        </h4>
                        <input type="hidden" name="text_reservationID" value="${reservation.getIdReservation()}">
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
        </c:if>
    </c:forEach>
</div>
</body>

</html>