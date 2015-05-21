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
                #require_once __DIR__.DIRECTORY_SEPARATOR."..".DIRECTORY_SEPARATOR."autoload.php";
                #$yr = Yr\Yr::create("Norway/Oslo/Oslo/Oslo", "/tmp");
                #$forecast = $yr->getCurrentForecast();
                #printf("Time: %s to %s\n", $forecast->getFrom()->format("H:i"), $forecast->getTo()->format("H:i"));
                #printf("Temp: %s %s \n", $forecast->getTemperature(), $forecast->getTemperature('unit'));
                #printf("Wind: %smps %s\n", $forecast->getWindSpeed(), $forecast->getWindDirection('name'));            
                #echo "This will send an email";
                echo dirname(__FILE__);
                #$operatorValue = $_COOKIE["captcha"];                
            } break;
        }
    }
}

?>