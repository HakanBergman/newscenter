<?php
//
// ## BEGIN COPYRIGHT, LICENSE AND WARRANTY NOTICE ##
// SOFTWARE NAME: eZ Website Toolbar
// SOFTWARE RELEASE: 5.3.0
// COPYRIGHT NOTICE: Copyright (C) 1999-2014 eZ Systems AS
// SOFTWARE LICENSE: GNU General Public License v2.0
// NOTICE: >
//  This program is free software; you can redistribute it and/or
//  modify it under the terms of version 2.0  of the GNU General
//  Public License as published by the Free Software Foundation.
//
//  This program is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of version 2.0 of the GNU General
//  Public License along with this program; if not, write to the Free
//  Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
//  MA 02110-1301, USA.
// ## END COPYRIGHT, LICENSE AND WARRANTY NOTICE ##
//

class eZCreateCaptcha
{
    function eZCreateCaptcha()
    {
    }

    function operatorList()
    {
        return array( 'ezcreatecaptcha' );
    }

    function namedParameterPerOperator()
    {
        return true;
    }

    function namedParameterList()
    {
        return array( 'ezcreatecaptcha' => array());
    }

    function modify( $tpl, $operatorName, $operatorParameters, &$rootNamespace, &$currentNamespace, &$operatorValue, &$namedParameters )
    {
        
        switch ( $operatorName )
        {
            case 'ezcreatecaptcha':
            {   
                /* Create the Captcha */
                $md5_hash = md5(rand(0,999)); 
                $security_code = substr($md5_hash, 15, 8);                   
                if (empty($_COOKIE["captcha"])) {  
                    setcookie("captcha",  $security_code, time()+3600);
                    $create_image = shell_exec('echo '.$security_code.'|convert -size 165x70 -channel RGBA -density 196 -resample 72 -bordercolor none -background none -pointsize 20 text:- -fill black '.$_SERVER["DOCUMENT_ROOT"].'/design/newscenter/images/testdir/'.$security_code.'.png 2>&1');
                    $operatorValue = $_COOKIE["captcha"];
                } else {
                    $operatorValue = $_COOKIE["captcha"];                
                }
                var_dump($_COOKIE);
                
            } break;
        }
    }
}

?>