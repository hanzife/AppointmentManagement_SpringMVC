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
        <div class="absolute right-0 py-2">
            <label class=" w-32 h-8">Loge in</label>
            <button class=" bg-indigo-700 text-white w-32 h-8">SignUp</button>

        </div>
    </header>

    <div class="w-full h-5/6  pt-48 bg-gray-200">
        <!-- Message Welcome -->
        <form class="w-2/6  bg-white mx-auto">
            <div class="w-5/6  pt-10 h-72 m-auto  text-center">
                <h1 class="font-bold text-2xl m-auto">Welcome Alex Jeo</h1>
                <br>
                <label for="" class="">Your Account has been created! if you belong to YC School, We will let you know
                    once an admin confirm you request.</label>
                <br>
                <br>


                <input class="mt-6 h-12 bg-black w-full rounded text-white" type="submit" value="Login">
            </div>


        </form>
    </div>

    <footer class="w-full h-28 absolute bottom-0 bg-gray-600">
        fotter
    </footer>
</body>

</html>