<div class="row widget-weather">
	<article>
		{$block.data_map|attribute(show, 2)}
		{def $weather = ezcreateforecast({$block.data_map.weather_link.data_text})}
		{$weather|attribute(show, 1)}
		<img src="http://openweathermap.org/img/w/{$weather.icon}.png" class="img-responsive" />
	</article>
</div>

