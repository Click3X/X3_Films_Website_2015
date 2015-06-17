define([
  'pages/page_view',
  'text!template/director.php'
], function(PageView, Template){
	var DirectorView = PageView.extend({
		template: _.template( Template ),
		id:"director",
		onready:function(){
			// this.buildprojectgalleries();
						if(firstpage){
				console.log('this is first page');
			} else {
				console.log('this is not first page');
			}
		},
		onclose:function(){
		},
	});
	return DirectorView;
});