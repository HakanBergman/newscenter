<?php

class eZCreateEmail
{
    function eZCreateEmail()
    {
    }

    function operatorList()
    {
        return array( 'ezcreateemail' );
    }

    function namedParameterPerOperator()
    {
        return true;
    }

    function namedParameterList()
    {
        return array( 'ezcreateemail' => array());
    }

    function modify( $tpl, $operatorName, $operatorParameters, &$rootNamespace, &$currentNamespace, &$operatorValue, &$namedParameters )
    {
        
        switch ( $operatorName )
        {
            case 'ezcreateemail':
            {   
                echo "This will send an email";
                #$operatorValue = $_COOKIE["captcha"];                
            } break;
        }
    }
}

?>