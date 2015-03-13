<?php
/**
 * File containing the ezjscoreDemoServerCallFunctions class.
 *
 * @package ezjscore_demo
 * @version //autogentag//
 * @copyright Copyright (C) 2005-2009 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/new_bsd New BSD License
 */
 
class ezjscoreDemoServerCallFunctions extends ezjscServerFunctions
{
    public static function search( $args )
    {
        if ( isset( $args[0] ) )
        {
            return 'Hello World, you sent me 
                    parameter : ' . $args[0];
        }
        else
        {
            $http = eZHTTPTool::instance();
            if ( $http->hasPostVariable( 'arg1' ) )
            {
                return 'Hello World, you sent 
                        me post : ' . $http->postVariable( 'arg1' );
            }
        }
 
        return "Request to server completed, 
                but you did not send any 
                post / function parameters!";
    }
}
?>