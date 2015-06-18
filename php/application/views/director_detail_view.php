<div class="title-label"><h3>The Directors</h3><div class="label-line"></div></div>
<div class="page-header"><div class="page-header-inner">
	<h1><?php echo $data->title; ?></h1>
	<p><?php echo $data->description; ?></p>
	<a href="">MORE</a>
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
		<li>
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