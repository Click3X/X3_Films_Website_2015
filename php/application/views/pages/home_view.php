<div id="home-page" class="page-content-inner">

	<div id="home-header">
        <div class="header-inner">
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
            <div class="logo-home"><a href="<?php echo base_url(); ?>"></a></div>
        </div>

	</div>
	<!-- featured carousel -->
	<div class="featured-carousel-container">
		<div class="home-swiper-container">
		    <!-- Additional required wrapper -->
		    <div class="swiper-wrapper">
		        <!-- Slides -->
		        <?php foreach ($featured_projects as $key => $module): ?>
				<?php //if ($project->published == 'on') { ?>
		        <div class="swiper-slide" >
		        	<div class="featured-poster" style="background-image: url(<?php echo base_url();?>img/modules/gif_thumb/<?php echo $module->gif_thumb; ?>.jpg);"></div>
		        	<div class="video-credits">
		        		<h2><?php echo $module->module_heading; ?></h2>
		        		<a data-id="<?php echo $module->module_id; ?>" class="featured-item"><h1><?php echo $module->module_title; ?></h1></a>
		        		<div class="label-line"></div>
		        		<a href="<?php echo base_url();?>director/<?php echo $module->project_slug; ?>"><h3><?php echo $module->project_title; ?></h3></a>
		        	</div>
		        </div>

		        <?php //} ?>
				<?php endforeach; ?>
		    </div>
		    
		    <div class="swiper-pagination"></div>
		</div>
	</div>



	<!-- OVERLAY -->

	<div class="video-overlay overlay-scale" id="featured-overlay-container">
		<div id="overlay-header-container">
	        <div class="header-inner">
	            <div class="hamburger">
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
	        </div>
		</div>
		<div class="video-overlay-inner">
			<div class="overlay-close"></div>

					<div id="featured-overlay-slider">

						<div class="featuredOverlay-swiper-container">
						    <!-- Additional required wrapper -->
						    <div class="swiper-wrapper">
						        <!-- Slides -->
						        <?php foreach ($featured_projects as $key => $module): ?>
						        <div class="swiper-slide" id="featuredOverlay-slide-<?php echo $module->module_id; ?>">
						        	<div class="overlay-credits">
							        	<h3>NOW PLAYING</h3>
							        	<h1><?php echo $module->module_title; ?></h1>
							        	<div class="label-line"></div>
							        	<h2><?php echo $module->project_title; ?></h2>

						        	</div>
						        	<!-- video -->
						        	<h1><?php //echo $module->video_filename; ?></h1>
						        	<div id="featured-video-<?php echo $module->video_filename; ?>" class="cfm-videoplayer" data-video-name="<?php echo base_url(); ?>video/<?php echo $module->video_filename; ?>" data-poster="<?php echo base_url(); ?>img/modules/gif_thumb/<?php echo $module->gif_thumb; ?>.jpg">
									    <div class="cfm-videoplayer-inner">
								            <video class="cfm-videoplayer-mobile" width="960" height="540" controls></video>
								            <div class="cfm-videoplayer-poster">
								            	<div class="cfm-videoplayer-poster-header">
								            		<div class="cfm-videoplayer-poster-header-inner">
												  		<div class="cfm-videoplayer-playbutton"><span class="arrow"></span></div>
													</div>
												</div>
								            </div>
								            <video class="cfm-videoplayer-desktop" width="960" height="540"></video>
								            <div class="cfm-video-controls">
								            	<ul>
													<li class="cfm-video-play-pause-btn cfm-video-btn"></li>
													<li class="cfm-video-fullscreen-btn cfm-video-btn"></li>
													<li class="cfm-video-mute-btn cfm-video-btn"></li>
												</ul><div class="cfm-video-progress-container"><a class="cfm-video-seek-bar"></a><input class="cfm-video-seek-bar-input" type="range" value="0"></div>
											</div>
									    </div>
									</div>



						        </div>
						        <?php endforeach; ?>
						    </div>

						    <div class="swiper-button-prev" id="arrow-left"><span></span></div>
						    <div class="swiper-button-next" id="arrow-right"><span></span></div>

						</div>

					</div>

		</div>
	</div>
	



</div>