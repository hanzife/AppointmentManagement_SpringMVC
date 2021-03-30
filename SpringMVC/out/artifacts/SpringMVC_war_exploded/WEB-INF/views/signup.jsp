<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">

    <title>Document</title>
</head>

<body>
    <div class="w-4/5 mx-auto ">
        <header class="relative flex w-full h-20">
            <div class="my-auto">
                <div class="absolute left-10 font-bold text-gray-500">YCmgmt</div>
                <div class="absolute right-10 flex">
                    <a href="/login"> <button class="w-28 rounded font-bold text-gray-400">Login</button></a>
                    <a href="/signup">
                        <button class="bg-black w-28 text-white rounded">Sign Up</button>
                    </a>
                </div>
            </div>
        </header>
        <form action="/waitinglist" method="post" class=" p-10 bg-white max-w-xl rounded  mt-20">
            <h1 class="text-3xl font-black mb-4">Hello!</h1>
            Request a class session by completing a few steps!
            <div class="mb-4 mt-6 relative">

                <label for="username">Username</label>
                <input
                    class="mt-2 input border border-gray-400 appearance-none rounded w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none active:outline-none active:border-indigo-600"
                    id="username" type="text" name="txt_username" autofocus>
                <!--<input
                    class="mt-2 input border  appearance-none bg-gray-200 rounded-3xl w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none active:outline-none active:border-indigo-600"
                    id="" type="text" name="txt_username" autofocus>-->

            </div>

            <div class="mb-4 relative">

                <label for="email">Email</label>
                <input
                    class="mt-2 input border border-gray-400 appearance-none rounded w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none active:outline-none active:border-indigo-600"
                    id="email" type="text" name="txt_email" autofocus>
                <!--<input
                    class="mt-2 input border  appearance-none bg-gray-200 rounded-3xl w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none active:outline-none active:border-indigo-600"
                    id="username" type="text" name="txt_username" autofocus>-->

            </div>


            <div class="mb-4 relative">

                 <label for="password">Password</label>
                <input
                    class="mt-2 input border border-gray-400 appearance-none rounded w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none active:outline-none active:border-indigo-600"
                    id="password" type="password" name="txt_password" autofocus>
                <!--  <input
                    class="mt-2 input border  appearance-none bg-gray-200 rounded-3xl w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none active:outline-none active:border-indigo-600"
                    id="username" type="text" name="txt_username" autofocus>-->

            </div>
            <button class="bg-black hover:bg-brown-dark text-white font-bold py-3 px-6 rounded-3xl w-full">Sign
                Up
            </button>

            or
            <button class="bg-black hover:bg-brown-dark text-white font-bold py-3 px-6 rounded-3xl w-full">Sign
                Up
            </button>


        </form>

        <footer class="relative mt-48 flex w-full h-20">
            <div class="my-auto">
                <div class="absolute right-10 font-bold ">YCmgmt</div>

            </div>
        </footer>
    </div>



</body>

</html>