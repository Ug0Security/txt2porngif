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
            width: 800px
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
        #vid {
            display: none;    
        }
        
h2 {
  background-color: black;
  
  color: green;
  cursor: pointer;
  font-family: CerebriSans-Regular,-apple-system,system-ui,Roboto,sans-serif;
  padding: 7px 20px;
  text-align: center;
  text-decoration: none;
  transition: all 250ms;
  border: 0;
  font-size: 10px;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}
        

label {
  background-color: black;
  
  box-shadow: rgba(44, 187, 99, .2) 0 -25px 18px -14px inset,rgba(44, 187, 99, .15) 0 1px 2px,rgba(44, 187, 99, .15) 0 2px 4px,rgba(44, 187, 99, .15) 0 4px 8px,rgba(44, 187, 99, .15) 0 8px 16px,rgba(44, 187, 99, .15) 0 16px 32px;
  color: green;
  cursor: pointer;
  display: inline-block;
  font-family: CerebriSans-Regular,-apple-system,system-ui,Roboto,sans-serif;
  padding: 7px 20px;
  text-align: center;
  text-decoration: none;
  transition: all 250ms;
  border: 0;
  font-size: 10px;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-33 {
  
  border-radius: 100px;
  box-shadow: rgba(44, 187, 99, .2) 0 -25px 18px -14px inset,rgba(44, 187, 99, .15) 0 1px 2px,rgba(44, 187, 99, .15) 0 2px 4px,rgba(44, 187, 99, .15) 0 4px 8px,rgba(44, 187, 99, .15) 0 8px 16px,rgba(44, 187, 99, .15) 0 16px 32px;
  color: green;
  cursor: pointer;
  display: inline-block;
  font-family: CerebriSans-Regular,-apple-system,system-ui,Roboto,sans-serif;
  padding: 7px 20px;
  text-align: center;
  text-decoration: none;
  transition: all 250ms;
  border: 0;
  font-size: 16px;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-33:hover {
  box-shadow: rgba(44,187,99,.35) 0 -25px 18px -14px inset,rgba(44,187,99,.25) 0 1px 2px,rgba(44,187,99,.25) 0 2px 4px,rgba(44,187,99,.25) 0 4px 8px,rgba(44,187,99,.25) 0 8px 16px,rgba(44,187,99,.25) 0 16px 32px;
  transform: scale(1.05) rotate(-1deg);
}


textarea {
  margin-top: 10px;
  margin-left: 50px;
  width: 500px;
  height: 100px;
  -moz-border-bottom-colors: none;
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  background: none repeat scroll 0 0 rgba(0, 0, 0, 0.07);
  border-color: -moz-use-text-color #FFFFFF #FFFFFF -moz-use-text-color;
  border-image: none;
  border-radius: 6px 6px 6px 6px;
  border-style: none solid solid none;
  border-width: medium 1px 1px medium;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.12) inset;
  color: #555555;
  font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
  font-size: 1em;
  line-height: 1.4em;
  padding: 5px 8px;
  transition: background-color 0.2s ease 0s;
}

input {
  margin-top: 10px;
  margin-left: 50px;
  width: 130px;
  height: 40px;
  -moz-border-bottom-colors: none;
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  background: none repeat scroll 0 0 rgba(0, 0, 0, 0.07);
  border-color: -moz-use-text-color #FFFFFF #FFFFFF -moz-use-text-color;
  border-image: none;
  border-radius: 6px 6px 6px 6px;
  border-style: none solid solid none;
  border-width: medium 1px 1px medium;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.12) inset;
  color: #555555;
  font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
  font-size: 1em;
  line-height: 1.4em;
  padding: 5px 8px;
  transition: background-color 0.2s ease 0s;
}

select {
  margin-top: 10px;
  margin-left: 50px;
  width: 130px;
  height: 25px;
  -moz-border-bottom-colors: none;
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  background: none repeat scroll 0 0 rgba(0, 0, 0, 0.07);
  border-color: -moz-use-text-color #FFFFFF #FFFFFF -moz-use-text-color;
  border-image: none;
  border-radius: 6px 6px 6px 6px;
  border-style: none solid solid none;
  border-width: medium 1px 1px medium;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.12) inset;
  color: #555555;
  font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
  font-size: 0.5em;
  line-height: 1.4em;
  padding: 5px 8px;
  transition: background-color 0.2s ease 0s;
}

textarea:focus {
    background: none repeat scroll 0 0 #FFFFFF;
    outline-width: 0;
}


#container {
  width: 60vw;
  margin: 1vw auto;
  
  
}

.neonText {
  color: green;
  text-shadow:
      0 0 7px #fff,
      0 0 10px #fff,
      0 0 21px #fff,
      0 0 42px #0fa,
      0 0 82px #0fa,
      0 0 92px #0fa,
      0 0 102px #0fa,
      0 0 151px #0fa;
}

