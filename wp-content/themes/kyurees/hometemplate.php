<?php
/* Template Name: Home page */

              get_header();
              ?>

        
<main>

<section class="home-hero">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-md-6">
        <h1>
          <?php echo get_field('banner_text_home'); ?>
        </h1>
        <p class="lead"><?php echo get_field('banner_content_homepage'); ?></p>
        <a class="btn btn-yellow" href="<?php echo get_field('url_link_hp'); ?>"><?php echo get_field('link_text_hp'); ?></a>
      </div>
      <div class="col-md-6">
        <img src="<?php echo get_field('banner_image_hp'); ?>" class="img-fluid">
      </div>
    </div>
     <?php $arr =array("purple-card", "blue-card", "pink-card"); ?>
    <div class="row mt-4">
      <?php
        $i=0;
      ?>
        <?php if (have_rows("products_hp")):
                            while (have_rows("products_hp")):
                                the_row(); ?>
      <div class="col-md-4">
        <div class="<?php echo $arr[$i]; ?>">
          <img src="<?php echo get_sub_field('product_image_hp'); ?>" width="75" class="mb-4">
          <h3 class="mb-3"><?php echo get_sub_field('product_title_hp'); ?></h3>
          <p class="mb-3"><?php echo get_sub_field('product_description_hp'); ?></p>
          <a href="<?php echo get_sub_field('product_link_url_hp'); ?>" class="btn-outline-yellow"><?php echo get_sub_field('product_link_text_hp'); ?></a>
        </div>
      </div>
      <?php
      $i++;
                    endwhile;
                endif; ?>
    </div>

  </div>
</section>

<section class="bg-light Cyber-section" >
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center">
        <h2 class="h1 mb-5"><?php echo get_field('heading_editorial_hp'); ?><span class="yellow-text"> <?php echo get_field('sub_heading_editorial_hp'); ?> </span></h2>
      </div>
    </div>
    <div class="row text-center pie-chart-sec">
    <?php
        $j=1;
      ?>
        <?php if (have_rows("client_editorial")):
                            while (have_rows("client_editorial")):
                                the_row(); ?>
      <div class="col-md-4 <?php if($j<3) {?>border-right <?php } ?>">
        <img src="<?php echo get_sub_field('client_product_image'); ?>" width="" class="w-75">
       <p class="lead mt-3"> <?php echo get_sub_field('client_description_hp'); ?></p>
      </div>
      <?php
      $j++;
                    endwhile;
                endif; ?>
    </div>
  </div>
</section>

<section class="bg-dark-pattern">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center mb-3">
        <h2 class="h1 mb-5"><?php echo get_field('heading_editoral_2'); ?></h2>
      </div>
      <div class="col-md-7">
      <?php echo get_field('editorial_description_2'); ?>
      </div>
      <div class="col-md-5">
        <img src="<?php echo get_field('editorial_image_2'); ?>" width="" class="img-fluid">
      </div>
    </div>
  </div>
</section>

<section class="bg-light">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center">
        <h2 class="h1 mb-5"><?php echo get_field('title_gp'); ?></h2>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 client-sec">
      <?php if (have_rows("logos_gp")):
                            while (have_rows("logos_gp")):
                                the_row(); ?>
        <img src="<?php echo get_sub_field('images'); ?>" class="">
        <?php
                    endwhile;
                endif; ?>
      </div>
    </div>
  </div>
