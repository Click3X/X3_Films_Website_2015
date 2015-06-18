define([
  'pages/page_view',
  'text!template/director.php'
], function(PageView, Template){
	var DirectorView = PageView.extend({
		template: _.template( Template ),
		id:"director",
		videos:[],
		banners:[],
		onready:function(){
			this.details_container_el = this.$el.find("#director-details-container").eq(0);

			if(firstpage){
				this.initdetails();
				// console.log('first page');
			} else {
				this.loaddirectordetails();
				// console.log('not first page');
			}

		},
		loaddirectordetails:function(){
			var _t = this;

			ga( 'send', 'pageview', _t.model.get("detailslug") );

			$.ajax(
		    {
		        url: base_url + "template/" + _t.id + "/" + _t.model.get("detailslug"),
		        dataType: "html",
		        success: function(data) {
		           _t.details_container_el.html(data);
		           _t.initdetails();
		        },
		        error: function(e) 
		        {
		            console.log('Error: ' + e);
		        }
		    });
		},
		resetothervideos:function(_id){
			$.each(this.videos,function(i,v){
				if(v.id != _id) v.reset();
			});
		},
		initdetails:function(){
			var _t = this;

			//build videos
			_t.details_container_el.find(".cfm-videoplayer").each(function(){
				var video_url 		= this.getAttribute( "data-video" );
				video_url += mp4 ? ".mp4" : ".webm";
				
				var poster_url 		= this.getAttribute( "data-poster" );
				var videoplayer 	= new VideoPlayerView( { el:this } );

				videoplayer.on("play",function(){
					console.log("video playing", this.id);
					_t.resetothervideos(this.id);
				});

				videoplayer.load( video_url, mp4 ? "mp4" : "webm", poster_url );
				
				_t.videos.push(videoplayer);
			});

			//add navigation events
			this.details_container_el.find("a[data-navigate-to]").click( function(e){
				e.preventDefault();
				router.navigate( this.getAttribute("data-navigate-to"),true );
			});

			//build banner asset images
			// this.$el.find(".project-module-image").each(function(){
			// 	_t.banners.push( new BgImageView({ el:this }) );
			// });

			// this.$el.find('a[href*=#]').click(function(e){     
   //          	e.preventDefault();
   //          	// for firefox
   //          	var target = $(this).attr('href');
			// 	$(target).goTo();
	  //           // $('body').animate( {scrollTop: ($(this.hash).offset().top-33) + "px"} , 500);
	  //       });

	        this.buildprojectgalleries();
	        _t.viewMore();

	  //       (function($) {
			//     $.fn.goTo = function() {
			//         $('html, body').animate({
			//             scrollTop: ( $(this).offset().top ) + 'px'
			//         }, 'slow');
			//         return this; // for chaining...
			//     }
			// })(jQuery);

			// if( _t.model.get("moduleslug") )
	  //       	$("#"+_t.model.get("moduleslug")).goTo();
		},

		// VIEW MORE BIO
		viewMore:function() {
			var _t = this;
			_t.details_container_el.find('.view-more').click(function(){
				$('.hidden-bio').slideToggle();
				$(this).text(function(i, text){
          		return text === "MORE" ? "LESS" : "MORE";
      			});
			});
		},

		onclose:function(){
			$.each(this.banners,function(){
				this.remove();
			});
		},
	});
	return DirectorView;
});