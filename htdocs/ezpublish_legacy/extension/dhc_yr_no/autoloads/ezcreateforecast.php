<?php

class eZCreateForecast
{
    function eZCreateForecast()
    {
    }

    function operatorList()
    {
        return array( 'ezcreateforecast' );
    }

    function namedParameterPerOperator()
    {
        return true;
    }

    function namedParameterList()
    {
        return array( 'ezcreateforecast' => array());
    }

    function modify( $tpl, $operatorName, $operatorParameters, &$rootNamespace, &$currentNamespace, &$operatorValue, &$namedParameters )
    {
        
        switch ( $operatorName )
        {
            case 'ezcreateforecast':
            {   
            
              /* Fetch Weather Information from JSON API */
              $json = file_get_contents("http://api.openweathermap.org/data/2.5/weather?lat=57.723152&lon=11.767669");
              $json_decode = json_decode($json);
              
              /* Temperature */
              $temperature['current'] = $json_decode->main->temp;
              $temperature['min'] = $json_decode->main->temp_min;
              $temperature['max'] = $json_decode->main->temp_max;
              
              /* Humidity */
              $humidity = $json_decode->main->humidity;
              
              /* Weather */
              $weather['main'] = $json_decode->weather->main;
              $weather['description'] = $json_decode->weather->description;
              $weather['icon'] = $json_decode->weather->icon;

              $operatorValue = array($temperature, $humidity, $weather);

            } break;
        }
    }
}

?>