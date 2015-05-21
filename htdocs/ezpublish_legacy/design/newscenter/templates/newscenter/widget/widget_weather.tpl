<div class="row widget-weather">
	<article>
		<h1>{$block.name|wash()}
		{def $weather = ezcreateforecast($block.data_map.weather_link.data_text)}
		<div class="col-lg-6">
			<h2>{$weather.temperature_current}</h2>
		</div>
		<div class="col-lg-6">
			<img src="http://openweathermap.org/img/w/{$weather.icon}.png" class="img-responsive" />
		</div>
	</article>
</div>

