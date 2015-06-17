<div id="director-page" class="page-content-inner">
	<div id="director-details-container">
		<?php //if(!isset($template) || $template === false) $this->load->view("project_detail_view"); ?>
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
					<a style="background-image: url(<?php echo base_url();?>img/modules/gif_thumb/<?php echo $module->gif_thumb; ?>.jpg);"></a>
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



		<!-- <div class="page-header-navigation">
	<div class="page-header-inner">
		<div class="cfm-project-naviation cfm-navigation">
			<ul>
				<li><a href="<?php echo base_url().$parent_slug; ?>" data-navigate-to="<?php echo $parent_slug; ?>" ><span class="line-arrow-left line-arrow"></span><?php echo $parent_slug == "home" ? 'Home' : 'All Work'; ?></a></li>
				<?php if( !empty($next) ) : ?>
				<li class="next-button"><a href="<?php echo base_url(). $category_slug. '/' . $next; ?>" data-navigate-to="<?php echo $category_slug. '/' . $next; ?>" ><span class="line-arrow-right line-arrow"></span></a></li>
				<?php endif; ?>
				<?php if( !empty($previous) ) : ?>
				<li class="previous-button"><a href="<?php echo base_url(). $category_slug. '/' . $previous; ?>" data-navigate-to="<?php echo $category_slug. '/' . $previous; ?>" ><span class="line-arrow-left line-arrow"></span></a></li>
				<?php endif; ?>
			</ul>
		</div>
	</div>
</div>
<div class="project-detail">
	<div class="project-heading">
		<div class="project-heading-inner">
			<h2><?php echo $data->heading; ?></h2>
			<h1><?php echo $data->subhead; ?></h1>
			<?php if( isset($modules) && count($modules) > 1): ?><div class="video-anchor-link"><a href="#<?php echo $data->slug; ?>-video"><span class="arrow"></span><span class="label"><?php echo !empty($modules[1]->title) ? $modules[1]->title : "Watch Case Study"; ?></span></a></div><?php endif; ?>
		</div>
	</div>
	<div class="featured-module">
		<div class="featured-module-inner project-module-inner">
			<?php if( isset($modules) && count($modules) > 0): ?>
			<?php $this->load->view( "modules/".$modules[0]->module_type_name."_view", array("module"=>$modules[0]) ); ?>
			<?php endif; ?>
		</div>
	</div>
	<div class="project-about">
		<div class="project-about-inner">
			<div class="project-module-image project-logo" data-image="http://media.click3x.com/images/cfm/client_logos/<?php echo $data->client_logo; ?>.jpg"></div>
			<div class="project-description">
				<div class="project-description-inner">
					<?php 
						$desc = $data->description;
						$desc = str_replace("\n\n", "</p><p>", $desc);
						$desc = str_replace("\r", "<br />", $desc);
						$desc = str_replace("\n", "<br />", $desc);
					?>
					<p><?php echo $desc; ?></p>
					<div class="project-links-menu">
			            <div class="project-links-menu-inner">
			                <ul>
			                	<?php foreach ( $links as $key => $link ): ?>
			                    <li><a target="_blank" href="<?php echo $link->href; ?>"><h4><?php echo strtoupper( $link->label ); ?></h4></a></li>
			                    <?php endforeach; ?>
			                </ul>
				        </div>
					</div>
				</div>
            </div>
		</div>
	</div>
	<div class="project-module-container">
		<?php if(isset($modules)): for($i = 1; $i<count($modules); $i++): $module=$modules[$i] ?>
			<div class="project-module <?php echo $module->module_type_name; ?>">
				<div class="project-module-inner">
				<?php $this->load->view( "modules/".$module->module_type_name."_view", array("module"=>$module) ); ?>
				</div>
			</div>
		<?php endfor; endif; ?>
	</div>
</div>
<div class="page-footer-navigation">
	<div class="page-footer-inner">
		<div class="cfm-project-naviation cfm-navigation">
			<ul>
				<li><a href="<?php echo base_url().$parent_slug; ?>" data-navigate-to="<?php echo $parent_slug; ?>" ><span class="line-arrow-left line-arrow"></span><?php echo $parent_slug == "home" ? 'Home' : 'All Work'; ?></a></li>
				<?php if( !empty($next) ) : ?>
				<li class="next-button"><a href="<?php echo base_url(). $category_slug. '/' . $next; ?>" data-navigate-to="<?php echo $category_slug. '/' . $next; ?>" ><span class="line-arrow-right line-arrow"></span></a></li>
				<?php endif; ?>
				<?php if( !empty($previous) ) : ?>
				<li class="previous-button"><a href="<?php echo base_url(). $category_slug. '/' . $previous; ?>" data-navigate-to="<?php echo $category_slug. '/' . $previous; ?>" ><span class="line-arrow-left line-arrow"></span></a></li>
				<?php endif; ?>
			</ul>
		</div>
	</div>
</div> -->




	</div>
</div>