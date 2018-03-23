$(document).ready(function() {
	$(function() {
		$("#instantsearch").autocomplete({

			maxHeight : 100,
			source : function(request, response) {
				$.ajax({
					
					url : "SearchController",
					type : "POST",
					data : {
						term : request.term
					},
					dataType : "json",
					success : function(data) {
						//alert(data.length);
						response(data);
					}
				
				});
			}
		});
	});
});
