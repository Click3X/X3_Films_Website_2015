define([
  'pages/page_view',
  'text!template/home.php',
  'modules/videoplayer/views/videoplayer_view'
], function(PageView, Template, VideoPlayerView){
	var HomeView = PageView.extend({
		videos:[],
		template: _.template( Template ),
		id:"home",
		onready:function(){
			var _t = this;

			_t.$el.find(".cfm-videoplayer").each(function(){
				var url = this.getAttribute("data-video-name"),
				poster = this.getAttribute("data-poster"),
				video = new VideoPlayerView({el:this});

				url += mp4 ? ".mp4" : ".webm";

				video.on("play",function(){
					console.log("video playing", this.id);
					_t.resetothervideos(this.id);
				});
				
				video.load( url, mp4 ? "mp4" : "webm", poster );

				_t.videos.push(video);

				_t.$el.find('.overlay-close').click(function(){
					$.each(_t.videos,function(i,v){
						v.reset();
					});
				});



			});

			this.buildprojectgalleries();

			var homeSwiper = new Swiper ('.home-swiper-container', {
		      direction: 'horizontal',
		      loop: true,
		      slidesPerView: 1,
		      autoplay: 8000,
		      pagination: '.swiper-pagination',
		      paginationClickable: true,
		    }); 

		    var featuredSwiper = new Swiper ('.featuredOverlay-swiper-container', {
		      direction: 'horizontal',
		      loop: false,
		      slidesPerView: 1,
		      nextButton: '.swiper-button-next',
			  prevButton: '.swiper-button-prev',
			  onSlideChangeStart: function(swiper) {
			  	console.log('slide changes');
				$.each(_t.videos,function(i,v){
					v.reset();
				});
			  }
		    }); 

			_t.$el.find('.overlay-close').click(_t.closeOverlay);
		    // _t.$el.find('.featured-item').click(_t.openOverlay);
			
			_t.$el.find('.featured-item').click(function(){
				var featured_id = $(this).data('id');
				$('.swiper-slide').removeClass('swiper-slide-active');
				$('#featuredOverlay-slide-' + featured_id).addClass('swiper-slide-active');
				featuredSwiper.slideTo( $('.swiper-slide-active').index(),500,false );
				$('#featured-overlay-container').addClass('open');
				$('html').addClass('noScroll');
				homeSwiper.stopAutoplay();
			});
		},
		resetothervideos:function(_id){
			$.each(this.videos,function(i,v){
				if(v.id != _id) v.reset();
			});
		},

		closeOverlay:function() {			
			$('.video-overlay').removeClass('open');
			$('html').removeClass('noScroll');
		},

		onclose:function(){
			$.each(this.videos,function(i,v){
				v.remove();
			});
		},
	});
	return HomeView;
});