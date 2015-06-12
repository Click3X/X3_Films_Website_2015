<div id="people-page" class="page-content-inner">
	<div class="cfm-project-gallery">
		<ul>
			<?php foreach ($data as $key => $person): ?>
		
			<li data-id="<?php echo $person->id; ?>" data-image="http://media.click3x.com/images/cfm/people/<?php echo $person->profile_img; ?>.jpg" class="people-item">
				<div class="project-inner">
					<a class="cfm-project">
						<div class="project-label"><div class="project-label-inner"><h2 class="label-name"><?php echo $person->name; ?></h2><h2 class="label-title"><?php echo $person->title; ?></h2></div></div>
					</a>
				</div>
			</li>
		
			<?php endforeach; ?>
		</ul>
	</div>
</div>

<?php foreach ($data as $key => $person): ?>
	<div class="people-overlay overlay-scale" id="people-overlay-<?php echo $person->id; ?>">
		<div class="people-overlay-inner">
			<div class="overlay-close"></div>
			<div class="profile-image" style="background-image: url(http://media.click3x.com/images/cfm/people/inner/<?php echo $person->profile_img; ?>_lg.jpg)">
			</div>
			<h4 class="people-name"><?php echo $person->name; ?></h4>
			<h4 class="people-title"><?php echo $person->title; ?></h4>
			<div class="description">
				<?php echo $person->description; ?>
			</div>		
		</div>
	</div>
<?php endforeach; ?>