$(document).ready(function(){
	for (i = 0; i < 16; i++){
	$(".grid").append('<div class="row">')
		for(j = 0; j < 16; j++){
			$(".grid").append('<div class="square"></div>');
			}
	$(".grid").append('</div>');
	}
	$(function(){
		$(".square").hover(function(){
			$(this).css('background','pink');
		},
	function(){
		$(this).mouseleave(600,1);
	});
	});
	
	$("#resetbtn").click(function(){
	
		$(".row").remove();
		$(".square").remove();
		var height = prompt("Please select the height of the grid");
		var width = prompt("Please select the width of the grid");
	
		for (i = 0; i < height; i++){
			$(".grid").append('<div class="row">')
			for(j=0;j<width;j++){
				$(".grid").append('<div class="square"></div>');
			}
		$(".grid").append('</div>');
		};
		$(function(){
			
			var squareW = (352 - (width * 2))  / width;
			var squareH = (352 - (width * 2)) / height;
			$(".square").css('width',squareW+"px" );
			$(".square").css('height',squareH+"px" );
			$(".square").hover(function(){
				$(this).css('background','pink');
			},
			function(){
				$(this).mouseleave(600,1);
			});
		});
	});
});