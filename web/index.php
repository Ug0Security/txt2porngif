<!DOCTYPE html>
<html>
<head>
    <title>CRAFT ZONE</title>
    
    <style>
        body {
            padding: 25px;
            background-color: black;
            color: white;
            font-size: 20px;
        }
 
        .dark-mode {
            background-color: black;
            color: white;
        }
 
        .light-mode {
            background-color: white;
            color: black;
        }

        /* Set display to none for image*/
        #image {
            display: none;
        }
    </style>
</head>
<body>
    <h1>CRAFT ZONE :)</h1>

    <?php
    // Function to sanitize user input
    

if(isset($_GET['gif']) && isset($_POST['param1']) && isset($_POST['param2']))
{
$param1 = escapeshellarg($_POST['param1']);
$param2 = escapeshellarg($_POST['param2']);
$param3 = escapeshellarg($_POST['param3']);
$param4 = escapeshellarg($_POST['param4']);


// Execute the script with the escaped parameters
$output1 = shell_exec("bash /var/www/html/txt2porngif/txt2gif.sh $param1 $param2 $param3 $param4");
}


if(isset($_GET['sound']) && isset($_POST['param2']))
{

$param2 = escapeshellarg($_POST['param2']);

// Execute the script with the escaped parameters
$output2 = shell_exec("bash /var/www/html/txt2porngif/txt2sound.sh $param2");
}

if(isset($_GET['save']))
{
$int = random_int(100000000, 999999999);
shell_exec("cp ./gif/test.gif ./gif/test$int.gif");
}

    ?>
    
    
<button onclick="darkMode()">Darkmode</button>
<button onclick="lightMode()">LightMode</button>
<h2>=========================================================</h2>
    <form method="post" action="/txt2porngif/index.php?gif=1">
        <label for="param1">---------Type :</label>
       
        <select name="param1" id="param1">
        <option value="hentai">hentai</option>
        <option value="general">general</option>
	</select></br>
	
        <label for="param2">------Prompt :</label>
        <textarea name="param2" id="param2" rows="5" cols="32" required></textarea><br>

        <label for="param3">---Fixed seed:</label>
        <select name="param3" id="param3">
        <option value="">nope</option>
        <option value="fixed">fixed</option>
	</select></br>

        <label for="param4">Seed number:</label>
        <input type="text" name="param4" id="param4"><br>
        
        <input type="submit" value="Craft GIF">
    </form>

<h2>--------------------------------------------------------------------------------------------------</h2>
    <button type="button" onclick="hide()" id="btnID">
        Hide GIF
    </button>

    <button type="button" onclick="show()" id="btnID">
        Show GIF
    </button>

<button type="button" name="save" onclick="self.location.href='index.php?save=1'">
Save
</button>
<img id="image" src="./gif/test.gif"> 


    

    <script>
        function darkMode() {
            let element = document.body;
            let content = document.getElementById("DarkModetext");
            element.className = "dark-mode";
            
        }
        function lightMode() {
            let element = document.body;
            let content = document.getElementById("DarkModetext");
            element.className = "light-mode";
            
        }

function show() {
            /* Access image by id and change
            the display property to block*/
            document.getElementById('image')
                .style.display = "block";
            document.getElementById('btnID')
                .style.display = "";
        }

function hide() {
            /* Access image by id and change
            the display property to block*/
            document.getElementById('image')
                .style.display = "";
            document.getElementById('btnID')
                .style.display = "";
        }

var timestamp = new Date().getTime();     
var el = document.getElementById("image");        
el.src = "gif/test.gif?t=" + timestamp;   

    </script>
<h2>========================[console output]=====================</h2>
 
 <?php 
 
 echo "<pre>$output1</pre>";
 
 ?>
<h2>=========================================================</h2>  
     <form method="post" action="/txt2porngif/index.php?sound=1">
       
	
        <label for="param2">Prompt :</label>
        <textarea name="param2" id="param2" rows="5" cols="32" required></textarea><br>


        <input type="submit" value="Craft sound">
    </form>
 

<video width="320" height="240" controls>
  <source id="sound" src="./sounds/test.mp4" type="video/mp4">
</video>
<script>
var timestamp = new Date().getTime();   
var so = document.getElementById("sound");        
so.src = "./sounds/test.mp4?t=" + timestamp;   
    </script>
<h2>========================[console output]=====================</h2>
 
 <?php 
 
 echo "<pre>$output2</pre>";
 
 ?>
<h2>=========================================================</h2>      
    
</body>
</html>
