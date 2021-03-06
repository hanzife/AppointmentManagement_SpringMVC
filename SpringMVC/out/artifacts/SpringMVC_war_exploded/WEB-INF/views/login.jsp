<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">

</head>

<body class="h-screen">
<header class="relative w-4/6 h-12 flex m-auto">
    <div class="py-2">
        <label class="font-bold text-2xl">YouCode</label>
    </div>
    <div class="absolute right-0 space-x-6 py-2">
        <label class=" w-32 h-8">Loge in</label>
        <button class=" bg-indigo-700 text-white w-32 h-8">SignUp</button>

    </div>
</header>

<div class="w-full h-5/6  pt-32 bg-gray-200">
    <!-- Fotm Sign In -->
    <form class="w-2/6 pt-10  bg-white mx-auto" action="Home" method="post">
        <div class="w-5/6 h-96 m-auto">
            <h1 class="font-bold text-2xl m-auto text-center">Welcome to Back to YouCode!</h1>
            <br><br>
            <label class="">Email</label>
            <input type="text"
                   class=" input border border-gray-400 appearance-none rounded w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none bg-gray-100 active:outline-none active:border-indigo-600"
            name="txt_email">
            <label class="pt-4">Password</label>
            <input type="password"
                   class="mt-2 input border border-gray-400 appearance-none rounded w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none bg-gray-100 active:outline-none active:border-indigo-600"
                   name="txt_password">

            <input class="mt-6 h-12 bg-black w-full rounded text-white" type="submit" value="Continue">
        </div>


    </form>
</div>

<footer class="w-full h-28 absolute bottom-0 bg-gray-600">
    fotter
</footer>
</body>

</html>