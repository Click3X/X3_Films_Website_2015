define([
  'pages/page_view',
  'text!template/about.php',
  'modules/videoplayer/views/videoplayer_view'
], function(PageView, Template, VideoPlayerView){
	var AboutView = PageView.extend({
		template: _.template( Template ),
		id:"about",
		onready:function(){
			this.buildprojectgalleries();
			//initialize swiper when document ready  
		    var mySwiper = new Swiper ('.swiper-container', {
		      // Optional parameters
		      direction: 'horizontal',
		      loop: true,
		      // Navigation arrows
			    nextButton: '.swiper-button-next',
			    prevButton: '.swiper-button-prev',
		    })  
		},
		onclose:function(){
		},
	});
	return AboutView;
});