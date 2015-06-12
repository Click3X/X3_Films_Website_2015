define([
  'pages/page_view',
  'text!template/people.php'
], function(PageView, Template){
	var PeopleView = PageView.extend({
		template: _.template( Template ),
		id:"people",
		onready:function(){
			var _t = this;
			_t.buildprojectgalleries();
			_t.$el.find('.people-item').click(_t.openOverlay);
			_t.$el.find('.overlay-close').click(_t.closeOverlay);
		},

		openOverlay:function() {

			var person_id = $(this).data('id');
			$('#people-overlay-' + person_id).addClass('open');
			$('html').addClass('noScroll');
		},

		closeOverlay:function() {
			console.log('close');
			$('.people-overlay').removeClass('open');
			$('html').removeClass('noScroll');
		},

		onclose:function(){
		},
	});
	return PeopleView;
});