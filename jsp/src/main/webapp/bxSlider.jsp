<html>
<head>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<style>
	.slider-pager img {
 		 width: 400px;
 		 height: 400px;
 	}
</style>
<script>
	/*   $(document).ready(function(){
	    $('.slide_gallery').bxSlider();
	  }); */

	/*     $(function() {
	 $('.slide_gallery').bxSlider({
	 auto: true,
	 autoControls: false,
	 pagerCustom: '.slider-pager'
	 });
	 });
	 */

	$(function() {
		$('.slide_gallery').bxSlider({
			auto : true,
			autoControls : false,
			pagerCustom : '.slider-pager'
		})
	})
</script>

</head>
<body>

	<div id="gallery_wrap" align="center">
		<ul class="slide_gallery">
			<li><img src="./images/Chrysanthemum.jpg" alt="사진1"></li>
			<li><img src="./images/Hydrangeas.jpg" alt="사진2"></li>
			<li><img src="./images/Jellyfish.jpg" alt="사진3"></li>
			<li><img src="./images/Penguins.jpg" alt="사진4"></li>
			<li><img src="./images/Tulips.jpg" alt="사진5"></li>
		</ul>
		<div class="slider-pager">
			<a href="#" data-slide-index="0"> <img 
				src="./images/Chrysanthemum.jpg" alt="사진1">
			</a> <a href="#" data-slide-index="1"> <img
				src="./images/Hydrangeas.jpg" alt="사진2">
			</a> <a href="#" data-slide-index="2"> <img
				src="./images/Jellyfish.jpg" alt="사진3">
			</a> <a href="#" data-slide-index="3"> <img
				src="./images/Penguins.jpg" alt="사진4">
			</a> <a href="#" data-slide-index="4"> <img src="./images/Tulips.jpg"
				alt="사진5">
			</a>
		</div>
	</div>
</body>
</html>