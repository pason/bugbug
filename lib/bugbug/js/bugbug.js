
$(document).ready(function() {

	$('#bugug-open').click(function() {
		$('.bugug-content').toggle();
	});

	$('.bugbug-bar').on('mousedown', function(e){
        var $dragable = $('.bugug-content'),
            startHeight = $dragable.height(),
            pY = e.pageY;
        
        $(document).on('mouseup', function(e){
            $(document).off('mouseup').off('mousemove');
        });
        $(document).on('mousemove', function(me){
            var mx = (me.pageY - pY);
            
            if($dragable.is(":visible")) { 
	            $dragable.css({
	                height: startHeight - mx
	            });
	         	}
        });      
    });
});