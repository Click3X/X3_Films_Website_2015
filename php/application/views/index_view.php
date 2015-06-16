<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>X3 Films <?php echo ENVIRONMENT == "production" ? "" : ": " . ENVIRONMENT; ?></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

        <!-- icons -->
        <link rel="apple-touch-icon" sizes="57x57" href="favicon/apple-touch-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="favicon/apple-touch-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="favicon/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="favicon/apple-touch-icon-76x76.png">
        <link rel="icon" type="image/png" href="favicon/favicon-32x32.png" sizes="32x32">
        <link rel="icon" type="image/png" href="favicon/favicon-96x96.png" sizes="96x96">
        <link rel="icon" type="image/png" href="favicon/favicon-16x16.png" sizes="16x16">
        <link rel="manifest" href="img/manifest.json">
        <!-- end icons -->

        <link rel="stylesheet" href="<?php echo base_url(); ?>css/main.css">

        <script src="<?php echo base_url(); ?>js/vendor/modernizr-2.6.2.min.js"></script>
        <script src="<?php echo base_url(); ?>js/master.js"></script>
        <script type="text/javascript">
            var base_url    = "<?php echo base_url(); ?>";
            var root_dir    = "<?php echo $this->config->item('root_directory'); ?>";
            var debug       = "<?php echo $this->config->item('debug'); ?>";
        </script>
        <!--[if (lt IE 9)]><!--><script src="<?php echo base_url(); ?>js/vendor/respond.min.js"></script><!--<![endif]-->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBaTC6YnzPequMZihfh2Cbdr6CjcrhvE_k"></script>
        <script src="<?php echo base_url(); ?>js/vendor/swiper/swiper.min.js"></script>
        <script src="//use.typekit.net/hqh3atb.js"></script>
        <script>try{Typekit.load();}catch(e){}</script>
    </head>
        <!--[if IE 8 ]><body class="ie8"><![endif]-->
        <!--[if (gt IE 9)|!(IE)]><!--><body><!--<![endif]-->

        <div id="site-wrapper" class="site-wrapper">
            <div id="header-container">
                <div class="header-inner">
                    <!-- <div id="logo" class="logo"><a href="<?php echo base_url(); ?>"></a></div> -->
                    <div id="hamburger" class="hamburger">
                        <div class="hamburger-inner">
                            <a>
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </a>
                        </div>                      
                    </div>
                    <div class="logo-black"><a href="<?php echo base_url(); ?>"></a></div>
<!--                     <div id="page-labels"><ul><li data-page-id="projects"><a href="<?php echo base_url(); ?>projects">OUR WORK</a></li><li data-page-id="project"><a href="<?php echo base_url(); ?>projects">OUR WORK</a></li><li data-page-id="about"><a href="<?php echo base_url(); ?>about">ABOUT</a></li></ul></div> -->
                </div>
            </div>

            <div id="page-container">
                <div id="page-content">
                    <?php $this->load->view( "pages/".$page_id."_view" ); ?>
                </div>
            </div>
            <div id="footer-container">
                <div class="cfm-logo-footer"></div>
                <p>16 W 22nd Street 4th Floor<br />New York, NY 10010<br />212.627.1900</p>
                <p>Megan Kelly, Executive Producer<br /><a href="mailto:megan@click3x.com" target="_blank">megan@click3x.com</a></p>
                <div id="mobile-menu" class="cfm-navigation mobile-menu">
                    <div id="hamburger-open">
                        <div class="hamburger-inner">
                            <a>
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </a>
                        </div>
                    </div>
                    <div class="mobile-menu-inner">

                        <div class="logo-white"><a href="<?php echo base_url(); ?>"></a></div>
                        <ul>
                            <!-- <li><a data-navigate-to="home" href="<?php echo base_url(); ?>home"><h1>HOME</h1></a></li> -->
                            <li><a data-navigate-to="projects" href="<?php echo base_url(); ?>directors"><h1>DIRECTORS</h1></a></li>
                            <li><a data-navigate-to="projects" href="<?php echo base_url(); ?>projects"><h1>WORK</h1></a></li>
                            <li><a data-navigate-to="about" href="<?php echo base_url(); ?>about"><h1>ABOUT</h1></a></li>
                            <li><a href="<?php echo base_url(); ?>contact"><h1>CONTACT</h1></a></li>
                            <li><a href="http://www.click3x.com"><h1>CLICK 3X</h1></a></li>
                        </ul>
                    </div>
                </div>

                <!-- social media icons -->
                <div class="social-navigation">
                    <ul>
                        <li id="p2" class="twitter-btn">
                            <div class="project-inner">
                                <a target="_blank" href="https://twitter.com/click3x">
                                    <div class="project-label"><div class="project-label-inner"></div></div>
                                </a>
                            </div>
                        </li>
                        <li id="p1" class="facebook-btn">
                            <div class="project-inner">
                                <a target="_blank" href="https://www.facebook.com/Click3X">
                                    <div class="project-label"><div class="project-label-inner"></div></div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <script data-main="<?php echo base_url();?>js/main" src="<?php echo base_url();?>js/vendor/require.min.js"></script>
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create',"<?php echo $this->config->item('ga_account');?>");ga('send','pageview');
        // </script>
    </body>
</html>
