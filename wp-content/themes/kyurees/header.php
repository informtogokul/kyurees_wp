<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head>
    <script src="assets/js/color-modes.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.118.2">
    <title><?php the_title(); ?></title>
    <script src="<?php echo esc_url(get_template_directory_uri()."/assets/js/color-modes.js"); ?>"></script>
    <link rel="canonical" href="<?php echo esc_url("https://getbootstrap.com/docs/5.3/examples/carousel/"); ?>">
    <link rel="stylesheet" href="<?php echo esc_url("https://cdn.jsdelivr.net/npm/@docsearch/css@3"); ?>">
    <link href="<?php echo esc_url(get_template_directory_uri()."/assets/css/bootstrap.min.css"); ?>" rel="stylesheet">
<!-- Custom styles for this template -->
    <link href="<?php echo esc_url(get_template_directory_uri()."/assets/css/custome.css"); ?>" rel="stylesheet">
     <?php wp_head(); ?>
     <link href="<?php echo esc_url(get_template_directory_uri()."/style.css"); ?>" rel="stylesheet">
  </head>
<body>

<header data-bs-theme="dark">
  <nav class="navbar navbar-expand-md navbar-dark fixed-top top-navbar">
    <div class="container">
      <div class="col-md-2 mb-2 mb-md-0 logo">
        <a href="<?php bloginfo('url'); ?>">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.png" class="img-fluid" width="200">
        </a>
      </div>

      <div class="col-md-8">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mx-auto mb-2 mb-md-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">For Individual</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">For Universities</a>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">  For Enterprise  </a>
                <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#"> Cybersecurity Apprenticeship Program </a></li>
                
                <li><a class="dropdown-item" href="#"> Cyber Academy </a></li>
                <li><a class="dropdown-item" href="#"> Application  Security Training </a>
                  <li><a class="dropdown-item" href="#"> Awareness Training & Phishing </a>
                    <li><a class="dropdown-item" href="#"> Advanced Training </a>
                      <li><a class="dropdown-item" href="#"> partnerships </a>
                </li></ul>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">News & Blog</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Why Kyureeus</a>
            </li>
          </ul>
         </div>
      </div>
      <div class="col-md-2">
        <a class="btn btn-outline-pink float-end" href="<?php echo get_permalink('87'); ?>" type="submit">Contact Us</a>
      </div>
      
      
    </div>
  </nav>
</header>