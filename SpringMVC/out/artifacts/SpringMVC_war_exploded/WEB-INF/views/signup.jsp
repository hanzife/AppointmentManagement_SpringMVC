<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">

    <title>Document</title>
</head>

<body class="h-screen">
        <header class="relative w-4/6 h-12 flex m-auto">
            <div class="py-2">
                <label class="font-bold text-2xl">YCmgmt</label>
            </div>
            <div class="absolute right-0  space-x-6 py-2">
                <label class=" w-32 h-8">Loge in</label>
                <button class=" bg-indigo-700 text-white w-32 h-8">SignUp</button>

            </div>
        </header>

        <div class="w-full h-5/6  pt-32 bg-gray-200">
            <!-- Fotm Sign Up -->
        <form class="w-2/6 pt-10  bg-white mx-auto"  action="/waitinglist" method="post">
            <div class="w-5/6  m-auto">
                <h1 class="font-bold text-2xl m-auto text-center">Welcome to Back to YCmgmt!</h1>
                Sign up to request off-time educational lessons! Students at YC only.
                <br><br>

                <label for="email">Email</label>
                <input
                        class="mt-2 input border border-gray-400 appearance-none rounded w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none active:outline-none active:border-indigo-600"
                        id="email" type="text" name="txt_email" autofocus>

                <label for="username">Username</label>
                <input
                        class="mt-2 input border border-gray-400 appearance-none rounded w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none active:outline-none active:border-indigo-600"
                        id="username" type="text" name="txt_username" autofocus>

                <label for="password">Password</label>
                <input
                        class="mt-2 input border border-gray-400 appearance-none rounded w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none active:outline-none active:border-indigo-600"
                        id="password" type="password" name="txt_password" autofocus>

                <button class="mt-2 bg-black hover:bg-brown-dark text-white font-bold py-3 px-6 rounded w-full">Sign
                    Up
                </button>
            </div>


        </form>


            <footer class="w-full h-28 absolute bottom-0 bg-gray-600">
                fotter
            </footer>

    </div>



</body>

</html>