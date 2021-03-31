<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Waiting List</title>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">

</head>

<body class="h-screen">
<header class="relative w-4/6 h-12 flex m-auto">
    <div class="py-2">
        <label class="font-bold text-2xl">YCmgmt</label>
    </div>
    <div class="absolute right-0 py">
        <label class=" w-32 h-8 font-bold">Username</label> <br>
        <label class=" w-32 h-8 font-light">email@gmail.com</label>
        <a href="/logout">
            <svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M6.01 7.425L12.02 1.415L10.607 0L6.01 4.6L1.414 0L0 1.414L6.01 7.425Z" fill="#374151"/>
            </svg>
        </a>
    </div>



</header>

<div class="w-full h-5/6  pt-48 bg-gray-200">
    <!-- Message Welcome -->
    <form class="w-2/6  bg-white mx-auto">
        <div class="w-5/6  pt-10 h-72 m-auto  text-center">
            <h1 class="font-bold text-2xl m-auto">HOORAY!!!</h1>
            <br>
            <label for="" class="">We have Recieved you Reservation! an admin will confirm if there is a room for you :) come back soon!</label>
            <br>
            <br>

            <!-- <a href="/" class="mt-6 h-12 bg-black w-full rounded text-white">make another Appointment</a>-->
        </div>


    </form>
</div>

<footer class="w-full h-28 absolute bottom-0 bg-gray-600">
    fotter
</footer>
</body>

</html>