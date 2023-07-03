<!DOCTYPE html>
<html>

<head>
    <title>CRAFT ZONE</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            darkMode: 'class',
        }
    </script>
    <style>
        .row {
            display: flex;
            flex-wrap: wrap;
            margin-left: -0.5rem;
            margin-right: -0.5rem;
        }

        .col {
            display: flex;
            padding-left: 0.5rem;
            padding-right: 0.5rem;
            width: 100%;
            max-width: 100%;
            flex-grow: 1;
            flex-basis: 0px;
        }

        .col-auto {
            display: flex;
            padding-left: 0.5rem;
            padding-right: 0.5rem;
            width: auto;
            max-width: 100%;
            flex-grow: 0;
            flex-shrink: 0;
            flex-basis: auto;
        }

        .col-full {
            display: flex;
            padding-left: 0.5rem;
            padding-right: 0.5rem;
            width: auto;
            max-width: 100%;
            flex-grow: 0;
            flex-shrink: 0;
            flex-basis: 100%
        }
    </style>
    <style>
        h1 {
            animation: flicker 1.5s infinite alternate;
        }

        /* Flickering animation */
        @keyframes flicker {

            0%,
            18%,
            22%,
            25%,
            53%,
            57%,
            100% {

                text-shadow:
                    0 0 4px #d3d3d3,
                    0 0 1px #d3d3d3,
                    0 0 40px #2cce73,
                    0 0 80px #2cce73,
                    0 0 90px #2cce73,
                    0 0 100px #2cce73,
                    0 0 150px #2cce73;
            }

            20%,
            24%,
            55% {
                text-shadow: none;
            }
        }
    </style>
</head>

