define([
  'pages/page_view',
  'text!template/directors.php'
], function(PageView, Template){
	var DirectorsView = PageView.extend({
		template: _.template( Template ),
		id:"directors",
		onready:function(){
			this.buildprojectgalleries();
		},
		onclose:function(){
		},
	});
	return DirectorsView;
});