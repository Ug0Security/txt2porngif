<?php
   // images directory
   $imagesDirectory = "sounds";

   // list of files to skip
   $toSkip = [".", "..", ".htaccess", ".htpasswd"];

?>
<section id="quickGallery" class="slideInLeft">
   <h1>sound Gallery</h1>
      <style>
body {background-color: black;}
</style>
      <?php 
         $images = scandir($imagesDirectory);

         if (empty(array_diff($images, $toSkip))) {
            echo "<p>No sound in <b>$imagesDirectory</b> directory</p>";
         } else {
            foreach ($images as $fileName) 
            {
               if (in_array($fileName, $toSkip)) continue;
               echo <<<_EOF
               <div class="galleryImage">
                  <video width="320" height="240" controls>
		     <source src="$imagesDirectory/$fileName" type="video/mp4">
                  </video>
               </div>
               <!-- /.galleryImage -->
_EOF;
            }
         }
      ?>
   
</section>
<!-- /#quickGallery -->

<div id="imagePreview" class="quickModal">
   <div id="modalContent">
      <span class="closeBtn"><i class="fa fa-times" aria-hidden="true"></i></span>
      <img src="#" alt="">
   </div>
</div>
