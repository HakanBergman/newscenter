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
              $temperature['low'] = $json_decode->main->temp_min;
              print_r($temperature);
            } break;
        }
    }
}

?>