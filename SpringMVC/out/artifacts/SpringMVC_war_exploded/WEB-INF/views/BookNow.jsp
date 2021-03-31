<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Waiting List</title>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js" defer></script>

</head>

<body class="h-screen">
    <header class="relative w-4/6 h-12 flex m-auto">
        <div class="py-2">
            <label class="font-bold text-2xl">YCmgmt</label>
        </div>
        <div class="absolute flex right-0 py">
            <div class="w-32 h-8"> <label class="  font-bold">Username</label> <br>
                <label class="  font-light">email@gmail.com</label></div>

            <a href="/logout">
                <svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M6.01 7.425L12.02 1.415L10.607 0L6.01 4.6L1.414 0L0 1.414L6.01 7.425Z" fill="#374151"/>
                </svg>
            </a>
        </div>


    </header>

    <div class="w-full h-5/6  pt-48 bg-gray-200">
        <!-- Message Welcome -->

        <div class="w-4/6 flex bg-white mx-auto">
            <div class=" w-5/6 mt-16 space-x-12 flex m-auto">
                <div class="">
                    <h1 class="font-bold text-2xl m-auto">Welcome Alex Jeo</h1>
                    <br>
                    <label for="" class="">Limited number of students only are able to get off-time lessons!
                        choose a day and time! your teacher or an admin will give you
                        access, if there is a room for you :)</label>
                </div>
                <div class="w-5/6   h-72 m-auto">

                    <form method="post" action="appointment" class="antialiased sans-serif">
                        <div x-data="app()" x-init="[initDate(), getNoOfDays()]" x-cloak>
                            <div class="container mx-auto  py-2 ">
                                <div class="mb-5 w-full">

                                    <label for="datepicker" class="font-bold mb-1 text-gray-700 block">Select
                                        Date</label>
                                    <div class="relative ">
                                        <input type="hidden" name="date" x-ref="date">
                                        <input type="text" readonly x-model="datepickerValue"
                                            @click="showDatepicker = !showDatepicker"
                                            @keydown.escape="showDatepicker = false"
                                            class="w-full pl-4 pr-10 py-3 leading-none rounded-lg shadow-sm focus:outline-none focus:shadow-outline text-gray-600 font-medium"
                                            placeholder="Select date">

                                        <div class="absolute top-0 right-0 px-3 py-2">
                                            <svg class="h-6 w-6 text-gray-400" fill="none" viewBox="0 0 24 24"
                                                stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                    d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                                            </svg>
                                        </div>


                                        <!-- <div x-text="no_of_days.length"></div>
                                            <div x-text="32 - new Date(year, month, 32).getDate()"></div>
                                            <div x-text="new Date(year, month).getDay()"></div> -->

                                        <div class="bg-white mt-12 rounded-lg shadow p-4 absolute top-0 left-0"
                                            style="width: 17rem" x-show.transition="showDatepicker"
                                            @click.away="showDatepicker = false">

                                            <div class="flex justify-between items-center mb-2">
                                                <div>
                                                    <span x-text="MONTH_NAMES[month]"
                                                        class="text-lg font-bold text-gray-800"></span>
                                                    <span x-text="year"
                                                        class="ml-1 text-lg text-gray-600 font-normal"></span>
                                                </div>
                                                <div>
                                                    <button type="button"
                                                        class="transition ease-in-out duration-100 inline-flex cursor-pointer hover:bg-gray-200 p-1 rounded-full"
                                                        :class="{'cursor-not-allowed opacity-25': month == 0 }"
                                                        :disabled="month == 0 ? true : false"
                                                        @click="month--; getNoOfDays()">
                                                        <svg class="h-6 w-6 text-gray-500 inline-flex" fill="none"
                                                            viewBox="0 0 24 24" stroke="currentColor">
                                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                                stroke-width="2" d="M15 19l-7-7 7-7" />
                                                        </svg>
                                                    </button>
                                                    <button type="button"
                                                        class="transition ease-in-out duration-100 inline-flex cursor-pointer hover:bg-gray-200 p-1 rounded-full"
                                                        :class="{'cursor-not-allowed opacity-25': month == 11 }"
                                                        :disabled="month == 11 ? true : false"
                                                        @click="month++; getNoOfDays()">
                                                        <svg class="h-6 w-6 text-gray-500 inline-flex" fill="none"
                                                            viewBox="0 0 24 24" stroke="currentColor">
                                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                                stroke-width="2" d="M9 5l7 7-7 7" />
                                                        </svg>
                                                    </button>
                                                </div>
                                            </div>

                                            <div class="flex flex-wrap mb-3 -mx-1">
                                                <template x-for="(day, index) in DAYS" :key="index">
                                                    <div style="width: 14.26%" class="px-1">
                                                        <div x-text="day"
                                                            class="text-gray-800 font-medium text-center text-xs"></div>
                                                    </div>
                                                </template>
                                            </div>

                                            <div class="flex flex-wrap -mx-1">
                                                <template x-for="blankday in blankdays">
                                                    <div style="width: 14.28%"
                                                        class="text-center border p-1 border-transparent text-sm"></div>
                                                </template>
                                                <template x-for="(date, dateIndex) in no_of_days" :key="dateIndex">
                                                    <div style="width: 14.28%" class="px-1 mb-1">
                                                        <div @click="getDateValue(date)" x-text="date"
                                                            class="cursor-pointer text-center text-sm leading-none rounded-full leading-loose transition ease-in-out duration-100"
                                                            :class="{'bg-blue-500 text-white': isToday(date) == true, 'text-gray-700 hover:bg-blue-200': isToday(date) == false }">
                                                        </div>
                                                    </div>
                                                </template>
                                            </div>
                                        </div>

                                    </div>
                    </form>

                </div>
            </div>
            <input type="submit"
                class="input border text-white appearance-none rounded w-full h-12 focus focus:border-indigo-600 focus:outline-none bg-black active:outline-none active:border-indigo-600"
                value="Book Now">
            <!-- <div class="flex space-x-12 w-full">
                        <div>
                            <label for="" class="">from</label>
                            <br>
                            <input type="text"
                                class="mt-2 input border border-gray-400 appearance-none rounded w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none bg-gray-100 active:outline-none active:border-indigo-600"
                                name="txt_password">

                        </div>

                        <div>
                            <label for="" class="">to</label>
                            <input type="text"
                                class="mt-2 input border border-gray-400 appearance-none rounded w-full px-3 py-3 pt-5 pb-2 focus focus:border-indigo-600 focus:outline-none bg-gray-100 active:outline-none active:border-indigo-600"
                                name="txt_password">

                        </div>


                    </div> -->



        </div>
    </div>



    </div>
    </div>

    <footer class="w-full h-28 absolute bottom-0 bg-gray-600">
        fotter
    </footer>

    <script>
        const MONTH_NAMES = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
        const DAYS = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

        function app() {
            return {
                showDatepicker: false,
                datepickerValue: '',

                month: '',
                year: '',
                no_of_days: [],
                blankdays: [],
                days: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],

                initDate() {
                    let today = new Date();
                    this.month = today.getMonth();
                    this.year = today.getFullYear();
                    this.datepickerValue = new Date(this.year, this.month, today.getDate()).toDateString();
                },

                isToday(date) {
                    const today = new Date();
                    const d = new Date(this.year, this.month, date);

                    return today.toDateString() === d.toDateString() ? true : false;
                },

                getDateValue(date) {
                    let selectedDate = new Date(this.year, this.month, date);
                    this.datepickerValue = selectedDate.toDateString();

                    this.$refs.date.value = selectedDate.getFullYear() + "-" + ('0' + selectedDate.getMonth()).slice(-2) + "-" + ('0' + selectedDate.getDate()).slice(-2);

                    console.log(this.$refs.date.value);

                    this.showDatepicker = false;
                },

                getNoOfDays() {
                    let daysInMonth = new Date(this.year, this.month + 1, 0).getDate();

                    // find where to start calendar day of week
                    let dayOfWeek = new Date(this.year, this.month).getDay();
                    let blankdaysArray = [];
                    for (var i = 1; i <= dayOfWeek; i++) {
                        blankdaysArray.push(i);
                    }

                    let daysArray = [];
                    for (var i = 1; i <= daysInMonth; i++) {
                        daysArray.push(i);
                    }

                    this.blankdays = blankdaysArray;
                    this.no_of_days = daysArray;
                }
            }


        }
    </script>
</body>

</html>