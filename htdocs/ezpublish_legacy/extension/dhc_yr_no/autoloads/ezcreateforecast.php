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
              $json = file_get_contents("http://api.openweathermap.org/data/2.5/weather?lat=57.723152&lon=11.767669");
              $json_decode = json_decode($json);
              print_r($json_decode->weather);
              var_dump(json_decode($json));
              var_dump(json_
            } break;
        }
    }
}

?>