define([
  'backbone',
  'modules/navigation/views/navigation_button_view'
], function(Backbone, NavigationButtonView){
	var NavigationView = Backbone.View.extend({
		initialize:function(options){
			var _t = this;

			_t.page_collection = options.page_collection;
			_t.ul_el = _t.$el.find("ul")[0];

			_t.collection = new Backbone.Collection();
			_t.buildButtons();
			// _t.showHideHeader();
			_t.toggleMenu();

			_t.page_collection.on("change:active",function(_model){
				var button_model = _t.collection.get(_model.id);
				if(button_model) button_model.set( "active", _model.get("active") );
			});

		},
		
		buildButtons:function(){
			var _t = this;

			$.each( $(this.ul_el).children("li"), function(i,_el){
				var a_el = $(_el).children("a")[0];

				if( a_el.hasAttribute( "data-navigate-to" ) ){
					var button = new NavigationButtonView({
						el:_el,
						id:a_el.getAttribute( "data-navigate-to" )
					});

					_t.collection.push( button.model );
				}
			});
		},

		toggleMenu: function() {
			var _t = this;
			_t.$el.find('#hamburger, #hamburger-open').click(function(){
				$(document.documentElement).toggleClass('menu-open');
			});
		},

		// showHideHeader:function(){
		// 	// Hide Header on on scroll down
		// 	var didScroll;
		// 	var lastScrollTop = 0;
		// 	var delta = 5;
		// 	var navbarHeight = $('#header-container').outerHeight();

		// 	$(window).scroll(function(event){
		// 	    didScroll = true;
		// 	});

		// 	setInterval(function() {
		// 	    if (didScroll) {
		// 	        hasScrolled();
		// 	        didScroll = false;
		// 	    }
		// 	}, 250);

		// 	function hasScrolled() {
		// 	    var st = $(this).scrollTop();
			    
		// 	    // Make sure they scroll more than delta
		// 	    if(Math.abs(lastScrollTop - st) <= delta)
		// 	        return;
			    
		// 	    // If they scrolled down and are past the navbar, add class .nav-up.
		// 	    // This is necessary so you never see what is "behind" the navbar.
		// 	    if (st > lastScrollTop && st > navbarHeight){
		// 	        // Scroll Down
		// 	        $('#header-container').removeClass('nav-down').addClass('nav-up');
		// 	    } else {
		// 	        // Scroll Up
		// 	        if(st + $(window).height() < $(document).height()) {
		// 	            $('#header-container').removeClass('nav-up').addClass('nav-down');
		// 	        }
		// 	    }
			    
		// 	    lastScrollTop = st;
		// 	}
		// }

		


	});
	return NavigationView;
});