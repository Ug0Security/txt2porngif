<?php
   // images directory
   $imagesDirectory = "vids";

   // list of files to skip
   $toSkip = [".", "..", ".htaccess", ".htpasswd"];

?>
<section id="quickGallery" class="slideInLeft">
   <h1>Vids Gallery</h1>
   
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
                  <video width="640" height="480" controls autoplay>
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
