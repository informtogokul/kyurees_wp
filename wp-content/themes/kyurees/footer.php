 <!-- FOOTER -->
  <footer class="bg-black">
    <div class="container">
      <div class="row">
        <div class="col-md-2">
          <ul>
            <li><a href="">About Us</a> </li>
            <li><a href="<?php echo get_permalink('87'); ?>">Contact Us</a> </li>
            <li><a href="">Blogs</a> </li>
          </ul>
        </div>
        <div class="col-md-2">
          <ul>
            <li><a href="">Help and Support</a> </li>
            <li><a href="">Terms</a> </li>
            <li><a href="">Privacy Policy</a> </li>
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
<script src="<?php echo esc_url(get_template_directory_uri()."/assets/js/bootstrap.bundle.min.js"); ?>"></script>

    </body>
</html>