<body class="text-[#2cce73] bg-white dark:bg-[#0d1016] transition-all">
    <div class="container mx-auto">
        <!-- Title -->
        <div class="row justify-center mt-12">
            <div class="col-auto my-6">
                <h1 class="neonText text-3xl">CRAFT ZONE :)</h1>
            </div>
        </div>

        <!-- Separator -->
        <div class="row mt-12 mb-4">
            <div class="col border-b border-[#2cce73]"></div>
        </div>

        <!-- Navbar buttons -->
        <div class="row mx-8 justify-between flex-wrap  gap-y-2">
            <div class="col-auto flex flex-wrap gap-2  gap-y-2">
                <button class="bg-[#2CCE73] text-black dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white  p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all" type="button" name="picgal" onclick="self.location.href='picgal.php'" role="button">PicGal</button>
                <button class="bg-[#2CCE73] text-black dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white  p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all" type="button" name="gifgal" onclick="self.location.href='gifgal.php'" role="button">GifGal</button>
                <button class="bg-[#2CCE73] text-black dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white  p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all" type="button" name="vidgal" onclick="self.location.href='vidgal.php'" role="button">VidGal</button>
            </div>
            <div class="col-auto flex flex-wrap gap-2 gap-y-2">
                <button class="bg-[#2CCE73] text-black dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white  p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all dark:text-[#7cfceb]" onclick="darkMode()" role="button">
                    <svg fill="currentColor" class="w-5 h-5 " viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                        <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                        <g id="SVGRepo_iconCarrier">
                            <path d="M3,11.985A9.811,9.811,0,0,0,12.569,22a9.528,9.528,0,0,0,8.309-5.059,1,1,0,0,0-.947-1.477l-.11.008c-.131.01-.263.02-.4.02a7.811,7.811,0,0,1-7.569-8.015,8.378,8.378,0,0,1,1.016-4A1,1,0,0,0,11.923,2,9.855,9.855,0,0,0,3,11.985Zm7.343-7.652a10.382,10.382,0,0,0-.488,3.144A9.89,9.89,0,0,0,18.137,17.4,7.4,7.4,0,0,1,12.569,20,7.811,7.811,0,0,1,5,11.985,7.992,7.992,0,0,1,10.343,4.333Z"></path>
                        </g>
                    </svg>
                </button>
                <button class="bg-[#2CCE73] dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white  p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all text-[#ffd505]" onclick="lightMode()" role="button">
                    <svg fill="currentColor" class="w-5 h-5"  viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                        <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                        <g id="SVGRepo_iconCarrier">
                            <path d="M17,12a5,5,0,1,0-5,5A5.006,5.006,0,0,0,17,12Zm-5,3a3,3,0,1,1,3-3A3,3,0,0,1,12,15ZM11,4V2a1,1,0,0,1,2,0V4a1,1,0,0,1-2,0Zm1,15a1,1,0,0,1,1,1v2a1,1,0,0,1-2,0V20A1,1,0,0,1,12,19ZM19.778,5.636,18.364,7.05A1,1,0,0,1,16.95,5.636l1.414-1.414a1,1,0,0,1,1.414,1.414ZM4.222,18.364,5.636,16.95A1,1,0,0,1,7.05,18.364L5.636,19.778a1,1,0,0,1-1.414-1.414ZM23,12a1,1,0,0,1-1,1H20a1,1,0,0,1,0-2h2A1,1,0,0,1,23,12ZM2,13a1,1,0,0,1,0-2H4a1,1,0,0,1,0,2Zm14.95,5.364a1,1,0,0,1,1.414-1.414l1.414,1.414a1,1,0,1,1-1.414,1.414ZM4.222,5.636A1,1,0,0,1,5.636,4.222L7.05,5.636A1,1,0,1,1,5.636,7.05Z"></path>
                        </g>
                    </svg>
                </button>
            </div>
        </div>

        <!-- Separator -->
        <div class="row mt-4">
            <div class="col border-b border-[#2cce73]"></div>
        </div>

        <!-- Input form -->
        <div class="row mx-8 my-4">
            <div class="col-full w-full">
                <form method="post" action="/txt2porngif/index.php?gif=1" class="flex flex-wrap w-full  ">

                    <!-- Type & Fixed seed -->
                    <div class="flex flex-wrap w-full justify-between mb-4 gap-2 gap-y-2">
                        <div class="w-auto">
                            <label for="param1" class="whitespace-nowrap text-black dark:text-[#2cce73]">Type :</label>
                            <select name="param1" id="param1" class=" focus:outline-none bg-[#2CCE73] text-black dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all py-1 px-4">
                                <option value="hentai">hentai</option>
                                <option value="general">general</option>
                            </select></br>
                        </div>
                        <div class="w-auto">
                            <label for="param3" class="whitespace-nowrap text-black dark:text-[#2cce73]">Fixed seed:</label>
                            <select name="param3" id="param3" class="rounded bg-[#0d1016] focus:outline-none bg-[#2CCE73] text-black dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all py-1 px-4">
                                <option value="">No</option>
                                <option value="fixed">Yes</option>
                            </select>
                        </div>
                    </div>

                    <!-- Seed number -->
                    <div class="flex gap-1 flex-col w-full mb-4">
                        <label class="whitespace-nowrap text-black dark:text-[#2cce73]" for="param4">Seed number:</label>
                        <div class="w-full">
                            <input type="text" name="param4" id="param4" class="w-full rounded text-black dark:text-[#2cce73] border-[#2cce73] dark:bg-[#0d1016] focus:outline-none border dark:border-[#005704] hover:border-[#2CCE73] focus:border-[#2CCE73] py-1 px-4">
                        </div>
                    </div>

                    <!-- Prompt -->
                    <div class="flex gap-1 flex-col w-full mb-4">
                        <label class="whitespace-nowrap text-black dark:text-[#2cce73]" for="param2">Prompt :</label>
                        <textarea name="param2" id="param2" rows="5" required class="w-full rounded border-[#2cce73] bg-white dark:bg-[#0d1016] focus:outline-none text-black dark:text-[#2cce73] border dark:border-[#005704] hover:border-[#2CCE73] focus:border-[#2CCE73] py-1 px-4"></textarea>
                    </div>

                    <!-- Craft button -->
                    <div class="flex w-full">
                        <input type="submit" value="Craft GIF&VID" class="ml-auto bg-[#2CCE73] text-black dark:bg-transparent font-medium border border-white  p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all text-white" role="button">
                    </div>
                </form>
            </div>
        </div>

        <!-- Separator -->
        <div class="row mt-4">
            <div class="col border-b border-[#2cce73]"></div>
        </div>


        <div class="row mx-8 ">
            <!-- Gif section -->
            <div class="flex flex-col w-full md:w-1/3 pr-4 py-4">

                <!-- Image -->
                <img id="image" class="self-center my-auto" src="./gif/test.gif"></img>

                <!-- Buttons -->
                <div class="flex flex-wrap justify-center gap-2  gap-y-2 mt-4">
                    <button type="button" onclick="hide()" id="btnID" class="bg-[#2CCE73] text-black dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white  p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all" role="button">
                        Hide GIF
                    </button>
                    <button type="button" onclick="show()" id="btnID" class="bg-[#2CCE73] text-black dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white  p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all" role="button">
                        Show GIF
                    </button>
                    <button type="button" onclick="self.location.href='index.php?savegif=1'" class="bg-[#2CCE73] text-black dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white  p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all" role="button">
                        Save GIF
                    </button>
                </div>

            </div>

            <!-- Separator -->
            <div class="row w-[100vw] -mx-10 md:hidden">
                <div class="w-full border-b border-[#2cce73]"></div>
            </div>

            <!-- Video section -->
            <div class="flex flex-col w-full md:w-2/3 md:border-l border-[#2CCE73] pl-4 py-4">

                <!-- Video -->
                <video id="vid" width="640" height="480" controls autoplay muted>
                    <source id="vids" src="./vids/output.mp4" type="video/mp4">
                </video>

                <!-- Buttons -->
                <div class="flex flex-wrap justify-center gap-2  gap-y-2 mt-4">
                    <button type="button" onclick="hidevid()" id="btnID" class="bg-[#2CCE73] text-black dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white  p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all" role="button">
                        Hide VID
                    </button>
                    <button type="button" onclick="showvid()" id="btnID" class="bg-[#2CCE73] text-black dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white  p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all" role="button">
                        Show VID
                    </button>
                    <button type="button" onclick="self.location.href='index.php?savevid=1'" class="bg-[#2CCE73] text-black dark:bg-transparent dark:text-[#2CCE73] font-medium border border-white  p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all" role="button">
                        Save VID
                    </button>
                </div>
            </div>
        </div>

        <!-- Separator -->
        <div class="row mb-4">
            <div class="col border-b border-[#2cce73]"></div>
        </div>

        <!-- Input form -->
        <div class="row mx-8 my-4">
            <div class="col-full w-full">
                <?php /* echo "<pre>$output1</pre>"; */ ?>
                <form method="post" action="/txt2porngif/index.php?sound=1" class="flex flex-wrap w-full">

                    <!-- Prompt -->
                    <div class="flex gap-1 flex-col w-full mb-4">
                        <label class="whitespace-nowrap text-black dark:text-[#2cce73]" for="param2">Prompt :</label>
                        <textarea name="param2" id="param2" rows="5" required class="w-full rounded dark:bg-[#0d1016] border border-[#2CCE73] hover:border-[#2CCE73] focus:outline-none focus:border-[#2CCE73] text-black dark:text-[#2cce73] py-1 px-4"></textarea>
                    </div>

                    <!-- Craft button -->
                    <div class="flex w-full">
                        <input type="submit" value="Craft sound" class="ml-auto bg-[#2CCE73] text-black dark:bg-transparent font-medium border border-white p-2 rounded dark:border dark:border-[#005704] hover:border-black dark:hover:border-[#2CCE73] focus:border-black dark:focus:border-[#2CCE73] transition-all text-white" role="button">
                    </div>


                </form>

            </div>
        </div>

        <!-- Separator -->
        <div class="row mb-4">
            <div class="col border-b border-[#2cce73]"></div>
        </div>

        <div class="row mb-4 justify-center">
            <video width="320" height="240" controls>
                <source id="sound" src="./sounds/test.mp4" type="video/mp4">
            </video>
        </div>
        <script>
            var timestamp = new Date().getTime();
            var so = document.getElementById("sound");
            so.src = "./sounds/test.mp4?t=" + timestamp;
        </script>

        <!-- Separator -->
        <div class="row mb-4">
            <div class="col border-b border-[#2cce73]"></div>
        </div>
        <?php /* echo "<pre>$output2</pre>"; */ ?>


    </div>




    <?php
    // Function to sanitize user input


    if (isset($_GET['gif']) && isset($_POST['param1']) && isset($_POST['param2'])) {
        $param1 = escapeshellarg($_POST['param1']);
        $param2 = escapeshellarg($_POST['param2']);
        $param3 = escapeshellarg($_POST['param3']);
        $param4 = escapeshellarg($_POST['param4']);


        // Execute the script with the escaped parameters
        $output1 = shell_exec("bash /var/www/html/txt2porngif/txt2gif.sh $param1 $param2 $param3 $param4");
    }


    if (isset($_GET['sound']) && isset($_POST['param2'])) {

        $param2 = escapeshellarg($_POST['param2']);

        // Execute the script with the escaped parameters
        $output2 = shell_exec("bash /var/www/html/txt2porngif/txt2sound.sh $param2");
    }

    if (isset($_GET['savegif'])) {
        $int = random_int(100000000, 999999999);
        shell_exec("cp ./gif/test.gif ./gif/test$int.gif");
    }


    if (isset($_GET['savevid'])) {
        $int = random_int(100000000, 999999999);
        shell_exec("cp ./gif/output.mp4 ./gif/ouput$int.mp4");
    }
    ?>



    <script>
        function darkMode() {
            // let element = document.body;
            // let content = document.getElementById("DarkModetext");
            document.querySelector('html').className += " dark";

        }

        function lightMode() {
            // let element = document.body;
            // let content = document.getElementById("DarkModetext");
            // element.className += " dark";
            document.querySelector('html').className = "";

        }

        function show() {
            /* Access image by id and change
            the display property to block*/
            document.getElementById('image')
                .style.visibility = "";
        }

        function hide() {
            /* Access image by id and change
            the display property to block*/
            document.getElementById('image')
                .style.visibility = "hidden";
        }

        function showvid() {
            /* Access image by id and change
            the display property to block*/
            document.getElementById('vid')
                .style.visibility = "";

        }

        function hidevid() {
            /* Access image by id and change
            the display property to block*/
            document.getElementById('vid')
                .style.visibility = "hidden";
        }

        var timestamp = new Date().getTime();
        var el = document.getElementById("image");
        el.src = "gif/test.gif?t=" + timestamp;

        var timestamp = new Date().getTime();
        var vi = document.getElementById("vids");
        vi.src = "vids/output.mp4?t=" + timestamp;
    </script>

</body>

</html>
