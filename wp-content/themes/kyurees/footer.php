 <!-- FOOTER -->
  <footer class="bg-black">
    <div class="container">
      <div class="row">
        <div class="col-md-2">
          <ul>
            <li><a href="<?php echo get_permalink('587'); ?>">About Us</a> </li>
            <li><a href="<?php echo get_permalink('87'); ?>">Contact Us</a> </li>
            <li><a href="<?php echo get_permalink('390'); ?>">Blogs</a> </li>
          </ul>
        </div>
        <div class="col-md-2">
          <ul>
            <li><a href="<?php echo get_permalink('369'); ?>">Help and Support</a> </li>
            <li><a href="<?php echo get_permalink('376'); ?>">Terms</a> </li>
            <li><a href="<?php echo get_permalink('3'); ?>">Privacy Policy</a> </li>
          </ul>
        </div>
        <div class="col-md-8">
          <a href="#" class="btn btn-outline-yellow float-end">English</a>
        </div>
      </div>
      <div class="row footer-bottom">
        <div class="col-md-12">
          <a href="<?php bloginfo('url'); ?>">
            <img src="<?php echo esc_url(get_template_directory_uri()."/assets/images/logo.png") ?>" class="" width="220">
          </a>
          <a href="" class="copyright">
            © <?php echo date('Y'); ?> Kyureeus
          </a>
        </div>
      </div>
    </div>
  </footer>
</main>
<?php wp_footer(); ?>
<script src="<?php echo esc_url(get_template_directory_uri()."/assets/js/bootstrap.bundle.min.js"); ?>"></script>
<script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>
  <?php if(is_front_page() || is_home()){?>
    <script>
    $(document).ready(function() {
      var video = $("#myVideo")[0];
      video,play();
    });
  </script>
  <?php } ?>

<script>
  $(document).ready(function() {
  $("#myVideo").click(function() {
    var video = $("#myVideo")[0];
    if (video.paused) {
      video.play();
      $("#img_2").show();
      $("#img_1").show();
      $("#img_3").show();
      $("#test_1")[0].pause();
      $("#test_3")[0].pause();
      $("#test_2")[0].pause();
      $(".playpause").fadeOut();
    } else {
      video.pause();
      $(".playpause").fadeIn();
    }
  });
  
  $("#test_1").click(function() {
    var video = $("#test_1")[0];
    if (video.paused) {
      video.play();
      $("#img_1").hide();
      $("#img_2").show();
      $("#img_3").show();
      $("#test_2")[0].pause();
      $("#test_3")[0].pause();
      $("#myVideo")[0].pause();
      $(".playpause").fadeIn();
    } else {
      video.pause();
      $("#img_1").show();
    }
  });

 $("#test_2").click(function() {
    var video = $("#test_2")[0];
    if (video.paused) {
      video.play();
      $("#img_2").hide();
      $("#img_1").show();
      $("#img_3").show();
      $("#test_1")[0].pause();
      $("#test_3")[0].pause();
      $("#myVideo")[0].pause();
      $(".playpause").fadeIn();
    } else {
      video.pause();
      $("#img_2").show();
    }
  });

  $("#test_3").click(function() {
    var video = $("#test_3")[0];
    if (video.paused) {
      video.play();
      $("#img_3").hide();
      $("#img_1").show();
      $("#img_2").show();
      $("#test_1")[0].pause();
      $("#test_2")[0].pause();
      $("#myVideo")[0].pause();
      $(".playpause").fadeIn();
    } else {
      video.pause();
      $("#img_3").show();
    }
  });



});

  $(document).ready(function() {
    var video = $("#myVideo")[0];
$(window).scroll(function(){

  
  var scroll = $(this).scrollTop();
   if(scroll > 70){
    video.pause();
    $(".playpause").fadeIn();
   }
});

});
  </script>
    </body>
</html>
