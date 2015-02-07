<ul class="pgwSlider">
	<li><img src="http://static.pgwjs.com/img/pg/slider/paris.jpg" alt="Paris, France" data-description="Eiffel Tower and Champ de Mars"></li>
	<li><img src="http://static.pgwjs.com/img/pg/slider/montreal_mini.jpg" alt="Montréal, QC, Canada" data-large-src="http://static.pgwjs.com/img/pg/slider/montreal.jpg"></li>
	<li>
		<img src="http://static.pgwjs.com/img/pg/slider/shanghai.jpg">
		<span>Shanghai, China</span>
	</li>
	<li>
		<a href="http://www.nyc.gov" target="_blank">
			<img src="http://static.pgwjs.com/img/pg/slider/new-york.jpg">
		<span>New York, NY, USA</span>
		</a>
	</li>
</ul>
{literal}
	<script type="text/javascript">
		$(document).ready(function() {
			$('.pgwSlider').pgwSlider( 'adaptiveHeight': true, 'maxHeight': 300 );
		});
	</script>
{/literal}