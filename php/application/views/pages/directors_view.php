<div id="directors-page" class="page-content-inner">
	<div class="title-label"><h3>The Directors</h3><div class="label-line"></div></div>
	<div class="page-header"><div class="page-header-inner">
		<h1>EVERY STORY NEEDS A STORYTELLER.</h1>
	</div></div>
	<div class="cfm-project-gallery">
		<ul>
			<?php foreach ($directors as $key => $project): ?>
			<?php if ($project->published == 'on') { ?>
			<li data-id="<?php echo $project->id; ?>" data-image="<?php echo base_url();?>img/directors/thumbs/<?php echo $project->thumbnail_image; ?>.jpg">
				<div class="project-inner">
					<a class="cfm-project" href="<?php echo base_url().'director/'.$project->slug; ?>" data-navigate-to="director/<?php echo $project->slug; ?>">
						<div class="red-gradient"></div>
					</a>
					<div class="project-label"><div class="project-label-inner"><div class="label-line"></div><h2><?php echo $project->title; ?></h2></div></div>
				</div>
			</li>
			<?php } ?>
			<?php endforeach; ?>
		</ul>
	</div>
</div>