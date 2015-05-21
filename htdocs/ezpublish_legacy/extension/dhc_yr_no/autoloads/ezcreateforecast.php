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
                $extension_folder = str_replace('autoloads', '', dirname(__FILE__));
                require_once $extension_folder.'api/autoload.php';
                require_once $extension_folder.'api/yr.php';
                #$yr = Yr\Yr::create("Norway/Oslo/Oslo/Oslo", "/tmp");
                #$forecast = $yr->getCurrentForecast();
                #printf("Time: %s to %s\n", $forecast->getFrom()->format("H:i"), $forecast->getTo()->format("H:i"));
                #printf("Temp: %s %s \n", $forecast->getTemperature(), $forecast->getTemperature('unit'));
                #printf("Wind: %smps %s\n", $forecast->getWindSpeed(), $forecast->getWindDirection('name'));              
                #printf("Pressure: %smps %s\n", $forecast->getPressure(), $forecast->getPressure('value'));  
                #$operatorValue = $_COOKIE["captcha"];                
            } break;
        }
    }
}

?>