h1 {
  margin-left: 8em;
  font-size: 2rem;
  animation: flicker 1.5s infinite alternate;     
}

 /* Flickering animation */
@keyframes flicker {
    
  0%, 18%, 22%, 25%, 53%, 57%, 100% {

      text-shadow:
      0 0 4px #fff,
      0 0 11px #fff,
      0 0 19px #fff,
      0 0 40px #0fa,
      0 0 80px #0fa,
      0 0 90px #0fa,
      0 0 100px #0fa,
      0 0 150px #0fa;
  
  }
  
  20%, 24%, 55% {        
      text-shadow: none;
  }    
}       
    </style>
</head>
<body>
<div id="container">
    <h1 class="neonText">CRAFT ZONE :)</h1>
</div>
<h2>-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h2>
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

if(isset($_GET['savegif']))
{
$int = random_int(100000000, 999999999);
shell_exec("cp ./gif/test.gif ./gif/test$int.gif");
}


if(isset($_GET['savevid']))
{
$int = random_int(100000000, 999999999);
shell_exec("cp ./gif/output.mp4 ./gif/ouput$int.mp4");
}
    ?>
    
    
<button onclick="darkMode()" class="button-33" role="button">Darkmode</button>
<button onclick="lightMode()" class="button-33" role="button">LightMode</button>
<button type="button" name="picgal" onclick="self.location.href='picgal.php'" class="button-33" role="button">picgal</button>
<button type="button" name="gifgal" onclick="self.location.href='gifgal.php'" class="button-33" role="button">gifgal</button>
<button type="button" name="vidgal" onclick="self.location.href='vidgal.php'" class="button-33" role="button">vidgal</button>
<h2>-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h2>
    <form method="post" action="/txt2porngif/index.php?gif=1">
        <label for="param1">---------Type :</label>
       
        <select name="param1" id="param1">
        <option value="hentai">hentai</option>
        <option value="general">general</option>
	</select></br>
	
	
<label for="param3">---Fixed seed:</label>
        <select name="param3" id="param3">
        <option value="">nope</option>
        <option value="fixed">fixed</option>
	</select></br>

        <label for="param4">Seed number:</label>
        <input type="text" name="param4" id="param4"><br>
	
        <label for="param2">------Prompt :</label>
        <textarea name="param2" id="param2" rows="5" cols="32" required></textarea><br>


        
        <input type="submit" value="Craft GIF&VID" class="button-33" role="button">
    </form>

<h2>-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h2>
    <button type="button" onclick="hide()" id="btnID" class="button-33" role="button">
        Hide GIF
    </button>

    <button type="button" onclick="show()" id="btnID" class="button-33" role="button">
        Show GIF
    </button>
    
    <button type="button" onclick="self.location.href='index.php?savegif=1'" class="button-33" role="button">
Save GIF
</button>

    <button type="button" onclick="hidevid()" id="btnID" class="button-33" role="button">
        Hide VID
    </button>

    <button type="button" onclick="showvid()" id="btnID" class="button-33" role="button">
        Show VID
    </button>
    
    <button type="button"  onclick="self.location.href='index.php?savevid=1'" class="button-33" role="button">
Save VID
</button>

<img id="image" src="./gif/test.gif"></img> <video id="vid" width="640" height="480" controls autoplay muted><source id="vids" src="./vids/output.mp4" type="video/mp4"></video>


    

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

function showvid() {
            /* Access image by id and change
            the display property to block*/
            document.getElementById('vid')
                .style.display = "block";
            document.getElementById('btnID')
                .style.display = "";
        }

function hidevid() {
            /* Access image by id and change
            the display property to block*/
            document.getElementById('vid')
                .style.display = "";
            document.getElementById('btnID')
                .style.display = "";
        }

var timestamp = new Date().getTime();     
var el = document.getElementById("image");        
el.src = "gif/test.gif?t=" + timestamp;   

var timestamp = new Date().getTime();     
var vi = document.getElementById("vids");        
vi.src = "vids/output.mp4?t=" + timestamp;   


    </script>
<h2>-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h2>

 <?php 
 
 echo "<pre>$output1</pre>";
 
 ?>
<h2>-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h2>
    <form method="post" action="/txt2porngif/index.php?sound=1">
       
	
        <label for="param2">Prompt :</label>
        <textarea name="param2" id="param2" rows="5" cols="32" required></textarea><br>


        <input type="submit" value="Craft sound" class="button-33" role="button">
    </form>
 
<h2>-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h2>
<video width="320" height="240" controls>
  <source id="sound" src="./sounds/test.mp4" type="video/mp4">
</video>
<script>
var timestamp = new Date().getTime();   
var so = document.getElementById("sound");        
so.src = "./sounds/test.mp4?t=" + timestamp;   
    </script>
<h2>-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h2>
 
 <?php 
 
 echo "<pre>$output2</pre>";
 
 ?>
<h2>-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h2>
    
</body>
</html>
