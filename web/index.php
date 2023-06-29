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
        #vid {
            display: none;    
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
  background-color: #c2fbd7;
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
  margin: 2vw auto;
  left :0
}

h1 {
  text-align: left;
  color: #fff;
  font-size: 2em;
  letter-spacing: 8px;
  font-family: 'Press Start 2P';
  font-weight: 400;
  /*Create overlap*/
  
  margin: 0;
  line-height: 0;
  /*Animation*/
  
  animation: glitch1 2.5s infinite;
}

h1:nth-child(2) {
  color: #67f3da;
  animation: glitch2 2.5s infinite;
}

h1:nth-child(3) {
  color: #f16f6f;
  animation: glitch3 2.5s infinite;
}
/*Keyframes*/

@keyframes glitch1 {
  0% {
    transform: none;
    opacity: 1;
  }
  7% {
    transform: skew(-0.5deg, -0.9deg);
    opacity: 0.75;
  }
  10% {
    transform: none;
    opacity: 1;
  }
  27% {
    transform: none;
    opacity: 1;
  }
  30% {
    transform: skew(0.8deg, -0.1deg);
    opacity: 0.75;
  }
  35% {
    transform: none;
    opacity: 1;
  }
  52% {
    transform: none;
    opacity: 1;
  }
  55% {
    transform: skew(-1deg, 0.2deg);
    opacity: 0.75;
  }
  50% {
    transform: none;
    opacity: 1;
  }
  72% {
    transform: none;
    opacity: 1;
  }
  75% {
    transform: skew(0.4deg, 1deg);
    opacity: 0.75;
  }
  80% {
    transform: none;
    opacity: 1;
  }
  100% {
    transform: none;
    opacity: 1;
  }
}

@keyframes glitch2 {
  0% {
    transform: none;
    opacity: 0.25;
  }
  7% {
    transform: translate(-2px, -3px);
    opacity: 0.5;
  }
  10% {
    transform: none;
    opacity: 0.25;
  }
  27% {
    transform: none;
    opacity: 0.25;
  }
  30% {
    transform: translate(-5px, -2px);
    opacity: 0.5;
  }
  35% {
    transform: none;
    opacity: 0.25;
  }
  52% {
    transform: none;
    opacity: 0.25;
  }
  55% {
    transform: translate(-5px, -1px);
    opacity: 0.5;
  }
  50% {
    transform: none;
    opacity: 0.25;
  }
  72% {
    transform: none;
    opacity: 0.25;
  }
  75% {
    transform: translate(-2px, -6px);
    opacity: 0.5;
  }
  80% {
    transform: none;
    opacity: 0.25;
  }
  100% {
    transform: none;
    opacity: 0.25;
  }
}

@keyframes glitch3 {
  0% {
    transform: none;
    opacity: 0.25;
  }
  7% {
    transform: translate(2px, 3px);
    opacity: 0.5;
  }
  10% {
    transform: none;
    opacity: 0.25;
  }
  27% {
    transform: none;
    opacity: 0.25;
  }
  30% {
    transform: translate(5px, 2px);
    opacity: 0.5;
  }
  35% {
    transform: none;
    opacity: 0.25;
  }
  52% {
    transform: none;
    opacity: 0.25;
  }
  55% {
    transform: translate(5px, 1px);
    opacity: 0.5;
  }
  50% {
    transform: none;
    opacity: 0.25;
  }
  72% {
    transform: none;
    opacity: 0.25;
  }
  75% {
    transform: translate(2px, 6px);
    opacity: 0.5;
  }
  80% {
    transform: none;
    opacity: 0.25;
  }
  100% {
    transform: none;
    opacity: 0.25;
  }
}
        
    </style>
</head>
<body>
<div id="container">
    <h1>CRAFT ZONE :)</h1>
</div>
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
<h2>=========================================================</h2>
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

<h2>--------------------------------------------------------------------------------------------------</h2>
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
<h2>========================[console output]=====================</h2>
 
 <?php 
 
 echo "<pre>$output1</pre>";
 
 ?>
<h2>=========================================================</h2>  
     <form method="post" action="/txt2porngif/index.php?sound=1">
       
	
        <label for="param2">Prompt :</label>
        <textarea name="param2" id="param2" rows="5" cols="32" required></textarea><br>


        <input type="submit" value="Craft sound" class="button-33" role="button">
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