</section>
<section class="bg-dark-pattern">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center mb-2">
          <h2 class="h1 mb-5">Events and <span class="yellow-text"> News</span>​</h2>
        </div>
      </div>
      <div class="row bg-light-news">
        <div class="col-md-6 d-flex">
          <div class="card overflow-hidden">
            <div class="news-container">
              <div class="me-3">
                <img src="<?php echo esc_url(get_template_directory_uri()."/assets/images/news1.png"); ?>" class="img-fluid">
              </div>
              <div>
                <p class="lead mb-1">Law firm that handles data breaches was hit by data breach</p>
                <ul class="news-list">
                  <li class="ps-0">
                    <span class="text-green"> Cyber Security</span>
                  </li>
                  <li class="border-0">
                    <i><img src="<?php echo esc_url(get_template_directory_uri()."/assets/images/clock.png"); ?>"> </i>
                    1 Hour Ago
                  </li>
                </ul>
              </div>
            </div>
            <div class="news-container">
              <div class="me-3">
                <img src="<?php echo esc_url(get_template_directory_uri()."/assets/images/news2.png"); ?>" class="img-fluid">
              </div>
              <div>
                <p class="lead mb-1">Cyberattack exposes Swiss Air Force documents on the Darknet</p>
                <ul class="news-list">
                  <li class="ps-0">
                    <span class="text-green"> Cyber Security</span>
                  </li>
                  <li class="border-0">
                    <i><img src="<?php echo esc_url(get_template_directory_uri()."/assets/images/clock.png"); ?>"> </i>
                    2 Hours Ago
                  </li>
                </ul>
              </div>
            </div>
            <div class="news-container border-0">
              <div class="me-3">
                <img src="<?php echo esc_url(get_template_directory_uri()."/assets/images/news3.png"); ?>" class="img-fluid">
              </div>
              <div>
                <p class="lead mb-1">CertiK’s X account briefly hacked by Forbes impersonator</p>
                <ul class="news-list">
                  <li class="ps-0">
                    <span class="text-green"> Cyber Security</span>
                  </li>
                  <li class="border-0">
                    <i><img src="<?php echo esc_url(get_template_directory_uri()."/assets/images/clock.png"); ?>"> </i>
                    2 Hours Ago
                  </li>
                </ul>
              </div>
            </div>
          </div>
          
        </div>
        <div class="col-md-6 d-flex">
          <div class="news-container-right card">
            <div class="">
              <img src="<?php echo esc_url(get_template_directory_uri()."/assets/images/news4.png"); ?>" class="img-fluid">
            </div>
            <div class="p-4">
              <h5>19 individuals worldwide charged in transnational cybercrime investigation of the XDedic marketplace</h5>
              <ul class="news-list">
                <li class="ps-0">
                  <span class="text-green"> Cyber Security</span>
                </li>
                <li class="border-0">
                  <i><img src="<?php echo esc_url(get_template_directory_uri()."/assets/images/clock.png"); ?>"> </i>
                  2 Hours Ago
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="h1">Testimonials</h2>
          <p class="lead">"Join Our Cybersecurity Community and Share Your Success Story Today."</p>
        </div>
      </div>
      <?php $color =  array('bg-purple','bg-pink','bg-yellow'); 
         $m=0;
        ?>
      <div class="row">
      <?php
       wp_reset_query();
       $args = [
        "post_type" => "testimonials",
        "posts_per_page" => 3,
    ];

    $query = new WP_Query($args);
    if ($query->have_posts()) {
        while ($query->have_posts()) {
            $query->the_post();
      ?>
        <div class="col-md-4">
          <div class="testi">
            <div class="testi-name">
              <h5><?php echo get_field('name_testimonials'); ?></h5>
              <h6><?php echo get_field('designation_testimonials'); ?></h6>
            </div>
            <img src="<?php echo get_the_post_thumbnail_url(); ?>" class="testi-img">
            <div class="testi-cont <?php echo $color[$m]; ?>">
              <p>
              <?php the_content(); ?>
              </p>
            </div>
          </div>
        </div>
        <?php
        $m++;
         }
        }
        wp_reset_query();
        ?>
      </div>
    </div>
  </section>
  <section class="bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="h1">Step Into a Brighter Future</h2>
          <p class="lead w-50 mx-auto">Unlock career-changing cybersecurity training solutions and open up new possibilities for your organization's success.</p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 home-contact">
          <h3>Ready to Get Started?</h3>
          <p>Futureproof your Cybersecurity workforce</p>
          <div class="home-contact-form">
               
                       <?php echo do_shortcode('[contact-form-7 id="6a50f3b" title="Contact form 1"]');  ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>    

              <?php
             // get_sidebar();
              get_footer();
            ?>