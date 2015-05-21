<div class="row widget-weather">
	<article>
		{def $weather = ezcreateforecast($block.data_map.weather_link.data_text)}
		<img src="http://openweathermap.org/img/w/{$weather.icon}.png" class="img-responsive" />
	</article>
</div>

