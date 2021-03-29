<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/10/2021
  Time: 10:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <title>Admin Dashboard</title>
</head>

<body class="w-1/2  mx-auto">
<!-- header -->
<header>
    <a>SBahia</a>
</header>
<!-- left section --><form class="shadow-xl p-10 bg-white max-w-xl rounded mx-auto mt-56" method="post" action="/index">
    <h1 class="text-4xl font-black mb-4">Votre Domend</h1>

    <div class=" ">

       <!-- <label for="username">Username</label>
        <input
                class="input border border-gray-400 appearance-none rounded w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none active:outline-none active:border-indigo-600"
                id="username" type="text" name="txt_username" autofocus>
       -->

        <!-- Date -->
        <input type="text" name="txt_date" autofocus>
        <select name="" class="border-2  w-full h-14 border-light-blue-500 border-opacity-25 rounded-2xl bg-gray-100 text-gray-800">
            <option value="">Select a day</option>
            <option value="">Monday</option>
            <option value="">Thuesday</option>
            <option value="">Wednesday</option>
            <option value="">Thursday</option>
            <option value="">Driday</option>
            <option value="">Satureday</option>
            <option value="">Sunday</option>
        </select>
        <div class="h-4"></div>

        <div class="flex">
            <!-- CheckIn -->
            <select name="" class="border-2  w-2/4 h-14 border-light-blue-500 border-opacity-25 rounded-2xl">
                <option value="">Check-In</option>
                <option value="">17:00</option>
            </select>
            <!-- CheckOut -->
            <select name=""  class="border-2  w-2/4 h-14 border-light-blue-500 border-opacity-25 rounded-2xl">
                <option value="">Check-Out</option>
                <option value="">18:00</option>
                <option value="">19:00</option>
            </select>
        </div>
        <div class="h-4"></div>
        <!-- button add new items -->
        <button class="rounded-2xl w-full h-14 bg-black text-white">Add</button>

    </div>

    <!-- Blank -->
    <dir class="h-2 w-full"></dir>

</form>



</body>

</html>