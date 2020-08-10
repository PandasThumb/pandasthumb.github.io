;(function ( $ ) {

$.fn.linkifyAnchors = function() {
 	return this.filter('[id]').each(function(){
 		var header = $(this);
 		if(header.attr('id') !== '') {
 			var $a = $('<a class="header-link" href="#' + header.attr('id') +'" title="Permalink">'
 				+ '<span class="sr-only">Permalink</span><i class="fa fa-link"></i></a>');
 			header.append($a);
 		}
 	});
}

$(function(){
 	$('.blog').find('h1,h2,h3,h4,h5,h6').linkifyAnchors();
});

}( jQuery ));
