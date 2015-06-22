<div class="title-label"><h3>The Directors</h3><div class="label-line"></div></div>
<div class="page-header"><div class="page-header-inner">
	<h1><?php echo $data->title; ?></h1>
	<p><?php echo $data->blurb; ?></p>
	<p class="hidden-bio"><?php echo $data->description; ?></p>	
	<a class="view-more">MORE</a>
</div></div>

<div class="featured-img" style="background-image: url(<?php echo base_url();?>img/directors/thumbs/<?php echo $data->thumbnail_image; ?>.jpg); ">
	<div class="red-gradient"></div>
	<a class="view-reel-btn">VIEW REEL</a>
</div>


<?php if( isset($modules) && count($modules) > 0): ?>
<div class="director-videos-list">
	<?php //var_dump($modules);?>
	<ul>
		<?php foreach ( $modules as $module ): ?>
		<li data-id="<?php echo $module->module_id; ?>" class="director-item">
			<a style="background-image: url(<?php echo base_url();?>img/modules/gif_thumb/<?php echo $module->gif_thumb; ?>.jpg);"><div class="red-gradient"></div></a>
			
			<div class="video-label">
				<h3><?php echo $module->heading; ?></h3>
				<h2><?php echo $module->title; ?></h2>
				<div class="label-line"></div>
				<h4><?php echo $module->subhead; ?></h4>
			</div>

		</li>
		<?php endforeach; ?>
	</ul>


</div>
<?php endif; ?>


<div class="page-footer-navigation">
	<div class="page-footer-inner">
		<div class="cfm-project-naviation cfm-navigation">
			<div class="navigation-inner">
												<!-- BACK TO DIRECTORS LIST BTN -->
					<div class="back-grid"><a href="<?php echo base_url().$parent_slug; ?>" data-navigate-to="<?php echo $parent_slug; ?>" style="background-image: url(<?php echo base_url();?>img/grid_btn.png);"></a></div>	
				<?php if( !empty($previous) ) : ?>
				<li class="previous-button"><a href="<?php echo base_url(). $category_slug. '/' . $previous; ?>" data-navigate-to="<?php echo $category_slug. '/' . $previous; ?>" ><span id="arrow-left"></span><span class="director-name"><?php echo $previous_director; ?></span></a></li>
				<?php endif; ?> 
				<!-- <div class="previous-button"><a href=""><span id="arrow-left"></span><span class="director-name">WEN ZHANG</span></a></div> -->

				<?php if( !empty($next) ) : ?>
				<div class="next-button"><a href="<?php echo base_url(). $category_slug. '/' . $next; ?>" data-navigate-to="<?php echo $category_slug. '/' . $next; ?>" ><span class="director-name"><?php echo $next_director; ?></span><span id="arrow-right"></span></a></div>
				<?php endif; ?>
			

			</div>
		</div>
	</div>
</div>

<!-- OVERLAY -->
<?php foreach ($modules as $module): ?>
	<div class="video-overlay overlay-scale" id="director-overlay-<?php echo $module->module_id; ?>">
		<div class="video-overlay-inner">
			<div class="overlay-close"></div>
				<?php echo $module->title; ?>
		</div>
	</div>
<?php endforeach; ?>