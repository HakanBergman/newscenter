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
        return array( 'ezcreateforecast' => array(array('url' => array('type' => 'string', 'required' => false))));
    }

    function modify( $tpl, $operatorName, $operatorParameters, &$rootNamespace, &$currentNamespace, &$operatorValue, &$namedParameters )
    {
        
        switch ( $operatorName )
        {
            case 'ezcreateforecast':
            {   
            
              /* Named Parameters */
              echo $namedParameters['url'];
              die();
              /* Fetch Weather Information from JSON API */
              $json = file_get_contents("http://api.openweathermap.org/data/2.5/weather?lat=57.723152&lon=11.767669");
              $json_decode = json_decode($json);
              
              /* Temperature */
              $operatorValue['temperature']['current'] = $json_decode->main->temp;
              $operatorValue['temperature']['min'] = $json_decode->main->temp_min;
              $operatorValue['temperature']['max'] = $json_decode->main->temp_max;
              
              /* Humidity */
              $operatorValue['humidity'] = $json_decode->main->humidity;
              
              /* Weather */
              $operatorValue['weather']['main'] = $json_decode->weather->main;
              $operatorValue['weather']['description'] = $json_decode->weather->description;
              $operatorValue['weather']['icon'] = $json_decode->weather->icon;

            } break;
        }
    }
}

?>