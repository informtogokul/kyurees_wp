<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head>
 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.118.2">
    <title><?php the_title(); ?></title>
    <script src="<?php echo esc_url(get_template_directory_uri()."/assets/js/color-modes.js"); ?>"></script>
    <link rel="canonical" href="<?php echo esc_url("https://getbootstrap.com/docs/5.3/examples/carousel/"); ?>">
    <link rel="stylesheet" href="<?php echo esc_url("https://cdn.jsdelivr.net/npm/@docsearch/css@3"); ?>">
    <link rel="icon" type="image/x-icon" href="<?php echo esc_url(get_template_directory_uri()."/assets/images/favicon.png"); ?>">
    <link href="<?php echo esc_url(get_template_directory_uri()."/assets/css/bootstrap.min.css"); ?>" rel="stylesheet">
<!-- Custom styles for this template -->
    <link href="<?php echo esc_url(get_template_directory_uri()."/assets/css/custome.css"); ?>" rel="stylesheet">
     <?php wp_head(); ?>
     <link href="<?php echo esc_url(get_template_directory_uri()."/style.css"); ?>" rel="stylesheet">
     <link rel="apple-touch-icon" sizes="180x180" href="<?php echo esc_url(get_template_directory_uri()."/assets/images/apple-touch-icon.png"); ?>">
<link rel="icon" type="image/png" sizes="32x32" href="<?php echo esc_url(get_template_directory_uri()."/assets/images/favicon-32x32.png"); ?>">
<link rel="icon" type="image/png" sizes="16x16" href="<?php echo esc_url(get_template_directory_uri()."/assets/images/favicon-16x16.png"); ?>">
<script type="text/javascript" id="zsiqchat">var $zoho=$zoho || {};$zoho.salesiq = $zoho.salesiq || {widgetcode: "siqb22d4e7cc8b248353956d8aedab0ad991571337f17299da38d391af0e1939693", values:{},ready:function(){}};var d=document;s=d.createElement("script");s.type="text/javascript";s.id="zsiqscript";s.defer=true;s.src="https://salesiq.zohopublic.in/widget";t=d.getElementsByTagName("script")[0];t.parentNode.insertBefore(s,t);</script>

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

        <div class="col-md-7 order-md-1 order-last col-12">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
          <?php
        wp_nav_menu( array(
                'menu'              => 'primary',
                'depth'             => 2,
                'container'         => 'div',
                'container_class'   => 'navbar-collapse collapse',
                'menu_class'        => 'navbar-nav mx-auto mb-2 mb-md-0',
                'container_id' => 'navbarCollapse',
                'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
                'walker'            => new wp_bootstrap_navwalker())
            );
        ?>
      </div>
      <div class="col-md-3 order-md-3">
      <a class="btn btn-outline-pink" href="https://learn.kyureeus.com/" type="submit" target="_blank">Student Login</a>
        <a class="btn btn-outline-pink float-end" href="<?php echo get_permalink('87'); ?>" type="submit">Contact Us</a>
      </div>
      
      
    </div>
  </nav>
</header>
