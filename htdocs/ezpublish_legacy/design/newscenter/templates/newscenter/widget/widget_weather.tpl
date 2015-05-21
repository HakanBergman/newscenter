<div class="row widget-weather">
	<article>
		<h5>{$block.name|wash()}</h5>
		{def $weather = ezcreateforecast($block.data_map.weather_link.data_text)}
		{def $kelvin = "273"}
			<div class="col-lg-4"><h5>{$weather.temperature_current|sub($kelvin)|round()} &deg;C</h5></div>
			<div class="col-lg-8 text-left">
				<img src="http://openweathermap.org/img/w/{$weather.icon}.png" alt="{$weather.description}" class="img-responsive" />
			</div>
		{undef $weather $kelvin}
	</article>
</div>

