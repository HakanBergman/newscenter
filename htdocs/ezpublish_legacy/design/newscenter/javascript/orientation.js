function changeMyClass() {
	/* Detect orientation and show error message when needed for landscape mode */
	/* This app should only work in portrait mode */
	switch(window.orientation){
	   case 0:
		/* Verify if we are using the app in native mode (home screen mode ) */
		if (window.navigator.standalone) {
			$('body').addClass('native-mode');
		} else {
			$('#homescreen').removeClass('hidden');
			setTimeout(function(){ $('#homescreen').fadeOut('slow'); }, 10000); 
		}
		$('.landscape').addClass('hidden');
		$('.website').removeClass('hidden');
       	break;
	  case -90:
	  case 90:
		/* Verify if we are using the app in native mode (home screen mode ) */
		if (window.navigator.standalone) {
			$('body').addClass('native-mode');
		} else {
			$('#homescreen').addClass('hidden');
		}
		$('.website').addClass('hidden');		
		$('.landscape').removeClass('hidden');
		$(document).ready(function(){					   
			$(window).resize(function(){
				$('.landscape').css({
					position:'absolute',
					left: ($(window).width() - $('.landscape').outerWidth())/2,
					top: ($(window).height() - $('.landscape').outerHeight())/2
				});
			});
			$(window).resize();
		});
       	break;
	} 
}
